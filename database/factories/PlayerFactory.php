<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Player;
use Faker\Generator as Faker;

$factory->define(Player::class, function (Faker $faker) {
    return [
        'first_name' => $faker->firstNameMale,
        'last_name'  => $faker->lastName,
        'nick_name'  => $faker->firstName,
        'image_uri' => $faker->imageUrl(),
        'jersey_number' => $faker->numberBetween(0, 99),
        'country'   => 'USA',

    ];
});
