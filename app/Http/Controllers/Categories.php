<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categorie;

class Categories extends Controller {

  public function index () {
    return response()->json(Categorie::all()); // Retourne toutes les Categories (Résultat) sous forme d'une réponse Json.
  }

  // public function index () {
  //   return response()->json(Categorie::with('work')); // Retourne toutes les Categories (Résultat) sous forme d'une réponse Json.
  // }


  // public function worksByCategorie () {
  //   $works = Work::with('categorie')->get();
  //   return response()->json(Categorie::all()); // Retourne toutes les Categories (Résultat) sous forme d'une réponse Json.
  // }

  // public function test () {
    // return response()->json(Categorie::with('works'));
    // return response()->json(Works::with('categorie')->get());
    // return "Coucou test";
  // }

}
