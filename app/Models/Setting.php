<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;
use Orchid\Attachment\Models\Attachment;

class Setting extends Model
{
    use HasFactory, AsSource, Attachable;
    protected $fillable = [
       'judul',
       'slogan',
       'alamat',
       'kota',
       'telp',
       'email',
       'web',
       'hero',
       'instagram',
       'twitter',
       'facebook',
       'youtube',
    ];
    
    public function hero()
        {
            return $this->hasOne(Attachment::class, 'id', 'hero')->withDefault();
        }
}
