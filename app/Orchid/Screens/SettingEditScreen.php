<?php

namespace App\Orchid\Screens;

use Orchid\Screen\Screen;
use App\Models\Setting;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Quill;
use Orchid\Screen\Fields\Relation;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Upload;
use Orchid\Screen\Fields\Cropper;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\Link;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Toast;

class SettingEditScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public $setting;

    public function query(Setting $setting): array
    {
        return [
            'setting' => $setting->first(),
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Update Konfigurasi Website';
    }

    public function description(): ?string
    {
        return "Konfigurasi Website";
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make(__('Dashboard'))
                ->icon('grid')
                ->route('platform.main'),
            Button::make(__('Update'))
                ->icon('check')
                ->method('createOrUpdate'),
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
                Input::make('setting.judul')
                    ->title('Judul website')
                    ->placeholder('Judul yang terlihat pada Link Website')
                    ->help('Biasanya berupa nama Instansi'),

                Input::make('setting.slogan')
                    ->title('Slogan')
                    ->maxlength(100)
                    ->placeholder('Maksimal 100 karakter'),

                TextArea::make('setting.alamat')
                    ->title('Alamat')
                    ->row(2)
                    ->placeholder('Alamat Instansi'),

                Input::make('setting.kota')
                    ->title('Kota')
                    ->placeholder('Kota Lokasi Instansi'),
                
                Input::make('setting.telp')
                    ->title('No. Telpon')
                    ->placeholder('No. Telpon Instansi'),

                Input::make('setting.email')
                    ->title('Email Instansi')
                    ->placeholder('Email Instansi'),

                Input::make('setting.web')
                    ->title('Website Instansi')
                    ->placeholder('Website Instansi'),

                Cropper::make('setting.hero')
                    ->title('Logo depan')
                    ->targetRelativeUrl()
                    ->width(620)
                    ->height(60),

                Input::make('setting.instagram')
                    ->title('Alamat Instagram'),

                Input::make('setting.facebook')
                    ->title('Alamat Facebook'),

                Input::make('setting.twitter')
                    ->title('Twitter Instansi')
                    ->placeholder('Alamat Twitter'),

                Input::make('setting.youtube')
                    ->title('Youtube Instansi')
                    ->placeholder('Alamat Youtube'),
            ]),
                
        ];
    }

    /**
     * @param Post    $post
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Setting $setting, Request $request)
    {
        $setting->fill($request->get('setting'))->save();
        
        $setting->attachment()->syncWithoutDetaching(
            $request->input('setting.attachment', [])
        );
    
        Toast::info(__('Setting berhasil disimpan'));

        return redirect()->route('platform.setting.edit');
    }

}