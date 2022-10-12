<?php

namespace App\Orchid\Screens;

use App\Models\Post;
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
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Alert;
use Illuminate\Support\Str;


class PostEditScreen extends Screen
{
    /**
     * @var Post
     */
    public $post;

    /**
     * Query data.
     *
     * @param Post $post
     *
     * @return array
     */
    public function query(Post $post): array
    {
        $post->load('attachment');

        return [
            'post' => $post
        ];
    }

    /**
     * The name is displayed on the user's screen and in the headers
     */
    public function name(): ?string
    {
        return $this->post->exists ? 'Edit post' : 'Berita';
    }
    
    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Berita / Artikel";
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
                ->route('platform.posts'),
            
                Button::make('Simpan')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->post->exists),

            Button::make('Update')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->post->exists),

            Button::make('Hapus')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->post->exists),
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
                Input::make('post.title')
                    ->title('Judul Post')
                    ->required()
                    ->placeholder('Singkat dan menarik perhatian'),
    
                Cropper::make('post.hero')
                    ->title('Featured Image')
                    ->targetRelativeUrl()
                    ->width(800)
                    ->height(400),
    
                TextArea::make('post.description')
                    ->title('Deskripsi Singkat')
                    ->rows(3)
                    ->required()
                    ->maxlength(200)
                    ->placeholder('Deskripsi Singkat'),
    
                Relation::make('post.author')
                    ->title('Penulis/Pengarang')
                     ->required()
                    ->fromModel(User::class, 'name'),
    
                Quill::make('post.body')
                   ->title('Konten Post')
                    ->required(),

                DateTimer::make('post.published_at')
                   ->title('Tgl. Publish')
                   ->allowInput()
                   ->required(),
                
                Select::make('post.aktif')
                   ->options([
                       '1'   => 'Aktif',
                       '0' => 'Tidak Aktif',
                   ])
                   ->title('Status')
                    ->required()
                   ->help('Status Post'),

                Select::make('post.kategori')
                 ->required()
                   ->options([
                       '0'   => 'Berita',
                       '1' => 'Artikel',
                       '2' =>'Slides',
                   ])
                   ->title('Kategori'),    
    
            ])
        ];
    }

    /**
     * @param Post    $post
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Post $post, Request $request)
{
    $post->fill($request->get('post'))->save();
    
    $post->attachment()->syncWithoutDetaching(
        $request->input('post.attachment', [])
    );

    Alert::info('Data berhasil disimpan');
    return redirect()->route('platform.posts');
}


    /**
     * @param Post $post
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove(Post $post)
    {
        $post->delete();

        Alert::info('Data Berhasil dihapus');

        return redirect()->route('platform.posts');
    }
}
