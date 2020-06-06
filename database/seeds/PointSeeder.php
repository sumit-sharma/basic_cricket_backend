<?php

use App\Models\Team;
use App\Models\Point;
use Illuminate\Database\Seeder;

class PointSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $teams = Team::select('id')->get();
        foreach($teams as $item) {
            $point = new Point();
            $point->team_id = $item->id;
            $point->points = rand(0, 10);
            $point->save();
        }

    }
}
