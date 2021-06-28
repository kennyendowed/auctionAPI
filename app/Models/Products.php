<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $table = 'products';

    protected $fillable = ['name','avater','product_id','price','endtime','bidstatus','status','information'];

    // public function plan()
    // {
    //     return $this->belongsTo(Plan::class,'plan_id');
    // }
    // public function compound()
    // {
    //     return $this->belongsTo(Compound::class,'compound_id');
    // }
    // public function author()
    // {
    //     return $this->belongsTo(User::class,'user_id');
    // }
}
