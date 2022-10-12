<?php

declare(strict_types=1);

namespace App\Orchid\Screens;

use App\Orchid\Layouts\ClientListLayout;
use App\Models\Client;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Toast;

class ClientListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): array
    {
        return [
            'clients' => Client::filters()
                        ->select('clients.id as id','clients.title','clients.hero','clients.link')
                        ->leftJoin('attachments', 'attachments.id', '=', 'clients.hero')
                        ->defaultSort('clients.id', 'desc')
                        ->paginate(10),
            
        ];
    }

    /**
     * The name is displayed on the user's screen and in the headers
     */
    public function name(): ?string
    {
        return 'Banner Link';
    }
    
    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Kelola Banner Link";
    }

    /**
     * Button commands.
     *
     * @return Link[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make(__('Buat Banner Link'))
                ->icon('plus')
                ->href(route('platform.client.create')),
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
            ClientListLayout::class
        ];
    }
}