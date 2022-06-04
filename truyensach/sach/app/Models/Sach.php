<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sach extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable =[
        'email', 'tensach',  'ngaymuon','hantra', 'giamuon', 'trangthai'
    ];
    protected $primaryKey = 'id';
    protected $table = 'sach';

    
    
}
