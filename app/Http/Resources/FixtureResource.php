<?php

namespace App\Http\Resources;

use App\Enums\FixtureStatus;
use Illuminate\Http\Resources\Json\JsonResource;

class FixtureResource extends JsonResource
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
            "id"=> $this->id,
            "team1_id"=> $this->team1,
            "team1"=> $this->homeTeam->name,
            "team2_id"=> $this->team2,
            "team2"=> $this->awayTeam->name,
            "schedule_at"=> $this->schedule_at,
            "winner"=> $this->winner,
            "status"=> FixtureStatus::getDescription((int) $this->status),
            "remark"=> $this->remark,
        ];
    }
}
