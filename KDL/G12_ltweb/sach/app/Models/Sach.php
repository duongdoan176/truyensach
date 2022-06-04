<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sach extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable =[
        'tensach','tacgia', 'tomtat', 'kichhoat', 'slug_sach','noidung', 'hinhanh', 'theloai_id'
    ];
    protected $primaryKey = 'id';
    protected $table = 'sach';

    
    public function theloai(){
        return $this->belongsTo('App\Models\Theloai','theloai_id', 'id');
    }
}
