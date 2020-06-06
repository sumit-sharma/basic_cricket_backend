<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class PlayerResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
            "id"=>$this->id,
            "first_name"=>$this->first_name,
            "last_name"=>$this->last_name,
            "team_id"=>$this->team->name,
            "nick_name"=>$this->nick_name,
            "image_uri"=>$this->image_uri,
            "jersey_number"=>$this->jersey_number,
            "country"=>$this->country,
            "status"=>$this->status,
        ];
    }
}
