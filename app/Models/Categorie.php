<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categorie extends Model
{
    use HasFactory;

    /**
    * GETTER des works de la categorie.
    */
    public function works() {
      return $this->belongsToMany('App\Models\Work', 'works_has_categories');
    }

    /**
    * GETTER des articles de la catégorie.
    */
    public function articles() {
      return $this->hasMany('App\Models\Article');
    }
}
