<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Workcomment extends Model {

    use HasFactory;

    protected $fillable = [ 'pseudo', 'content', 'work_id'];

    /**
    * GETTER des works des comments
    */
    public function work(){
      return $this->belongsTo('App\Models\Work');
    }
}
