<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Theloai;
use App\Models\Sach;


class SachController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list_sach = Sach::with('theloai')->orderBy('id', 'DESC')->get();
         return view('admin.sach.index')->with(compact('list_sach'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $theloai = Theloai::orderBy('id', 'DESC')->get();
        return view('admin.sach.create')->with(compact('theloai'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
        {
             $data = $request->validate(
                [
                    'tensach' => 'required|unique:sach|max:255',
                    'slug_sach' => 'required|unique:sach|max:255',
                    'tomtat' => 'required',
                    'tacgia' => 'required',
                    'hinhanh' => 'required|image|mimes:jpg, png, jpeg, gif, svg|dimensions: min_width=100, min_height=100, max_width=1000, max_height=1000',
                    'kichhoat' => 'required',
                    'noidung' =>'required',
                    'theloai' =>'required', 
     
                ],
                [
                    'tensach.unique' => 'Tên truyện đã tồn tại, vui lòng điền tên khác',
                    'slug_sach.unique' => 'Slug đã tồn tại, vui lòng điền slug khác',
                    'tensach.required' => 'Nhập tên sách',
                    'tomtat.required' => 'Điền tóm tắt',
                    'tacgia.required' => 'Điền tác giả',
                    'hinhanh.required' => 'Chọn file ảnh',
                    'noidung.required' => 'Điền nội dung',
                ]
        );
            $sach = new Sach();
            $sach->tensach = $data['tensach'];
            $sach->tacgia = $data['tacgia'];
            $sach->slug_sach = $data['slug_sach'];
            $sach->tomtat = $data['tomtat'];
            $sach->kichhoat = $data['kichhoat'];
            $sach->noidung = $data['noidung'];
            $sach->theloai_id = $data['theloai'];


        $get_image = $request->hinhanh; 
        $path = 'public/uploads/truyen/';
        $get_name_image = $get_image->getClientOriginalName();
        $name_image = current(explode('.', $get_name_image));
        $new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
        $get_image->move($path, $new_image);
        $sach->hinhanh = $new_image;
        $sach->save(); 
        return redirect()->back()->with('status', 'Thêm sách thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $theloai = Theloai::orderBy('id', 'DESC')->get();
        $sach = Sach::find($id);
        return view('admin.sach.edit')->with(compact('sach',  'theloai')); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->validate(
            [
                'tensach' => 'required|max:255',
                'slug_sach' => 'required|max:255',
                'tomtat' => 'required',
                'tacgia' => 'required',
                'kichhoat' => 'required',
                'noidung' =>'required',
                'theloai' =>'required',
 
            ],
            [
                'tacgia.required' => 'Điền tác giả',
                
                'tensach.required' => 'Nhập tên truyện',
                'tomtat.required' => 'Điền mô tả',
            ]
    );
        $sach = Sach::find($id);
        $sach->tensach = $data['tensach'];
        $sach->slug_sach = $data['slug_sach'];
        $sach->tomtat = $data['tomtat'];
        $sach->kichhoat = $data['kichhoat'];
        $sach->noidung = $data['noidung'];
        $sach->theloai_id = $data['theloai'];
        $sach->tacgia = $data['tacgia'];

        $get_image = $request->hinhanh;
        if($get_image){ 
            $path = 'public/uploads/truyen/'.$sach->hinhanh;
            if(file_exists($path)){
            unlink($path);
        }   
        $path = 'public/uploads/truyen/';
        $get_name_image = $get_image->getClientOriginalName();
        $name_image = current(explode('.', $get_name_image));
        $new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
        $get_image->move($path, $new_image);
        $truyen->hinhanh = $new_image;
    }
        $sach->save(); 
        return redirect()->back()->with('status', 'Cập nhật sách thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $sach = Sach::find($id);
        $path = 'public/uploads/truyen/'.$sach->hinhanh;
        if(file_exists($path)){
            unlink($path);
        }   
        Sach::find($id)->delete();
        return redirect()->back()->with('status', 'Xóa sách thành công');
    }
}
