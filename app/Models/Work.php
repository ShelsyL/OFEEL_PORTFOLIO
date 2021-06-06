<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Work extends Model {

    use HasFactory;

  protected $table = 'works';
  protected $fillable = ['title'];


    /**
    * GETTER des comments du work
    * 1:n - hasMany => a beaucoup
    */
    public function workcomments() {
      return $this->hasMany('App\Models\Workcomment');
    }


    /**
    * GETTER des tags du work
    * n:n - belongsToMany => Appartenir à plusieurs
    */
    public function tags() {
      return $this->belongsToMany('App\Models\Tag', 'works_has_tags');
    }


    /**
    * GETTER de la relation des categories du work
    * n:n - belongsToMany => Appartenir à plusieurs
    */
    public function categories() {
      return $this->belongsToMany('App\Models\Categorie', 'works_has_categories');
    }


    /**
    * GETTER de la relation des WorkHasCategories du work
    * @return categorie_ids tableau de id categories.
    * 1:n - hasMany => A beaucoup
    */
    public function getCategorieIdsAttribute() {
       return $this->hasMany('App\Models\WorkHasCategories', 'work_id','id')->pluck('categorie_id');
    }


    /**
    * GETTER de la relation des WorkHascTags du work
    * @return tag_ids tableau de id categories.
    * 1:n - hasMany => A beaucoup
    */
    public function getTagIdsAttribute() {
       return $this->hasMany('App\Models\WorkHasTags', 'work_id','id')->pluck('tag_id');
    }

}
