<?php

namespace App\Models;
use App\User;
use Illuminate\Database\Eloquent\Model;

class Bid extends Model
{
    protected $table = 'bids';

    protected $fillable = ['user_id','bid_amount','product_id','status'];

      public function author()
    {
        return $this->belongsTo(User::class,'user_id');
    }

}
