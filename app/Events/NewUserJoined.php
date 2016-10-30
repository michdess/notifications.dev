<?php

namespace App\Events;

use App\User;
use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class NewUserJoined implements ShouldBroadcast
{
    protected $user;

    use InteractsWithSockets, SerializesModels;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct(User $user)
    {
        //
        $this->user = $user;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return Channel|array
     */
    public function broadcastOn()
    {
        return new Channel('public_notifications');
    }

    public function broadcastAs()
    {
        return 'user_joined';
    }

    public function broadcastWith()
    {
        // logger('Data was sent: socket' . $this->socket);
        // logger('Data was sent: socket' . Broadcast::socket());
        // logger('=======================================');
        return [
            'user' => $this->user,
            'body' => $this->user->name . " joined the platform",
        ];
    }
}
