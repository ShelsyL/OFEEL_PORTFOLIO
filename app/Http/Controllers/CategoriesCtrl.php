<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categorie;

class CategoriesCtrl extends Controller {

/**
 * All CATEGORIES
 * @return [json]
 */
  public function index () {
    return response()->json(Categorie::all());
  }

}
