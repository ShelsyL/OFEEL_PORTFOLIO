<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WorkHasCategories extends Model {
  
    use HasFactory;

    protected $table = 'works_has_categories';

    /**
    * GETTER des categories du work
    */
    // public function works_categories() {
    //   return $this->belongsToMany('App\Models\Categorie', 'works_has_categories');
    // }

    // /**
    // * GETTER des categories du work
    // */
    // public function categories() {
    //   return $this->belongsToMany('App\Models\Categorie', 'works_has_categories', 'work_id', 'categorie_id');
    // }
}
