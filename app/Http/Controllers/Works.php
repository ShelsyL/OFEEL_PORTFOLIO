<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Work;

class Works extends Controller
{
    public function index() {
      return response()->json(Work::all());
    }
}
