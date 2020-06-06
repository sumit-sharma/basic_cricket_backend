<?php

namespace App\Models;

use App\Models\Player;
use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    /**
     * properties which need to guarded against mass assignment
     *
     * @var guarded array
     */
    protected $guarded = [];


    public function players()
    {
        return $this->hasMany(Player::class);
    }
    
}
