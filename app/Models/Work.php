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
    */
    public function workcomments() {
      return $this->hasMany('App\Models\Workcomment');
    }


    /**
    * GETTER des tags du work
    */
    public function tags() {
      return $this->belongsToMany('App\Models\Tag', 'works_has_tags');
    }


    /**
    * GETTER de la relation des categories du work
    * n:n
    * belongstomany => appartenir à plusieurs
    */
    public function categories() {
      return $this->belongsToMany('App\Models\Categorie', 'works_has_categories');
    }

    public function getCategoriesAttribute() {
      return $this->belongsToMany('App\Models\Categorie', 'works_has_categories')->pluck('name');
    }

    /**
    * GETTER de la relation des workascategorie du work
    * @return has_categories contient la relation avec la table has_Categore
    * 1:n (1 à plusieur)
    * hasMany => à beaucoup
    */
    public function has_categories() {
      return $this->hasMany('App\Models\WorkHasCategories', 'work_id','id');
    }


    /**
    * GETTER de la relation des workhascategorie du work
    * @return categorie_ids tableau de id categories.
    */
    public function getCategorieIdsAttribute() {
       return $this->hasMany('App\Models\WorkHasCategories', 'work_id','id')->pluck('categorie_id');
    }


    /**
    * GETTER de la relation des workastag du work
    * @return has_tags contient la relation avec la table has_Categore
    */
    public function has_tags() {
      return $this->hasMany('App\Models\WorkHasTags', 'work_id','id');
    }

    /**
    * GETTER de la relation des workhasctag du work
    * @return tag_ids tableau de id categories.
    */
    public function getTagIdsAttribute() {
       return $this->hasMany('App\Models\WorkHasTags', 'work_id','id')->pluck('tag_id');
    }

}
