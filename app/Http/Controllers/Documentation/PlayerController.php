<?php

namespace App\Http\Controllers\Documentation;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PlayerController extends BaseController
{
    /**
     * @OA\Get(
     *     path="/api/player/{id}",
     *     operationId="/api/player/{id}",
     *     tags={"Player"},
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         description="Player Id",
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
     *     path="/api/player",
     *     operationId="/api/player",
     *     tags={"Player"},
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
