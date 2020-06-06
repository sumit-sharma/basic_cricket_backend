<?php

namespace App\Http\Resources;

use App\Enums\StatusType;
use Illuminate\Http\Resources\Json\JsonResource;

class TeamResource extends JsonResource
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
            "id" => $this->id,
            "name" => $this->name,
            "slug" => $this->slug,
            "logo_uri" => $this->logo_uri,
            "representation_entity" => $this->representation_entity,
            "status" => StatusType::getDescription((int) $this->status),
            "players"   => $this->players,
        ];
    }
}
