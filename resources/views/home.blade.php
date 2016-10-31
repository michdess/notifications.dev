@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard <span class="pull-right"><a href="/create">Add New Task</a></span></div>

                <div class="panel-body">
                    <p>My tasks</p>
                    @if(count($tasks))
                    
                        <ul id="task-list">
                            @foreach($tasks as $task)
                                <li>{{$task->description}} by {{$task->by_user->name}}</li>
                            @endforeach
                        </ul>

                    @else

                    <p>No tasks</p>

                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
