<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reserve extends Model
{
    protected $fillable = ['time', 'date', 'provider_id', 'user_id'];

    public function user(){
        return $this->belongsTo(User::class);
    }
}
