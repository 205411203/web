<?php

declare(strict_types=1);

namespace App\Orchid\Layouts;

use App\Models\Ticker;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;
use Illuminate\Support\Str;

class TickerListLayout extends Table
{
    /**
     * @var string
     */
    public $target = 'tickers';

    /**
     * @return TD[]
     */
    public function columns(): array
    {
        return [
            TD::make('news_title', __('Judul Breaking News'))
                ->sort()
                ->width(350)
                ->cantHide()
                ->filter(Input::make())
                ->render(function (Ticker $ticker) {
                    return Link::make(Str::limit($ticker->news_title, 200))
                        ->route('platform.tickers.edit', $ticker->id);
                }),

            TD::make('content', __('Isi Breaking News'))
                ->sort()
                ->width('550')
                ->render(function (Ticker $ticker) {
                        return Str::words($ticker->content, 20);
                    })
                ->cantHide()
                ->filter(Input::make()),

            TD::make('url', __('Url'))
                ->sort()
                ->cantHide()
                ->filter(Input::make()),

        ];
    }
}
