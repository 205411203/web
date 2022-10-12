<?php

use Illuminate\Support\Facades\Route;
use App\Models\Setting;
use App\Models\Menu;
use App\Models\Ticker;
use App\Models\Client;
use App\Models\Event;
use App\Models\Post;
use App\Models\Service;
use Illuminate\Support\Str;
use App\Http\Controllers\PageController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [PageController::class,'index']);

Route::get('/profil', [PageController::class,'profil']);

Route::get('/berita.indeks', [PageController::class,'posts']);

Route::get('/berita/{id}', [PageController::class,'berita']);

Route::get('/laman/{id}', [PageController::class,'laman']);


/*
Route::get('berita/{id}', function ($id) {
    $page_title = "Berita";
    $setting = Setting::latest()->first();
    $menulist = Menu::all();
    $tickers = Ticker::all();
    $menus = Menu::where('parent_id', '=', 0)->get();
    $data = Post::inRandomOrder()
                ->limit(3)
                ->get();
    $berita = DB::table('posts')
    ->select('posts.id as post_id','users.id as user_id',
    'posts.body','posts.title','posts.description',
    'posts.hero','users.name as user_name','posts.published_at',
    'attachments.path', 'attachments.name','attachments.extension','email','author')
        ->where('posts.id', $id)
        ->leftJoin('users', 'users.id', '=', 'posts.author')
        ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
        ->get();
    $posts = DB::table('posts')
    ->select('posts.id as post_id','users.id as user_id',
    'posts.body','posts.title','posts.description','email',
    'posts.hero','users.name as user_name','posts.published_at',
    'attachments.path', 'attachments.name','attachments.extension','author')
        ->where('aktif', 1)
        ->take(6)
        ->orderBy('published_at', 'desc')
        ->leftJoin('users', 'users.id', '=', 'posts.author')
        ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
        ->get();

    return view('post.show',['data' => $data, 'page_title' => $page_title, 'berita' => $berita, 'setting' => $setting,'menulist'=>$menulist, 'menus'=>$menus,'posts' => $posts]);
})->name('post.single');

*/
Route::get('service/{id}', function ($id) {
        $page_title = "Layanan";
        $setting = Setting::latest()->first();
        $menulist = Menu::all();
        $tickers = Ticker::all();
        $menus = Menu::where('parent_id', '=', 0)->get();
        $data = Post::inRandomOrder()
                    ->limit(3)
                    ->get();
        $service = DB::table('services')
        ->select('services.id as service_id','users.id as user_id',
        'services.body','services.title','services.description',
        'services.hero','users.name as user_name','services.published_at',
        'attachments.path', 'attachments.name','attachments.extension','email','author')
            ->where('services.id', $id)
            ->leftJoin('users', 'users.id', '=', 'services.author')
            ->leftJoin('attachments', 'attachments.id', '=', 'services.hero')
            ->get();
        $posts = DB::table('posts')
        ->select('posts.id as post_id','users.id as user_id',
        'posts.body','posts.title','posts.description','email',
        'posts.hero','users.name as user_name','posts.published_at',
        'attachments.path', 'attachments.name','attachments.extension','author')
            ->where('aktif', 1)
            ->take(6)
            ->orderBy('published_at', 'desc')
            ->leftJoin('users', 'users.id', '=', 'posts.author')
            ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
            ->get();
    
        return view('post.s_show',['service' => $service, 'data' => $data, 'page_title' => $page_title, 'setting' => $setting,'menulist'=>$menulist, 'menus'=>$menus,'posts' => $posts]);
    })->name('service.single');




