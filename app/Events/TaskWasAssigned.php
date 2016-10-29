<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Support\Facades\Broadcast;

class TaskWasAssigned implements ShouldBroadcast
{
    use InteractsWithSockets, SerializesModels;

    protected $task;
    protected $by_user;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($task, $by_user)
    {
        $this->task = $task;
        $this->by_user = $by_user;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return Channel|array
     */
    public function broadcastOn()
    {
        //logger('Event was sent on: App.User.'.$this->task->assignee_id);
        return new Channel('App.User.'.$this->task->assignee_id);
    }


    public function broadcastAs()
    {
        //logger('Event was sent on: task_assigned');
        return 'task_assigned';
    }

    public function broadcastWith()
    {
        // logger('Data was sent: socket' . $this->socket);
        // logger('Data was sent: socket' . Broadcast::socket());
        // logger('=======================================');
        return [
            'title' => $this->task->description,
            'by' => $this->by_user->name,
            'body' => $this->by_user->name. ' asssigned to you the task ' . $this->task->description,
        ];
    }
}
