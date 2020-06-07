<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * model for fixture entity
 */
class Fixture extends Model
{
    /**
     * model proerties which need to be guarded against mass assignment
     *
     * @var guarded [array]
     */
    protected $guarded = [];

    public function homeTeam()
    {
        return $this->belongsTo(\App\Models\Team::class, 'team1', 'id');    
    }

    public function awayTeam()
    {
        return $this->belongsTo(\App\Models\Team::class, 'team2', 'id');    
    }

}
