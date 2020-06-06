<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Model for point table
 * @author Sumit Sharma <211.sumit@gmail.com>
 */
class Point extends Model
{
    /**
     * model properties which need to guarded against mass assignment
     *
     * @var guarded array
     */
    protected $guarded = [];

    /**
     * column team_id relationship with teams table
     *
     * @return void
     */
    public function team()
    {
        return $this->belongsTo(\App\Models\Team::class);
    }
    
}
