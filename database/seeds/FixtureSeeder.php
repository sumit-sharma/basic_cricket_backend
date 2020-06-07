<?php

use Illuminate\Database\Seeder;

class FixtureSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
    }

    private function getMatchPair($input)
    {
        $output=array();
        for ($i=0;$i<sizeof($input);$i++) {
          $k=$input[$i];
          for ($j=$i+1;$j<sizeof($input);$j++) {
            $v=$input[$j];
            $output[]=array($k=>$v);
          }
        }    
    }
}
