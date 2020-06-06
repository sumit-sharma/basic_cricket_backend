<?php

namespace App\Http\Controllers;

use App\Http\Resources\PointResource;
use App\Models\Point;
use Illuminate\Http\Request;

class PointController extends Controller
{
    /**
     * private instance point
     *
     * @var point [object]
     */
    private $point;
    /**
     *  PointController contructor
     *
     * @param Point $point
     */
    public function __construct(Point $point)
    {
        $this->point = $point;    
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return  PointResource::collection($this->point->all());
    }

    /**
     * Undocumented function
     *
     * @param [type] $teamId
     * @return void
     */
    public function show($teamId)
    {
        $teamPoint = $this->point->where('team_id', $teamId)->first();
        if(!$teamPoint) {
            return abort(404);
        }
        return new PointResource($teamPoint);
    }
}
