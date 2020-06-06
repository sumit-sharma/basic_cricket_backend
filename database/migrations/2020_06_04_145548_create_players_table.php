<?php

use App\Enums\StatusType;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePlayersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('players', function (Blueprint $table) {
            $table->id();
            $table->string('first_name');
            $table->string('last_name')->nullable();
            $table->unsignedBigInteger('team_id');
            $table->string('nick_name');
            $table->string('image_uri')->nullable();
            $table->unsignedInteger('jersey_number');
            $table->string('country');
            $table->foreign('team_id')->references('id')->on('teams');
            $table->string('status')->default(StatusType::Active);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('players');
    }
}
