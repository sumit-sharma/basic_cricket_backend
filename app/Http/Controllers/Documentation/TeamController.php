<?php

namespace App\Http\Controllers\Documentation;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TeamController extends BaseController
{
    
    /**
     * @OA\Get(
     *     path="/api/team/{id}",
     *     operationId="/api/team/{id}",
     *     tags={"Team"},
     *     @OA\Parameter(
     *         name="id",
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
     *     path="/api/team",
     *     operationId="/api/team",
     *     tags={"Team"},
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
