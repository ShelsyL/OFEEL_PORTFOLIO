<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artcomment extends Model
{
    use HasFactory;

    /**
    * GETTER des articles de artcomments
    * 1:n(Inverse) - belongsTo => Appartient à
    */
    public function article(){
      return $this->belongsTo('App\Models\Article');
    }
}
