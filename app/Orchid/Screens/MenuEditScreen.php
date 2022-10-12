<?php

namespace App\Orchid\Screens;

use Orchid\Screen\Screen;
use App\Models\Menu;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Toast;
use Illuminate\Validation\Rule;

class MenuEditScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public $menu;

    public function query(Menu $menu): array
    {
        return [
            'menu' => $menu
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Menu Utama';
    }

    public function description(): ?string
    {
        return "Konfigurasi Menu Utama";
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make(__('Simpan'))
                ->icon('check')
                ->method('save'),

            Button::make(__('Hapus'))
                ->icon('trash')
                ->method('remove')
                ->canSee($this->menu->exists),
        ];
    }

    public function permission(): ?iterable
    {
        return [
            'platform.systems.users',
        ];
    }

    

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): array
    {
        return [
            Layout::rows([
                Input::make('menu.menu_title')
                    ->title('Nama Menu')
                    ->placeholder('Link Menu pada Navigasi')
                    ->required(),

                Input::make('menu.parent_id')
                    ->title('No. Menu ')
                    ->type('number')
                    ->min('0')
                    ->required()
                    ->placeholder('Parent Id'),

                Input::make('menu.sort_order')
                    ->title('Urutan')
                    ->type('number')
                    ->min('0')
                    ->required()
                    ->placeholder('Urutan menu'),

                Input::make('menu.slug')
                    ->title('Slug')
                    ->required()
                    ->placeholder('Slug pada Link Menu')
                    ->help('Contoh : profil , layanan '),

                 Input::make('menu.url')
                    ->title('Link URL')
                    ->required()
                    ->placeholder('Link URL Menu'),
                
                
            ]),
                
        ];
    }

    public function save(Request $request, Menu $menu)
    {
        $request->validate([
            'menu.slug' => [
                'required',
                Rule::unique(Menu::class, 'slug')->ignore($menu),
            ],
        ]);

        $menu->fill($request->get('menu'));

        $menu->save();

        Toast::info(__('Data Menu telah disimpan'));

        return redirect()->route('platform.menus');
    }

    /**
     * @param Role $role
     *
     * @throws \Exception
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove(Menu $menu)
    {
        $menu->delete();

        Toast::info(__('Data menu berhasil dihapus'));

        return redirect()->route('platform.menus.edit');
    }
}
