<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;
use Orchid\Attachment\Models\Attachment;
use Illuminate\Support\Str;

class Service extends Model
{
    use HasFactory, Filterable, AsSource, Attachable;
    protected $fillable = [
        'title',
        'description',
        'body',
        'author',
        'hero',
        'published_at',
        'status',
        'icon'
    ];

    protected $allowedFilters = [
        'id',
        'title',
        'description',
        'body',
        'author',
        'hero',
        'published_at',
        'status',
        'icon'
    ];

    /**
     * @var array
     */
    protected $allowedSorts = [
        'id',
        'title',
        'description',
        'body',
        'author',
        'hero',
        'published_at',
        'status',
        'icon'
    ];


}
