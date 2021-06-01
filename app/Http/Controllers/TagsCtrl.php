<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tag;

class TagsCtrl extends Controller {

  /**
   * AFFICHAGES DES TAGS
   * @return [type] [description]
   */
    public function index () {
      return response()->json(Tag::all()); // Retourne toutes les Categories (Résultat) sous forme d'une réponse Json.
    }
}
