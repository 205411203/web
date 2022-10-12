<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;
use Orchid\Attachment\Models\Attachment;
use Illuminate\Support\Str;
use Cviebrock\EloquentSluggable\Sluggable;

class Page extends Model
{
    use HasFactory, Filterable, AsSource, Attachable, Sluggable;
    protected $fillable = [
        'title',
        'description',
        'body',
        'author',
        'hero',
        'slug',
        'published_at',
        'status',
    ];

    protected $allowedFilters = [
        'id',
        'title',
        'description',
        'body',
        'author',
        'hero',
        'published_at',
        'status'
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
        'status'
    ];

    protected $guarded = [];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }


}
