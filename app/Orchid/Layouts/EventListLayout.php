<?php

declare(strict_types=1);

namespace App\Orchid\Layouts;

use App\Models\Event;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\DateTime;
use Orchid\Screen\Fields\DateRange;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class EventListLayout extends Table
{
    /**
     * @var string
     */
    public $target = 'events';

    /**
     * @return TD[]
     */
    public function columns(): array
    {
        return [
            TD::make('title', __('Judul'))
                ->sort()
                ->cantHide()
                ->filter(Input::make())
                ->render(function (Event $event) {
                    return Link::make($event->title)
                        ->route('platform.agenda.edit', $event->id);
                }),

            TD::make('description', __('Deskripsi Acara'))
                ->sort()
                ->cantHide()
                ->filter(Input::make()),

            TD::make('start_date', __('Tgl. Mulai'))
                ->sort()
                ->cantHide(),

            TD::make('end_date', __('Tgl. Selesai'))
                ->sort()
                ->cantHide(),
        ];
    }
}
