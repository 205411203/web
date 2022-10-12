<?php

declare(strict_types=1);

namespace App\Orchid\Layouts;

use App\Models\Menu;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class MenuListLayout extends Table
{
    /**
     * @var string
     */
    public $target = 'menus';

    /**
     * @return TD[]
     */
    public function columns(): array
    {
        return [
            TD::make('menu_title', __('Nama Menu'))
                ->sort()
                ->cantHide()
                ->filter(Input::make())
                ->render(function (Menu $menu) {
                    return Link::make($menu->menu_title)
                        ->route('platform.menus.edit', $menu->id);
                }),

            TD::make('parent_id', __('Parent ID'))
                ->sort()
                ->cantHide()
                ->filter(Input::make()),

            TD::make('sort_order', __('Urutan'))
                ->sort()
                ->cantHide()
                ->filter(Input::make()),

            TD::make('slug', __('Slug'))
                ->sort()
                ->cantHide()
                ->filter(Input::make()),

        ];
    }
}
