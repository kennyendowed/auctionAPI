<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class activities extends Model
{
    protected $table = 'activities';

    protected $fillable = ['name','description','status'];

  
}
