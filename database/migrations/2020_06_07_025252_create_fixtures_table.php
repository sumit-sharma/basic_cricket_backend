<?php

use App\Enums\FixtureStatus;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFixturesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fixtures', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('team1');
            $table->unsignedBigInteger('team2');
            $table->date('schedule_at');
            $table->unsignedBigInteger('winner')->nullable();
            $table->string('status')->default(FixtureStatus::TBS);
            $table->string('remark')->nullable();
            $table->timestamps();
            $table->foreign('team1')->references('id')->on('teams');
            $table->foreign('team2')->references('id')->on('teams');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('fixtures');
    }
}
