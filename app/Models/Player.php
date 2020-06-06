<?php

namespace App\Models;

use App\Models\Team;
use Illuminate\Database\Eloquent\Model;

/**
 * Player Model
 * @author Sumit Sharma <211.sumit@gmail.com>
 */
class Player extends Model
{
    protected $guarded = [];

    /**
     * relationship
     *
     * @return void
     */
    public function team()
    {
        return $this->belongsTo(Team::class);    
    }
}
