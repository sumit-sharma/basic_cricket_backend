<?php

namespace App\Http\Controllers\Documentation;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class FixtureController extends BaseController
{
    /**
     * @OA\Get(
     *     path="/api/fixture",
     *     operationId="/api/fixture",
     *     tags={"Fixture"},
     *     @OA\Parameter(
     *         name="team_id",
     *         in="query",
     *         description="team_id",
     *         required=false,
     *         @OA\Schema(type="string")
     *     ),
     *     @OA\Parameter(
     *         name="type_status",
     *         in="query",
     *         description="match status",
     *         required=false,
     *         @OA\Schema(type="string",enum={"upcoming", "past_matches"})
     *     ),
     *     @OA\Response(
     *         response="200",
     *         description="",
     *     @OA\JsonContent(),
     *     ),
     *     @OA\Response(
     *         response="400",
     *         description="Error: Bad request.",
     *         @OA\JsonContent(),
     *     ),
     * )
     * )
     */
    
}
