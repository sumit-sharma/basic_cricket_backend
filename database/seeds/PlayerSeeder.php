<?php

use App\Enums\StatusType;
use App\Models\Team;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PlayerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // factory(\App\Models\Player::class, 110)->create([
        //     'team_id' => $this->getRandomTeamId(),
        // ]);

        $this->assignPlayerTeam();
    }

    /**
     * return random id from `Teams` Table
     *
     * @return integer
     */
    private function getRandomTeamId():int
    {
        $team = Team::inRandomOrder()->first();
        return $team->id;
    }

    private function assignPlayerTeam()
    {
        $var = 0;
        $teams = DB::table('teams')->select('id')->where('status', StatusType::Active)->get()->toArray();
        info($teams);
        DB::table('players')->chunkById(5, function($player) use($teams, &$var){
            // foreach ($player as $item) {
                // DB::table('players')->where('id', $item->id)->update(['team'])
            // }
            // info($teams[$var]->id);
            $var++;
            info($var);
            // info(SUMI882835445)
        });
    }
}
