<?php

namespace App\Http\Controllers;

use App\Task;
use App\User;
use Illuminate\Http\Request;
use App\Events\TaskWasAssigned;
use App\Notifications\TaskAssigned;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        // return env('QUEUE_DRIVER');
        // return \Auth::user()->notifications;
        $tasks = Task::with('user', 'by_user')->where('assignee_id', \Auth::user()->id)->get();

        // return $tasks;

        return view('home', compact('tasks'));
    }

    public function create()
    {

        $task = Task::find(1);

        $users = User::where('id', '!=', \Auth::user()->id)->get();
        return view('create', compact('users'));
    }

    public function store(Request $request)
    {
        $task = Task::create($request->all());

        if($task){

            $user = User::find($task->assignee_id);

            $user->notify(new TaskAssigned($task, \Auth::user()));
 
            event(new TaskWasAssigned($task, \Auth::user()));

        }

        return redirect()->to('home');
    }
}
