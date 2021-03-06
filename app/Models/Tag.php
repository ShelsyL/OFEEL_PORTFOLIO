<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    use HasFactory;

    /**
    * GETTER des works du tag.
    * n:n - belongsToMany => Appartenir à plusieurs
    */
    public function works() {
      return $this->belongsToMany('App\Models\Work', 'works_has_tags');
    }

    /**
    * GETTER des articles du tag.
    * n:n - belongsToMany => Appartenir à plusieurs
    */
    public function articles() {
      return $this->belongsToMany('App\Models\Article', 'articles_has_tags');
    }
}
