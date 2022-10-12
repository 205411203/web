<?php

namespace App\Orchid\Screens;

use Orchid\Screen\Screen;
use App\Models\Ticker;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Toast;
use Illuminate\Validation\Rule;

class TickerEditScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public $ticker;

    public function query(Ticker $ticker): array
    {
        return [
            'ticker' => $ticker
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Breaking News';
    }

    public function description(): ?string
    {
        return "Kelola Breaking News";
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
                ->canSee($this->ticker->exists),
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
                Input::make('ticker.news_title')
                    ->sort()
                    ->title('Judul ')
                    ->placeholder('Judul Pengumuman')
                    ->required(),

                Input::make('ticker.content')
                    ->sort()
                    ->title('Isi Breaking News ')
                    ->required()
                    ->placeholder('Maksimal 100 karakter'),

                Input::make('ticker.url')
                    ->sort()
                    ->title('Link')
                    ->required()
                    ->placeholder('Link URL ( Jika Ada)'),               
                
            ]),
                
        ];
    }

    public function save(Request $request, Ticker $ticker)
    {

        $ticker->fill($request->get('ticker'));

        $ticker->save();

        Toast::info(__('Data Breaking News telah disimpan'));

        return redirect()->route('platform.tickers');
    }

    /**
     * @param Role $role
     *
     * @throws \Exception
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove(Ticker $ticker)
    {
        $ticker->delete();

        Toast::info(__('Data Breaking News berhasil dihapus'));

        return redirect()->route('platform.tickers.edit');
    }
}
