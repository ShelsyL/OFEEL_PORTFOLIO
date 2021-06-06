<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;

    /**
    * GETTER des comments d'article.
    * 1:n - hasMany => A beaucoup
    */
    public function artcomments() {
      return $this->hasMany('App\Models\Artcomment');
    }


    /**
    * GETTER des tags d'article.
    * n:n - belongsToMany => Appartenir à plusieurs
    */
    public function tags() {
      return $this->belongsToMany('App\Models\Tag', 'articles_has_tags');
    }


    /**
    * GETTER des categories d'article.
    * 1:n(Inverse) - belongsTo => Appartient à
    */
    public function categorie() {
      return $this->belongsTo('App\Models\Categorie');
    }
}
