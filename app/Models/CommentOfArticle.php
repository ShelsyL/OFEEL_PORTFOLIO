<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentOfArticle extends Model
{
    use HasFactory;

    /**
    * GETTER des articles de commentOfAricle
    */
    public function article(){
      return $this->belongsTo('App\Models\Article');
    }
}
