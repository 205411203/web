<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

class Ticker extends Model
{
    use HasFactory,Filterable, AsSource;

    protected $fillable = [
        'news_title',
        'content',
        'url',
     ];
 
     protected $allowedFilters = [
         'id',
         'news_title',
         'content',
         'url',
     ];
 
     /**
      * @var array
      */
     protected $allowedSorts = [
         'id',
         'news_title',
         'content',
         'url',
     ];
}
