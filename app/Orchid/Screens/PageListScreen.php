<?php

declare(strict_types=1);

namespace App\Orchid\Screens;

use App\Orchid\Layouts\PageListLayout;
use App\Models\Page;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Screen;
use Illuminate\Http\Request;
use Orchid\Support\Facades\Toast;

class PageListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): array
    {
        return [
            'pages' => Page::filters()
                    ->select('pages.id as id','pages.title','pages.slug','pages.hero','pages.status','pages.published_at')
                    ->leftJoin('attachments', 'attachments.id', '=', 'pages.hero')
                    ->defaultSort('pages.published_at', 'desc')
                    ->paginate(10),
            'stats' => array('Aktif','Tidak Aktif'),

        ];
    }

    /**
     * The name is displayed on the user's screen and in the headers
     */
    public function name(): ?string
    {
        return 'Halaman';
    }
    
    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Kelola Halaman";
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
                ->route('platform.page.create')
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
            PageListLayout::class
        ];
    }

    public function remove(Request $request): void
    {
        Page::findOrFail($request->get('id'))->delete();

        Toast::info(__('Post was removed'));
    }
}