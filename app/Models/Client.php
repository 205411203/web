<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;
use Orchid\Attachment\Models\Attachment;
use Illuminate\Support\Str;

class Client extends Model
{
    use HasFactory, Filterable, AsSource, Attachable;
    protected $fillable = [
        'title',
        'hero',
        'link',
    ];

    protected $allowedFilters = [
        'id',
        'title',
        'hero',
        'link',
    ];

    /**
     * @var array
     */
    protected $allowedSorts = [
        'id',
        'title',
        'hero',
        'link',
    ];


}
