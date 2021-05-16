<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Work;
use App\Models\Categorie;

class Works extends Controller
{
  public function index() {
    // return response()->json(Work::all());
    return response()->json(Work::with('categories')->get());
  }

  public function show($id) {
    return response()->json(Work::findOrFail($id));
  }

  public function worksByCategorieId ($id) {
    $categorie = Categorie::findOrFail($id); // recupere categorie par id
    $works = $categorie->works; // recupere les works lie a cette categorie (belongto)
    return response()->json($works); //retourne le resulta en json
  }


}
