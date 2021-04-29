<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;

    /**
    * GETTER des comments d'article.
    */
    public function commentsOfArticle() {
      return $this->hasMany('App\Models\CommentOfArticle');
    }

    /**
    * GETTER des tags d'article.
    */
    public function tags() {
      return $this->belongsToMany('App\Models\Tag', 'articles_has_tags');
    }

    /**
    * GETTER des categories d'article.
    */
    public function categorie() {
      return $this->belongsTo('App\Models\Categorie');
    }
}
