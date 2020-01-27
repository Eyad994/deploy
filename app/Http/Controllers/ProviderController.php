<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class ProviderController extends Controller
{
    public function getAllProviders()
    {
        $join = DB::table('users')
            ->join('providers', 'users.place_id', 'providers.id')
            ->select('users.id', 'users.name', 'users.email', 'providers.latitude', 'providers.longitude')
            ->get();

        return $join;

    }
}
