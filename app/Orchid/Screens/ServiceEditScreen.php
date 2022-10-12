<?php

namespace App\Orchid\Screens;

use App\Models\Service;
use App\Models\User;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Quill;
use Orchid\Screen\Fields\Relation;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Upload;
use Orchid\Screen\Fields\Cropper;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Alert;


class ServiceEditScreen extends Screen
{
    /**
     * @var Post
     */
    public $service;

    /**
     * Query data.
     *
     * @param Post $post
     *
     * @return array
     */
    public function query(Service $service): array
    {
        $service->load('attachment');

        return [
            'service' => $service
        ];
    }

    /**
     * The name is displayed on the user's screen and in the headers
     */
    public function name(): ?string
    {
        return $this->service->exists ? 'Edit' : 'Layanan';
    }
    
    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Layanan";
    }

    /**
     * Button commands.
     *
     * @return Link[]
     */
    public function commandBar(): array
    {
        return [
            Button::make('Simpan')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->service->exists),

            Button::make('Update')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->service->exists),

            Button::make('Hapus')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->service->exists),
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
                Input::make('service.title')
                    ->title('Judul Layanan')
                    ->required()
                    ->placeholder('Maksimal 2 Kata'),
    
                Cropper::make('service.hero')
                    ->title('Featured Image')
                    ->targetRelativeUrl()
                    ->width(600)
                    ->height(400),
    
                TextArea::make('service.description')
                    ->title('Deskripsi Singkat')
                    ->rows(3)
                    ->maxlength(200)
                    ->placeholder('Deskripsi Singkat'),
    
                Relation::make('service.author')
                    ->title('Penulis/Pengarang')
                    ->fromModel(User::class, 'name'),
    
                Quill::make('service.body')
                   ->title('Uraian Layanan'),

                DateTimer::make('service.published_at')
                   ->title('Tgl. Publish')
                   ->allowInput()
                   ->required(),
                
                Select::make('service.status')
                   ->options([
                       '1'   => 'Aktif',
                       '0' => 'Tidak Aktif',
                   ])
                   ->title('Status')
                   ->help('Status Layanan'),

                Input::make('service.icon')
                   ->title('Icon Layanan')
                   ->required()
                   ->placeholder('Fontawesome Icon'),   
    
            ])
        ];
    }

    /**
     * @param Post    $post
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Service $service, Request $request)
{
    $service->fill($request->get('service'))->save();
    
    $service->attachment()->syncWithoutDetaching(
        $request->input('service.attachment', [])
    );

    Alert::info('Data berhasil disimpan');
    return redirect()->route('platform.services');
}


    /**
     * @param Post $post
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove(Service $service)
    {
        $service->delete();

        Alert::info('Data Berhasil dihapus');

        return redirect()->route('platform.services');
    }
}
