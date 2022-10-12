<?php

namespace App\Orchid\Screens;

use App\Models\Client;
use App\Models\User;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Quill;
use Orchid\Screen\Fields\Relation;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Upload;
use Orchid\Screen\Fields\Cropper;
use Orchid\Screen\Fields\Datetimer;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Toast;
use Orchid\Support\Facades\Alert;


class ClientEditScreen extends Screen
{
    /**
     * @var Client
     */
    public $client;

    /**
     * Query data.
     *
     * @param Client $Client
     *
     * @return array
     */
    public function query(Client $client): array
    {
        $client->load('attachment');

        return [
            'client' => $client
        ];
    }

    /**
     * The name is displayed on the user's screen and in the headers
     */
    public function name(): ?string
    {
        return $this->client->exists ? 'Edit Banner Link' : 'Banner Link';
    }
    
    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Banner Link";
    }

    /**
     * Button commands.
     *
     * @return Link[]
     */
    public function commandBar(): array
    {
        return [
            Button::make('Simpan')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->client->exists),

            Button::make('Update')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->client->exists),

            Button::make('Hapus')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->client->exists),
        ];
    }

    /**
     * Views.
     *
     * @return Layout[]
     */
    public function layout(): array
    {
        return [
            Layout::rows([
                Input::make('client.title')
                    ->title('Nama Link'),
    
                Cropper::make('client.hero')
                    ->title('Banner')
                    ->targetRelativeUrl()
                    ->width(400)
                    ->height(200),
    
                Input::make('client.link')
                    ->title('Link URL')
                    ->placeholder('Link URL dari Banner'),         
    
            ])
        ];
    }

    /**
     * @param Post    $post
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Client $client, Request $request)
    {

        $client->fill($request->get('client'))->save();
    
    $client->attachment()->syncWithoutDetaching(
        $request->input('client.attachment', [])
    );

        Toast::info(__('Data Banner telah disimpan'));

        return redirect()->route('platform.clients');
    }

    /**
     * @param Role $role
     *
     * @throws \Exception
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove(Client $client)
    {
        $client->delete();

        Toast::info(__('Data  berhasil dihapus'));

        return redirect()->route('platform.clients');
    }
}
