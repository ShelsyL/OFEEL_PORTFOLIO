<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Models\Workcomment;
use App\Models\Work;
use App\Mail\WorkCommented;

class Workcomments extends Controller {

  /**
   * AFFICHAGES DES COMMENTAIRES DU WORK
   * @return [index]      [ressources/Show.vue]
   */
  public function index(){
    return response()->json(Workcomment::all());
  }


  /**
   * AJOUT (CREATION) D'UN COMMENTAIRE
   * @param  Request $request [description]
   * @return [type]           [description]
   */
  public function store(Request $request){
    $workcomment = Workcomment::create($request->all());
    $work = Work::findOrFail($request->work_id);
   Mail::to('ofeel.chelsea@gmail.com')->send(new WorkCommented($work, $workcomment));
    return response()->json($workcomment);
  }


  /**
   * RECUPERE LES COMMENTAIRES BY WORK ID
   * @param  [type] $id [description]
   * @return [type]     [description]
   */
  public function getCommentsByWorkId($id){
    $work = Work::findOrFail($id);
    $comments = $work->workcomments;
    return response()->json($comments);
  }


}
