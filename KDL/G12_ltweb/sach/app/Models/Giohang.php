<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Giohang extends Model
{
    use HasFactory;
     public $timestamps = false;
    protected $fillable =[
        'name','email', 'tensach', 'ngaymuon', 'hantra','giamuon'
    ];
    protected $primaryKey = 'id';
    protected $table = 'giohang';
}
