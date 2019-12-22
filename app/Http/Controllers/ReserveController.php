<?php

namespace App\Http\Controllers;

use App\Reserve;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ReserveController extends Controller
{
    public function getAllReserves($id)
    {
        $join = DB::table('users')
            ->join('reserves', 'reserves.provider_id', 'users.id')
            ->join('providers', 'users.place_id', 'providers.id')
            ->where('reserves.user_id', $id)
            ->select('reserves.id','users.name', 'users.email', 'reserves.time', 'reserves.date', 'reserves.provider_id', 'providers.latitude', 'providers.longitude', 'reserves.approved')
            ->get();

        return $join;


        /*$p_id = json_decode($join);
        $provider_id = $p_id[0]->provider_id;

        $join2 = DB::table('users')
            ->join('providers', 'users.provider_id', 'providers.id')
            ->where('users.id', $provider_id)
            ->select('users.id', 'users.name', 'users.email', 'providers.latitude', 'providers.longitude')
            ->get();

        $arr['user'] = json_decode($join);

        $arr['provider'] = json_decode($join2);*/


        /*$arr = json_decode($join);
          return $arr[0]->id;*/

        /*$user = User::where('id', $id)->get();
        return $user;*/

        /*$reserves = Reserve::where('user_id', $id)->get();
        return $reserves;*/


    }

    public function reserve(Request $request){

        $request->validate([
            'time' => 'required',
            'date' => 'required',
            'provider_id' => 'required',
            'user_id' => 'required'
        ]);

        $date = strtotime($request->date." ".$request->time);

        $reserve = Reserve::create([
           'time' => date("h.i A", $date),
           'date' => $request->date,
           'provider_id' => $request->provider_id,
           'user_id' => $request->user_id
        ]);

        $userName = User::where('id', $reserve['user_id'])->first(['name', 'device_token']);
        $deviceToken = User::where('id', $reserve['provider_id'])->first('device_token')[0];
        $notification = new HomeController();
        $notification->send('New Reserve!', "You have new reserve from ".$userName['name'], $deviceToken);

        return response()->json([
            'message' => 'Successfully made reserve!'
        ], 201);

    }

    public function getAllUsersReserve($provider_id){

        $users = DB::table('users')
            ->join('reserves', 'reserves.user_id', 'users.id')
            ->where('reserves.provider_id', $provider_id)
            ->select('reserves.id', 'users.name', 'users.email', 'reserves.time', 'reserves.date', 'reserves.approved')
            ->get();
        return $users;
    }

    public function deleteReserve($id)
    {
        Reserve::where('id', $id)->delete();

        return "Deleted successfully";
    }
}
