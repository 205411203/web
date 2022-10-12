<?php

declare(strict_types=1);

namespace App\Orchid\Layouts;

use App\Models\Service;
use Orchid\Screen\TD;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\Fields\CheckBox;
use Orchid\Screen\Fields\Select;

class ServiceListLayout extends Table
{
    /**
     * Data source.
     *
     * @var string
     * 
     */
    public $target = 'services';
      
     

    /**
     * @return TD[]
     */
    public function columns(): array
    {
        
        return [
            TD::make('title', 'Judul Layanan')
                ->filter(Input::make())
                ->sort()
                ->render(function (Service $service) {
                    return Link::make($service->title)
                        ->route('platform.service.edit', $service);
                }),
            TD::make('hero','Image')
                ->render(function (Service $service) {
                    // Please use view('path')
                    $path = $service->hero;
                    return "<img src=$path
                        alt='{$service->name}'
                        class='mw-100 d-block img-fluid'>";
                })
                ->width('150px'),
            TD::make('icon', 'Icon')
                ->sort(),
            TD::make('status','Status')
                ->sort()
                ->render(function (Service $service) {
                    $checked=array("Tidak Aktif","Aktif");
                    $value=$checked[$service->status];
                    return  "<label>$value</label>";
                }),
            TD::make('', ' Preview')
                ->render(function (Service $service) {
                    return Link::make('Preview')
                        ->href(url('/service/'.$service->id))
                        ->class('btn btn-sm btn-info')
                        ->target('_blank');
                }),
        ];
    }
}