<?php

namespace App\Orchid\Screens;

use Orchid\Screen\Screen;
use App\Models\Event;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Toast;
use Illuminate\Validation\Rule;

class EventEditScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public $event;

    public function query(Event $event): array
    {
        return [
            'event' => $event
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Agenda Kegiatan';
    }

    public function description(): ?string
    {
        return "Kelola Jadwal";
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
                ->canSee($this->event->exists),
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
                Input::make('event.title')
                    ->sort()
                    ->title('Judul Acara ')
                    ->required(),

                TextArea::make('event.description')
                    ->rows(2)
                    ->sort()
                    ->title('Deskripsi Kegiatan dan Lokasi')
                    ->required(),

                DateTimer::make('event.start_date')
                    ->sort()
                    ->title('Tgl. Mulai')
                    ->enableTime()
                    ->required(),               

                DateTimer::make('event.end_date')
                    ->sort()
                    ->title('Tgl. Selesai')
                    ->enableTime()
                    ->required(),   
                
            ]),
                
        ];
    }

    public function save(Request $request, Event $event)
    {

        $event->fill($request->get('event'));

        $event->save();

        Toast::info(__('Data  telah disimpan'));

        return redirect()->route('platform.agendas');
    }

    /**
     * @param Role $role
     *
     * @throws \Exception
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove(Event $event)
    {
        $event->delete();

        Toast::info(__('Data berhasil dihapus'));

        return redirect()->route('platform.agenda.edit');
    }
}
