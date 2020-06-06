<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Team;
use Illuminate\Support\Str;
use Faker\Generator as Faker;

$factory->define(Team::class, function (Faker $faker) {
    $name = $faker->name;
    $slug = Str::slug($name);
    return [
        'name' => $name,
        'slug'  => $slug,
        'logo_uri' => $faker->imageUrl,
        'representation_entity' =>  $faker->state,
    ];
});
