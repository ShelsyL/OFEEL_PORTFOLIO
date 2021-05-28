<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\Workcomment;
use App\Models\Work;

class WorkCommented extends Mailable
{
    use Queueable, SerializesModels;

    public $work;
    public $comment;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Work $work, Workcomment $comment)
    {
        $this->work = $work;
        $this->comment = $comment;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('emails.workCommented') // La vue
                    ->subject("Message via le SMTP Google"); // Le sujet
    }
}
