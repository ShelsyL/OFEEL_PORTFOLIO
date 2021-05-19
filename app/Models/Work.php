<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Work extends Model
{
    use HasFactory;

  //  protected $appends = ['categorie_ids'];
  protected $fillable = ['title'];


    /**
    * GETTER des comments du post.
    */
    public function commentsOfWork() {
      return $this->hasMany('App\Models\CommentOfWork');
    }


    /**
    * GETTER des tags du work
    */
    public function tags() {
      return $this->belongsToMany('App\Models\Tag', 'works_has_tags');
    }


    /**
    * GETTER des categories du work
    */
    public function categories() {
      return $this->belongsToMany('App\Models\Categorie', 'works_has_categories');
    }

    public function has_categories() {
      return $this->hasMany('App\Models\WorkHasCategories', 'work_id','id');
    }


    /**
    * GETTER des categories du work (par ids)
    */
    public function getCategorieIdsAttribute() {
       return $this->hasMany('App\Models\WorkHasCategories', 'work_id','id')->pluck('categorie_id');
    }

}
