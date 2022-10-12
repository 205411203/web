<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

class Agenda extends Model
{
    use HasFactory,Filterable, AsSource;

    protected $fillable = [
        'title',
        'description',
        'start_date',
         'end_date',
     ];
 
     protected $allowedFilters = [
         'id',
         'description',
         'start_date',
         'end_date',
     ];
 
     /**
      * @var array
      */
     protected $allowedSorts = [
         'id',
         'title',
         'description',
         'start_date',
         'end_date',
     ];
}
