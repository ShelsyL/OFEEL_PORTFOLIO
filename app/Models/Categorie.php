<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categorie extends Model
{
    use HasFactory;
    protected $table = 'categories';

    /**
    * GETTER des works de la categorie.
    * n:n - belongsToMany => Appartenir à plusieurs
    */
    public function works() {
      return $this->belongsToMany('App\Models\Work', 'works_has_categories');
    }


    /**
    * GETTER des articles de la catégorie.
    * 1:n - hasMany => A beaucoup
    */
    public function articles() {
      return $this->hasMany('App\Models\Article');
    }
}
