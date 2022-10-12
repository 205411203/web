<?php

declare(strict_types=1);

use App\Orchid\Screens\Examples\ExampleCardsScreen;
use App\Orchid\Screens\Examples\ExampleChartsScreen;
use App\Orchid\Screens\Examples\ExampleFieldsAdvancedScreen;
use App\Orchid\Screens\Examples\ExampleFieldsScreen;
use App\Orchid\Screens\Examples\ExampleLayoutsScreen;
use App\Orchid\Screens\Examples\ExampleScreen;
use App\Orchid\Screens\Examples\ExampleTextEditorsScreen;
use App\Orchid\Screens\PlatformScreen;
use App\Orchid\Screens\DashboardScreen;
use App\Orchid\Screens\SettingEditScreen;
use App\Orchid\Screens\MenuEditScreen;
use App\Orchid\Screens\MenuListScreen;
use App\Orchid\Screens\Role\RoleEditScreen;
use App\Orchid\Screens\Role\RoleListScreen;
use App\Orchid\Screens\TickerEditScreen;
use App\Orchid\Screens\EventEditScreen;
use App\Orchid\Screens\EventListScreen;
use App\Orchid\Screens\TickerListScreen;
use App\Orchid\Screens\User\UserEditScreen;
use App\Orchid\Screens\User\UserListScreen;
use App\Orchid\Screens\User\UserProfileScreen;
use Illuminate\Support\Facades\Route;
use Tabuna\Breadcrumbs\Trail;
use App\Orchid\Screens\PostEditScreen;
use App\Orchid\Screens\PostListScreen;
use App\Orchid\Screens\ClientEditScreen;
use App\Orchid\Screens\ClientListScreen;
use App\Orchid\Screens\ServiceEditScreen;
use App\Orchid\Screens\ServiceListScreen;
use App\Orchid\Screens\PageEditScreen;
use App\Orchid\Screens\PageListScreen;
/*
|--------------------------------------------------------------------------
| Dashboard Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the need "dashboard" middleware group. Now create something great!
|
*/

// Main
Route::screen('/main', DashboardScreen::class)
    ->name('platform.main');

// Platform > Profile
Route::screen('profile', UserProfileScreen::class)
    ->name('platform.profile')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Profile'), route('platform.profile'));
    });

// Platform > System > Users
Route::screen('users/{user}/edit', UserEditScreen::class)
    ->name('platform.systems.users.edit')
    ->breadcrumbs(function (Trail $trail, $user) {
        return $trail
            ->parent('platform.systems.users')
            ->push(__('User'), route('platform.systems.users.edit', $user));
    });

// Platform > System > Users > Create
Route::screen('users/create', UserEditScreen::class)
    ->name('platform.systems.users.create')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.systems.users')
            ->push(__('Create'), route('platform.systems.users.create'));
    });

// Platform > System > Users > User
Route::screen('users', UserListScreen::class)
    ->name('platform.systems.users')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Users'), route('platform.systems.users'));
    });

// Platform > System > Roles > Role
Route::screen('roles/{role}/edit', RoleEditScreen::class)
    ->name('platform.systems.roles.edit')
    ->breadcrumbs(function (Trail $trail, $role) {
        return $trail
            ->parent('platform.systems.roles')
            ->push(__('Edit'), route('platform.systems.roles.edit', $role));
    });

// Platform > System > Roles > Create
Route::screen('roles/create', RoleEditScreen::class)
    ->name('platform.systems.roles.create')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.systems.roles')
            ->push(__('Buat'), route('platform.systems.roles.create'));
    });

// Platform > System > Roles
Route::screen('roles', RoleListScreen::class)
    ->name('platform.systems.roles')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Wewenang'), route('platform.systems.roles'));
    });

// Example...
Route::screen('example', ExampleScreen::class)
    ->name('platform.example')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push('Dashboard');
    });

Route::screen('example-fields', ExampleFieldsScreen::class)->name('platform.example.fields');
Route::screen('example-layouts', ExampleLayoutsScreen::class)->name('platform.example.layouts');
Route::screen('example-charts', ExampleChartsScreen::class)->name('platform.example.charts');
Route::screen('example-editors', ExampleTextEditorsScreen::class)->name('platform.example.editors');
Route::screen('example-cards', ExampleCardsScreen::class)->name('platform.example.cards');
Route::screen('example-advanced', ExampleFieldsAdvancedScreen::class)->name('platform.example.advanced');

//Route::screen('idea', Idea::class, 'platform.screens.idea');

Route::screen('setting/{setting?}', SettingEditScreen::class)
    ->name('platform.setting.edit');



    Route::screen('menus/{menu}/edit', MenuEditScreen::class)
    ->name('platform.menus.edit')
    ->breadcrumbs(function (Trail $trail, $menu) {
        return $trail
            ->parent('platform.menus')
            ->push(__('Edit Menu'), route('platform.menus.edit', $menu));
    });

// Platform > System > Roles > Create
Route::screen('menus/create', MenuEditScreen::class)
    ->name('platform.menus.create')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.menus')
            ->push(__('Buat Menu'), route('platform.menus.create'));
    });

// Platform > System > Roles
Route::screen('menus', MenuListScreen::class)
    ->name('platform.menus')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Daftar Menu'), route('platform.menus'));
    });

    // Breaking News

Route::screen('tickers/{ticker}/edit', TickerEditScreen::class)
    ->name('platform.tickers.edit')
    ->breadcrumbs(function (Trail $trail, $ticker) {
        return $trail
            ->parent('platform.tickers')
            ->push(__('Edit'), route('platform.tickers.edit', $ticker));
    });

// Platform > System > Roles > Create
Route::screen('tickers/create', TickerEditScreen::class)
    ->name('platform.tickers.create')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.tickers')
            ->push(__('Buat'), route('platform.tickers.create'));
    });

// Post
Route::screen('ticker', TickerListScreen::class)
    ->name('platform.tickers')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Breaking News'), route('platform.tickers'));
    });

// Platform > Post

Route::screen('posts/{post}/edit', PostEditScreen::class)
    ->name('platform.post.edit')
    ->breadcrumbs(function (Trail $trail, $post) {
        return $trail
            ->parent('platform.posts')
            ->push(__('Edit'), route('platform.post.edit', $post));
    });


Route::screen('posts/create', PostEditScreen::class)
    ->name('platform.post.create')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.posts')
            ->push(__('Buat'), route('platform.post.create'));
    });

// Platform > System > Roles
Route::screen('posts', PostListScreen::class)
    ->name('platform.posts')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Indeks Berita'), route('platform.posts'));
    });


// Platform > Banner

Route::screen('clients/{client}/edit', ClientEditScreen::class)
    ->name('platform.client.edit')
    ->breadcrumbs(function (Trail $trail, $client) {
        return $trail
            ->parent('platform.clients')
            ->push(__('Berita'), route('platform.client.edit', $client));
    });


Route::screen('clients/create', ClientEditScreen::class)
    ->name('platform.client.create')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.clients')
            ->push(__('Create'), route('platform.client.create'));
    });


Route::screen('clients', ClientListScreen::class)
    ->name('platform.clients')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Banner Link'), route('platform.clients'));
    });


    // Platform > Service

Route::screen('services/{service}/edit', ServiceEditScreen::class)
->name('platform.service.edit')
->breadcrumbs(function (Trail $trail, $service) {
    return $trail
        ->parent('platform.services')
        ->push(__('Layanan'), route('platform.service.edit', $service));
});


Route::screen('services/create', ServiceEditScreen::class)
->name('platform.service.create')
->breadcrumbs(function (Trail $trail) {
    return $trail
        ->parent('platform.services')
        ->push(__('Create'), route('platform.service.create'));
});

Route::screen('services', ServiceListScreen::class)
->name('platform.services')
->breadcrumbs(function (Trail $trail) {
    return $trail
        ->parent('platform.index')
        ->push(__('Layanan'), route('platform.services'));
});


// Platform > Page

Route::screen('pages/{page}/edit', PageEditScreen::class)
    ->name('platform.page.edit')
    ->breadcrumbs(function (Trail $trail, $page) {
        return $trail
            ->parent('platform.pages')
            ->push(__('Edit'), route('platform.page.edit', $page));
    });


Route::screen('pages/create', PageEditScreen::class)
    ->name('platform.page.create')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.pages')
            ->push(__('Buat'), route('platform.page.create'));
    });

// Platform > System > Roles
Route::screen('pages', PageListScreen::class)
    ->name('platform.pages')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Indeks Halaman'), route('platform.pages'));
    });


// Platform > Agenda

Route::screen('events/{agenda}/edit', EventEditScreen::class)
    ->name('platform.agenda.edit')
    ->breadcrumbs(function (Trail $trail, $agenda) {
        return $trail
            ->parent('platform.agendas')
            ->push(__('Edit'), route('platform.agendas', $agenda));
    });


Route::screen('events/create', EventEditScreen::class)
    ->name('platform.agenda.create')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.agendas')
            ->push(__('Buat'), route('platform.agenda.create'));
    });

// Platform > System > Roles
Route::screen('events', EventListScreen::class)
    ->name('platform.agendas')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Indeks Halaman'), route('platform.agendas'));
    });