<?php

use App\Enums\FixtureStatus;
use App\Models\Fixture;
use App\Models\Team;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;

class FixtureSeeder extends Seeder
{
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run()
  {
    $teams = Team::where('status', \App\Enums\StatusType::Active)->get();
    $teams_arr = $teams->toArray();
    $teamIdArray = Arr::pluck($teams_arr, 'id');
    // info($teamIdArray);
    $result = $this->getMatchPair($teamIdArray);
    // info($result);

    foreach ($result as $item) {
      $matchData = $this->getRandomDate();
      foreach ($item as $key => $value) {
        $fixture = [
          'team1' => $key, 
          'team2' => $value,
          'schedule_at' => $matchData['schedule_date'],
          'status'  => $matchData['match_status'], 
        ];
        if ($matchData['match_status'] == FixtureStatus::FINISHED) {
          $fixture['winner'] = [$key, $value][array_rand([$key, $value])];
        }
          
      }
      // info($fixture);
      Fixture::Create($fixture);
    }

  }


  private function getMatchPair($input)
  {
    $output = array();
    for ($i = 0; $i < sizeof($input); $i++) {
      $k = $input[$i];
      for ($j = $i + 1; $j < sizeof($input); $j++) {
        $v = $input[$j];
        $output[] = array($k => $v);
      }
    }

    return $output;
  }

  private function getRandomDate()
  {
    $matchStatus = FixtureStatus::TBS;
    $scheduleDate = Carbon::now()->addDay(rand(-5, 20))->toDateString();
    if (Carbon::parse($scheduleDate)  < Carbon::today()) {
      $matchStatus = FixtureStatus::FINISHED;
    }

    return ['schedule_date' => $scheduleDate, 'match_status' => $matchStatus];
  }
}
