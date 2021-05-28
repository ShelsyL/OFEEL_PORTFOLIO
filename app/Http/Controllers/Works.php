<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Work;
use App\Models\Categorie;

class Works extends Controller {

  public function index() {

    // Tous les works
    // $works = Work::all();

    // tout les work + ce que retourne la fonction "getCategorieIdsAttribute"
    $works = Work::get()->append('categorie_ids');

    // Tous les work + relation "categories"
    // $works = Work::with('categories')->get();

    // Tous les work + relation "has_categories"
    // $works = Work::with('has_categories')->get();;

    return response()->json($works);
  }

  // public function index() {
  //   $works = Work::with('toto')->get();
  //   $toto = $works[0]->toto;
  //   $test = $toto->pluck('categorie_id');
  //   echo $test;
  //   return response()->json($works);
  // }

  public function show($id) {
    // $work = Work::findOrFail($id)->append('categorie_ids');
    $work = Work::with('tags')->findOrFail($id)->append('categorie_ids');
    return response()->json($work);
  }


  public function worksByCategorieId ($id) {
    $categorie = Categorie::findOrFail($id); // recupere categorie par id
    $works = $categorie->works; // recupere les works lie a cette categorie (belongto)
    return response()->json($works); //retourne le resulta en json
  }


}
