<?php

declare(strict_types=1);

namespace App\Orchid\Layouts;

use App\Models\Post;
use Orchid\Screen\TD;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\Fields\CheckBox;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\DateRange;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Actions\DropDown;
use Orchid\Screen\Actions\ModalToggle;
use Illuminate\Support\Str;

class PostListLayout extends Table
{
    /**
     * Data source.
     *
     * @var string
     * 
     */
    public $target = 'posts';
      
     

    /**
     * @return TD[]
     */
    public function columns(): array
    {
        
        return [
            
            TD::make('title', 'Judul Berita')
                ->sort()
                ->width('450')
                ->cantHide()
                ->filter(Input::make())
                 ->render(function (Post $post) {
                    return Link::make(Str::limit($post->title, 200))
                        ->route('platform.post.edit', $post);
                }),
                
                 /** 
                ->render(function (Post $post) {
                    return Link::make($post->title)
                        ->route('platform.post.edit', $post);
                }),
              */   
                
         /**       
             TD::make('name', 'Name')
                    ->width('450')
                    ->render(function (Repository $model) {
                        return Str::limit($model->get('name'), 200);
                    }),
                      */
            TD::make('hero','Image')
                    ->render(function (Post $post) {
                        // Please use view('path')
                        return "<img src='{$post->hero}'
                            alt='{$post->name}'
                            class='mw-100 d-block img-fluid'>";
                    })
                    ->width('200px'),
            TD::make('published_at', 'Tgl. Publish')
                    ->filter(DateRange::make())
                    ->sort(),
            TD::make('aktif','Status')
                ->sort()
                ->filter(Input::make())
                ->render(function (Post $post) {
                    $checked=array("Tidak Aktif","Aktif");
                    $value=$checked[$post->aktif];
                    return  "<label>$value</label>";
                }),
            TD::make('kategori','Kategori')
                ->sort()
                ->filter(Input::make())
                ->render(function (Post $post) {
                    $kat=array("Berita","Artikel",'Slides');
                    $val=$kat[$post->kategori];
                    return  "<label>$val</label>";
                }),
            TD::make('Lihat Berita')
                ->render(function (Post $post) {
                    return Link::make('Preview')
                        ->href(url('/berita/'.$post->slug))
                        ->class('btn btn-sm btn-info')
                        ->target('_blank');
                }),

                TD::make(__('Actions'))
                ->align(TD::ALIGN_CENTER)
                ->width('100px')
                ->render(function (Post $post) {
                    return DropDown::make()
                        ->icon('options-vertical')
                        ->list([

                            Link::make(__('Edit'))
                                ->route('platform.post.edit', $post->id)
                                ->icon('pencil'),

                            Button::make(__('Hapus'))
                                ->icon('trash')
                                ->confirm(__('Data yang dihapus tidak dapat dikembalikan. Yakin akan menghapus data ini?'))
                                ->method('remove', [
                                    'id' => $post->id,
                                ]),
                        ]);
                }),
        ];
    }
}