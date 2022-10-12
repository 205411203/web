<?php

declare(strict_types=1);

namespace App\Orchid\Layouts;

use App\Models\Client;
use Orchid\Screen\TD;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\Fields\CheckBox;

class ClientListLayout extends Table
{
    /**
     * Data source.
     *
     * @var string
     * 
     */
    public $target = 'clients';

    /**
     * @return TD[]
     */
    public function columns(): array
    {

        return [

            TD::make('id', 'ID')
            ->render(function (Client $client) {
                // Please use view('path')
                return "<img src='{$client->hero}'
                      alt='{$client->name}'
                      class='mw-100 d-block img-fluid'>";
            })
            ->width('200px'),
               
            
            TD::make('title', 'Nama Link Banner')
            ->render(function (Client $client) {
                return Link::make($client->title)
                    ->route('platform.client.edit', $client->id);
            }),

            TD::make('link', 'Link URL')
            ->render(function (Client $client) {
                return "<a href='http://{$client->link}' target='_blank'>$client->link</a>";
            })
                ->width('350px'),
        ];
    }
}