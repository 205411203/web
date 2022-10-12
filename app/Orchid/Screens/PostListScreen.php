<?php

declare(strict_types=1);

namespace App\Orchid\Screens;

use App\Orchid\Layouts\PostListLayout;
use App\Models\Post;
use Orchid\Screen\Actions\Link;
use Illuminate\Http\Request;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Toast;

class PostListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): array
    {
        return [
            'posts' => Post::filters()
                    ->select('posts.id as id','posts.title','posts.slug','posts.hero','posts.aktif','posts.published_at','posts.kategori')
                    ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
                    ->defaultSort('posts.published_at', 'desc')
                    ->paginate(5),
            'stats' => array('Aktif','Tidak Aktif'),

        ];
    }

    /**
     * The name is displayed on the user's screen and in the headers
     */
    public function name(): ?string
    {
        return 'Berita dan Artikel';
    }
    
    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Kelola Data Berita dan Artikel";
    }

    public function permission(): ?iterable
    {
        return [
            'platform.systems.roles',
        ];
    }

    /**
     * Button commands.
     *
     * @return Link[]
     */
    public function commandBar(): array
    {
        return [
            Link::make('Buat baru')
                ->icon('pencil')
                ->route('platform.post.create')
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
            PostListLayout::class
        ];
    }

    public function remove(Request $request): void
    {
        Post::findOrFail($request->get('id'))->delete();
        Toast::info(__('Post was removed'));
    }
}