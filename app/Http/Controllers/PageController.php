<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Setting;
use App\Models\Menu;
use App\Models\Ticker;
use App\Models\Client;
use App\Models\Post;
use App\Models\Event;
use App\Models\Service;
use Illuminate\Support\Str;
use DB;

class PageController extends Controller
{
    public function index()
    {
        $setting = Setting::latest()->first();
        $logo = $setting['hero'];
        $menulist = Menu::all();
        $tickers = Ticker::all();
        $banners = Client::all();
        $services = DB::table('services')
        ->select('services.id as service_id','users.id as user_id',
                'services.body','services.title','services.description',
                'services.hero','users.name as user_name','services.published_at', 'icon',
                'attachments.path', 'attachments.name','attachments.extension','author')
        ->where('status', 1)
        ->orderBy('published_at', 'desc')
        ->leftJoin('users', 'users.id', '=', 'services.author')
        ->leftJoin('attachments', 'attachments.id', '=', 'services.hero')
        ->get();
        $slides = DB::table('posts')
                ->select('posts.id as post_id','users.id as user_id',
                        'posts.body','posts.title','posts.description','posts.slug',
                        'posts.hero','users.name as user_name','posts.published_at',
                        'attachments.path', 'attachments.name','attachments.extension','author')
                ->where('aktif', 1)
                ->where('kategori',2)
                ->orderBy('published_at', 'desc')
                ->take(4)
                ->leftJoin('users', 'users.id', '=', 'posts.author')
                ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
                ->get();
        $posts = DB::table('posts')
                ->select('posts.id as post_id','users.id as user_id',
                        'posts.body','posts.title','posts.description','posts.slug',
                        'posts.hero','users.name as user_name','posts.published_at',
                        'attachments.path', 'attachments.name','attachments.extension','author')
                ->where('aktif', 1)
                ->orWhere('kategori',0)
                ->orWhere('kategori',1)
                ->orderBy('published_at', 'desc')
                ->limit(6)
                ->leftJoin('users', 'users.id', '=', 'posts.author')
                ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
                ->get();
        $imgs = DB::table('posts')
                ->where('aktif', 1)
                ->orderBy('published_at', 'desc')
                ->take(9)
                ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
                ->get();
    
        $menus = Menu::where('parent_id', '=', 0)->get();
        $events = Event::all();
        return view('pages.home',['events' => $events, 'services'=> $services,'logo' =>$logo, 'slides' => $slides, 'banners' => $banners, 'imgs' => $imgs, 'setting' => $setting,'menulist'=>$menulist, 'menus'=>$menus , 'tickers' => $tickers, 'posts' => $posts]);
    }

    public function profil()
    {
        $page_title = "Profil";
        $setting = Setting::latest()->first();
        $menulist = Menu::all();
        $tickers = Ticker::all();
        $menus = Menu::where('parent_id', '=', 0)->get();
        $posts = DB::table('posts')
                ->select('posts.id as post_id','users.id as user_id',
                        'posts.body','posts.title','posts.description','posts.slug',
                        'posts.hero','users.name as user_name','posts.published_at',
                        'attachments.path', 'attachments.name','attachments.extension','author')
                ->where('aktif', 1)
                ->orWhere('kategori',0)
                ->orWhere('kategori',1)
                ->orderBy('published_at', 'desc')
                ->limit(6)
                ->leftJoin('users', 'users.id', '=', 'posts.author')
                ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
                ->get();
       
        return view('pages.about',['posts' => $posts,'page_title' => $page_title,'setting' => $setting,'menulist'=>$menulist, 'menus'=>$menus]);
    }

    public function posts()
    {
        $page_title = "Indeks Berita";
        $setting = Setting::latest()->first();
        $menulist = Menu::all();
        $tickers = Ticker::all();
        $menus = Menu::where('parent_id', '=', 0)->get();
        $posts = DB::table('posts')
                ->select('posts.id as post_id','users.id as user_id',
                'posts.body','posts.title','posts.description', 'posts.kategori','posts.slug',
                'posts.hero','users.name as user_name','posts.published_at',
                'attachments.path', 'attachments.name','attachments.extension','author')
                ->where('aktif', 1)
                ->where('kategori',"0")
                ->orWhere('kategori',"1")
                ->orderBy('published_at', 'desc')
                ->take(6)
                ->leftJoin('users', 'users.id', '=', 'posts.author')
                ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
                ->get();
        $kat= array('Berita','Artikel','Sildes');
        return view('post.index',['kat' => $kat, 'page_title' => $page_title,'setting' => $setting,'menulist'=>$menulist, 'menus'=>$menus,'posts' => $posts]);
    }

    public function berita($slug)
    {
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
        'posts.body','posts.title','posts.description','posts.slug',
        'posts.hero','users.name as user_name','posts.published_at',
        'attachments.path', 'attachments.name','attachments.extension','email','author')
            ->where('posts.slug', $slug)
            ->leftJoin('users', 'users.id', '=', 'posts.author')
            ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
            ->get();
        $posts = DB::table('posts')
        ->select('posts.id as post_id','users.id as user_id',
        'posts.body','posts.title','posts.description','email','posts.slug',
        'posts.hero','users.name as user_name','posts.published_at',
        'attachments.path', 'attachments.name','attachments.extension','author')
            ->where('aktif', 1)
            ->take(6)
            ->orderBy('published_at', 'desc')
            ->leftJoin('users', 'users.id', '=', 'posts.author')
            ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
            ->get();
    
        return view('post.show',['data' => $data, 'page_title' => $page_title, 'berita' => $berita, 'setting' => $setting,'menulist'=>$menulist, 'menus'=>$menus,'posts' => $posts]);
    }


    public function laman($slug)
    {
      
        $page_title = $slug;
        $setting = Setting::latest()->first();
        $menulist = Menu::all();
        $tickers = Ticker::all();
      
        $menus = Menu::where('parent_id', '=', 0)->get();
        $data = Post::inRandomOrder()
                    ->limit(3)
                    ->get();
        $pages = DB::table('pages')
        ->select('pages.id as page_id','users.id as user_id',
        'pages.body','pages.title','pages.description','pages.slug',
        'pages.hero','users.name as user_name','pages.published_at',
        'attachments.path', 'attachments.name','attachments.extension','email','author')
            ->where('pages.slug', $slug)
            ->leftJoin('users', 'users.id', '=', 'pages.author')
            ->leftJoin('attachments', 'attachments.id', '=', 'pages.hero')
            ->get();
        $posts = DB::table('posts')
        ->select('posts.id as post_id','users.id as user_id',
        'posts.body','posts.title','posts.description','email','posts.slug',
        'posts.hero','users.name as user_name','posts.published_at',
        'attachments.path', 'attachments.name','attachments.extension','author')
            ->where('aktif', 1)
            ->take(6)
            ->orderBy('published_at', 'desc')
            ->leftJoin('users', 'users.id', '=', 'posts.author')
            ->leftJoin('attachments', 'attachments.id', '=', 'posts.hero')
            ->get();
    
        return view('post.page',['pages' => $pages, 'data' => $data, 'page_title' => $page_title, 'setting' => $setting,'menulist'=>$menulist, 'menus'=>$menus,'posts' => $posts]);
    }
    

  
}
