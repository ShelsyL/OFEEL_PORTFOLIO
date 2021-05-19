<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentOfWork extends Model
{
    use HasFactory;

    protected $table = 'commentsOfWork';


    /**
    * GETTER des works de commentOfWork
    */
    public function work(){
      return $this->belongsTo('App\Models\Work');
    }
}
