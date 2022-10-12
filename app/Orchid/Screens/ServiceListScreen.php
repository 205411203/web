<?php

declare(strict_types=1);

namespace App\Orchid\Screens;

use App\Orchid\Layouts\ServiceListLayout;
use App\Models\Service;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Screen;

class ServiceListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): array
    {
        return [
            'services' => Service::filters()
                    ->select('services.id as id','services.title','services.hero','services.status','services.icon','services.published_at')
                    ->leftJoin('attachments', 'attachments.id', '=', 'services.hero')
                    ->defaultSort('services.published_at', 'desc')
                    ->paginate(10),

        ];
    }

    /**
     * The name is displayed on the user's screen and in the headers
     */
    public function name(): ?string
    {
        return 'Layanan';
    }
    
    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Kelola Layanan";
    }

    /**
     * Button commands.
     *
     * @return Link[]
     */
    public function commandBar(): array
    {
        return [
            Link::make('Buat baru')
                ->icon('pencil')
                ->route('platform.service.create')
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
            ServiceListLayout::class
        ];
    }
}