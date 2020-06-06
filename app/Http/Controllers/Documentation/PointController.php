<?php

namespace App\Http\Controllers\Documentation;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PointController extends BaseController
{

    /**
     * @OA\Get(
     *     path="/api/point/{teamId}",
     *     operationId="/api/point/{teamId}",
     *     tags={"Point-Table"},
     *     @OA\Parameter(
     *         name="teamId",
     *         in="path",
     *         description="Team Id",
     *         required=true,
     *         @OA\Schema(type="string")
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

    /**
     * @OA\Get(
     *     path="/api/point",
     *     operationId="/api/point",
     *     tags={"Point-Table"},
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
