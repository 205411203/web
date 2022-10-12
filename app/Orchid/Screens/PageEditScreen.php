<?php

namespace App\Orchid\Screens;

use App\Models\Page;
use App\Models\User;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Quill;
use Orchid\Screen\Fields\SimpleMDE;
use Orchid\Screen\Fields\Relation;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Upload;
use Orchid\Screen\Fields\Cropper;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Alert;
use Illuminate\Support\Str;


class PageEditScreen extends Screen
{
    /**
     * @var Page
     */
    public $page;

    /**
     * Query data.
     *
     * @param Page $page
     *
     * @return array
     */
    public function query(Page $page): array
    {
        $page->load('attachment');

        return [
            'page' => $page
        ];
    }

    /**
     * The name is displayed on the user's screen and in the headers
     */
    public function name(): ?string
    {
        return $this->page->exists ? 'Edit page' : 'Halaman';
    }
    
    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Halaman";
    }

    /**
     * Button commands.
     *
     * @return Link[]
     */
    public function commandBar(): array
    {
        return [
            Link::make('Batal')
                ->icon('action-undo')
                ->route('platform.pages'),
            
                Button::make('Simpan')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->page->exists),

            Button::make('Update')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->page->exists),

            Button::make('Hapus')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->page->exists),
        ];
    }

    /**
     * Views.
     *
     * @return Layout[]
     */
    public function layout(): array
    {
        return [
            Layout::rows([
                Input::make('page.title')
                    ->title('Judul Halaman')
                    ->placeholder('Singkat dan menarik perhatian'),
    
                Cropper::make('page.hero')
                    ->title('Featured Image')
                    ->targetRelativeUrl()
                    ->width(800)
                    ->height(400),
    
                TextArea::make('page.description')
                    ->title('Deskripsi Singkat')
                    ->rows(3)
                    ->maxlength(200)
                    ->placeholder('Deskripsi Singkat'),
    
                Relation::make('page.author')
                    ->title('Penulis/Pengarang')
                    ->fromModel(User::class, 'name'),

                SimpleMDE::make('page.body')
                   ->title('Isi Halaman (HTML Kode)'),
    
          //      Quill::make('page.body')
         //          ->title('Isi Halaman'),

                DateTimer::make('page.published_at')
                   ->title('Tgl. Publish')
                   ->allowInput()
                   ->required(),
                
                Select::make('page.status')
                   ->options([
                       '1'   => 'Aktif',
                       '0' => 'Tidak Aktif',
                   ])
                   ->title('Status')
                   ->help('Status Page'),  
    
            ])
        ];
    }

    /**
     * @param Page    $page
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Page $page, Request $request)
{
    $page->fill($request->get('page'))->save();
    
    $page->attachment()->syncWithoutDetaching(
        $request->input('page.attachment', [])
    );

    Alert::info('Data berhasil disimpan');
    return redirect()->route('platform.pages');
}


    /**
     * @param Page $page
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove(Page $page)
    {
        $page->delete();

        Alert::info('Data Berhasil dihapus');

        return redirect()->route('platform.pages');
    }
}
