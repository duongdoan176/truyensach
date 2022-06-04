<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Danhmuctruyen;
use App\Models\Truyen;
use App\Models\Chapter;
use App\Models\Theloai;
use App\Models\Sach;




class IndexController extends Controller
{
    public function home(){
        $theloai = Theloai::orderBy('id', 'DESC')->get();

        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();
        $danhmuc = Danhmuctruyen::orderBy('id', 'DESC')->get();
        $truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->get();
      

        return view('pages.home')->with(compact('danhmuc','truyen', 'theloai', 'slide_truyen'));
    }
    public function danhmuc($slug){
        $theloai = Theloai::orderBy('id', 'DESC')->get();

        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();
        $danhmuc = Danhmuctruyen::orderBy('id', 'DESC')->get();

        $danhmuc_id = Danhmuctruyen::where('slug_danhmuc', $slug)->first();
        $tendanhmuc = $danhmuc_id->tendanhmuc;
        $truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->where('danhmuc_id', $danhmuc_id->id)->get();
        return view('pages.danhmuc')->with(compact('danhmuc', 'truyen', 'tendanhmuc', 'theloai', 'slide_truyen'));
    }
    public function theloai($slug){
        $theloai = Theloai::orderBy('id', 'DESC')->get();

        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();
        $danhmuc = Danhmuctruyen::orderBy('id', 'DESC')->get();

        $theloai_id = Theloai::where('slug_theloai', $slug)->first();
        //echo $danhmuc_id->id;
        $tentheloai = $theloai_id->tentheloai;  
        $truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->where('theloai_id', $theloai_id->id)->get();
       
        return view('pages.theloai')->with(compact('danhmuc', 'truyen', 'tentheloai', 'theloai', 'slide_truyen'));
    }
    public function xemtruyen($slug){
        $theloai = Theloai::orderBy('id', 'DESC')->get();

        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();
        $danhmuc = Danhmuctruyen::orderBy('id', 'DESC')->get();
        $truyen = Truyen::with('danhmuctruyen','theloai')->where('slug_truyen', $slug)->where('kichhoat', 0)->first();

        $chapter = Chapter::with('truyen')->orderBy('id', 'ASC')->where('truyen_id', $truyen->id)->get();

        $chapter_dau = Chapter::with('truyen')->orderBy('id', 'ASC')->where('truyen_id', $truyen->id)->first();

        $chapter_moinhat = Chapter::with('truyen')->orderBy('id', 'DESC')->where('truyen_id', $truyen->id)->first();

        $cungdanhmuc = Truyen::with('danhmuctruyen', 'theloai')->where('danhmuc_id', $truyen->danhmuctruyen->id)->whereNotIn('id', [$truyen->id])->get();

        return view('pages.truyen')->with(compact('danhmuc', 'truyen', 'chapter', 'cungdanhmuc', 'chapter_dau', 'theloai', 'slide_truyen', 'chapter_moinhat'));
    }
    public function xemsach($slug){
        $theloai = Theloai::orderBy('id', 'DESC')->get();
        $danhmuc = Danhmuctruyen::orderBy('id', 'DESC')->get();
        $truyen = Truyen::with('danhmuctruyen','theloai')->where('slug_truyen', $slug)->where('kichhoat', 0)->first();
        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();

        $slide_sach = Sach::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();
        $sach = Sach::with('theloai')->where('slug_sach', $slug)->where('kichhoat', 0)->first();


        $cungtheloai = Sach::with('theloai')->where('theloai_id', $sach->theloai_id)->whereNotIn('id', [$sach->id])->get();

        return view('pages.sach')->with(compact('theloai', 'slide_sach', 'sach', 'cungtheloai', 'slide_truyen', 'danhmuc', 'truyen'));
    }
    public function xemchapter($slug){
        $theloai = Theloai::orderBy('id', 'DESC')->get();

        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();
        $danhmuc = Danhmuctruyen::orderBy('id', 'DESC')->get();

        $truyen = Chapter::where('slug_chapter', $slug)->first();

        //breadcrumb
        $truyen_breadcrumb = Truyen::with('danhmuctruyen', 'theloai')->where('id', $truyen->truyen_id)->first();

        //end breadcrumb

        $chapter = Chapter::with('truyen')->where('slug_chapter', $slug)->where('truyen_id', $truyen->truyen_id)->first();
        $all_chapter = Chapter::with('truyen')->orderBy('id', 'ASC')->where('truyen_id', $truyen->truyen_id)->get();

        $next_chapter = Chapter::where('truyen_id', $truyen->truyen_id)->where('id', '>', $chapter->id)->min('slug_chapter');

        $previous_chapter = Chapter::where('truyen_id', $truyen->truyen_id)->where('id', '<', $chapter->id)->max('slug_chapter');

        $max_id = Chapter::where('truyen_id', $truyen->truyen_id)->orderBy('id', 'DESC')->first();

        $min_id = Chapter::where('truyen_id', $truyen->truyen_id)->orderBy('id', 'ASC')->first();

        return view('pages.chapter')->with(compact('danhmuc', 'chapter','truyen', 'all_chapter', 'next_chapter', 'previous_chapter', 'max_id', 'min_id', 'theloai', 'truyen_breadcrumb', 'slide_truyen'));

    }
    public function timkiem(){
        $theloai = Theloai::orderBy('id', 'DESC')->get();

        $slide_truyen = Truyen::orderBy('id', 'DESC')->where('kichhoat', 0)->take(8)->get();
        $danhmuc = Danhmuctruyen::orderBy('id', 'DESC')->get();

        $tukhoa = $_GET['tukhoa'];
        $truyen = Truyen::with('danhmuctruyen', 'theloai')->where('tentruyen', 'LIKE', '%'.$tukhoa.'%')->orWhere('tacgia', 'LIKE', '%'.$tukhoa.'%')->orWhere('tendichgia', 'LIKE', '%'.$tukhoa.'%')->orWhere('quocgia', 'LIKE', '%'.$tukhoa.'%')->get();
        
         return view('pages.timkiem')->with(compact('danhmuc','truyen', 'theloai', 'slide_truyen', 'tukhoa'));

    }
   
}
 