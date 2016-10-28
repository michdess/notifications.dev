<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    protected $fillable = ['assignee_id', 'by_user_id', 'description'];

    public function user()
    {
    	return $this->belongsTo(User::class, 'assignee_id');
    }

    public function by_user()
    {
    	return $this->belongsTo(User::class, 'by_user_id');
    }
}
