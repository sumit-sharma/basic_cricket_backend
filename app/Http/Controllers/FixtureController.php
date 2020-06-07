<?php

namespace App\Http\Controllers;

use App\Enums\FixtureStatus;
use App\Http\Resources\FixtureResource;
use App\Models\Fixture;
use Illuminate\Http\Request;

class FixtureController extends Controller
{
    /**
     * fixture model instance
     *
     * @var fixture [object]
     */
    private $fixture;
    /**
     * fixtureController constructor
     *
     * @param Fixture $fixture
     */
    public function __construct(Fixture $fixture)
    {
        $this->fixture = $fixture;
    }

    /**
     * listing of resource
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $fixture = $this->fixture->query();

        $fixture->when(request('type_status') == 'upcoming', function ($query) {
            return $query->where('status', FixtureStatus::TBS);
        });

        $fixture->when(request('type_status') == 'past_matches', function ($query) {
            return $query->where('status', FixtureStatus::FINISHED);
        });

        $fixture->when(request('team_id'), function ($query) use ($request) {
            return $query->where(function ($q) use ($request) {
                $q->where('team1', $request->team_id)
                    ->orWhere('team2', $request->team_id);
            });
        });

        return FixtureResource::collection($fixture->paginate(request()->page_size ?? config('constants.default_pagesize')));
    }
}
