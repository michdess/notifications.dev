@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Create New Task</div>

                <div class="panel-body">
                    <p>Assign a task</p>
                    <form action="/create" method="POST">
                    {{csrf_field()}}
                    <input type="hidden" name="by_user_id" value="{{\Auth::user()->id}}">
                        <div class="form-group">
                            <label for="">Task Name</label>
                            <input type="text" name="description" class="form-control">
                        </div>

                        <div class="form-group">
                            <label for="">Assign To</label>
                            <select name="assignee_id" id="" class="form-control">
                                <option value=""></option>
                                @foreach($users as $user)
                                <option value="{{$user->id}}">{{$user->name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Save</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
