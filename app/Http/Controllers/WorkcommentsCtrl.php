<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Models\Workcomment;
use App\Models\Work;
use App\Mail\WorkCommented;

class WorkcommentsCtrl extends Controller {

  /**
   * AFFICHAGES DES COMMENTAIRES DU WORK
   * @return [json]  [ressources/Show.vue]
   */
  public function index(){
    return response()->json(Workcomment::all());
  }


  /**
   * CREATION D'UN COMMENTAIRE
   * @param  Request $request
   * @return [json]
   */
  public function store(Request $request){
    $workcomment = Workcomment::create($request->all());
    $work = Work::findOrFail($request->work_id);
    Mail::to('ofeel.chelsea@gmail.com')->send(new WorkCommented($work, $workcomment));
    return response()->json($workcomment);
  }


  /**
   * RECUPERE LES COMMENTAIRES BY WORK ID
   * @param  [int] $id
   * @return [json]
   */
  public function getCommentsByWorkId($id){
    $work = Work::findOrFail($id);
    $comments = $work->workcomments;
    return response()->json($comments);
  }


}
