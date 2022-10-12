<?php

declare(strict_types=1);

namespace App\Orchid\Layouts;

use App\Models\Page;
use Orchid\Screen\TD;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\Fields\CheckBox;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Actions\DropDown;
use Orchid\Screen\Actions\ModalToggle;

class PageListLayout extends Table
{
    /**
     * Data source.
     *
     * @var string
     * 
     */
    public $target = 'pages';
      
     

    /**
     * @return TD[]
     */
    public function columns(): array
    {
        
        return [
            
            TD::make('title', 'Judul Halaman')
                ->sort()
                ->cantHide()
                ->filter(Input::make())
                ->render(function (Page $page) {
                    return Link::make($page->title)
                        ->route('platform.page.edit', $page);
                }),
            TD::make('hero','Image')
                ->render(function (Page $page) {
                    // Please use view('path')
                    return "<img src='{$page->hero}'
                        alt='{$page->name}'
                        class='mw-100 d-block img-fluid'>";
                })
                ->width('200px'),
            TD::make('published_at', 'Tgl. Publish')
                ->filter(Input::make())
                ->sort(),
            TD::make('aktif','Status')
                ->sort()
                ->render(function (Page $page) {
                    $checked=array("Tidak Aktif","Aktif");
                    $value=$checked[$page->status];
                    return  "<label>$value</label>";
                }),
         
            TD::make('Preview')
                ->render(function (Page $page) {
                    return Link::make('Preview')
                        ->href(url('/laman/'.$page->slug))
                        ->class('btn btn-sm btn-info')
                        ->target('_blank');
                }),

                TD::make(__('Actions'))
                ->align(TD::ALIGN_CENTER)
                ->width('100px')
                ->render(function (Page $page) {
                    return DropDown::make()
                        ->icon('options-vertical')
                        ->list([
                            Link::make(__('Edit'))
                                ->route('platform.page.edit', $page->id)
                                ->icon('pencil'),
                            Button::make(__('Hapus'))
                                ->icon('trash')
                                ->confirm(__('Data yang dihapus tidak dapat dikembalikan. Yakin akan menghapus data ini?'))
                                ->method('remove', [
                                    'id' => $page->id,
                                ]),

                        ]);
                }),
        ];
    }
}