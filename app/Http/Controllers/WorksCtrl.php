<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Work;

class WorksCtrl extends Controller {

/**
 * ALL WORKS (+ ce que retourne la fonction "getCategorieIdsAttribute" et getTagIdsAttribute)
 * @return [json]
 */
  public function index() {
    $works = Work::get()->append('categorie_ids')->append('tag_ids');
      return response()->json($works);

      // Tous les works
      // $works = Work::all();
  }


  /**
  * SHOW (+ ce que retourne la fonction "tags" et "getCategorieIdsAttribute"  )
  * @param  [int] $id
  * @return json work
  */
  public function show($id) {
    $work = Work::with('tags')->findOrFail($id)->append('categorie_ids');
      return response()->json($work);
  }
}



// Doc append : permet d'ajouter une valeur ds le json
// https://laravel.com/docs/8.x/eloquent-serialization#appending-values-to-json
