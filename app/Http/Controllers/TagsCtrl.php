<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tag;

class TagsCtrl extends Controller {

  /**
   * ALL TAGS
   * @return [json]
   */
    public function index () {
      return response()->json(Tag::all());
    }
}
