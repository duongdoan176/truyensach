<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Danhmuctruyen;

class DanhmucController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $danhmuctruyen = Danhmuctruyen::orderBy('id', 'DESC')->get();
        return view('admin.danhmuctruyen.index')->with(compact('danhmuctruyen'));  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.danhmuctruyen.create');
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
                'tendanhmuc' => 'required|unique:danhmuc|max:255',
                'slug_danhmuc' => 'required|unique:danhmuc|max:255',
                'mota' => 'required|max:255',
                'kichhoat' => 'required',
 
            ],
            [
                'tendanhmuc.unique' => 'Tên danh mục đã tồn tại, vui lòng điền tên khác',
                'slug_danhmuc.unique' => 'Tên danh mục đã tồn tại, vui lòng điền slug khác',
                'tendanhmuc.required' => 'Nhập tên danh mục',
                'mota.required' => 'Điền mô tả',
            ]
    );
        $danhmuctruyen = new Danhmuctruyen();
        $danhmuctruyen->tendanhmuc = $data['tendanhmuc'];
        $danhmuctruyen->slug_danhmuc = $data['slug_danhmuc'];
        $danhmuctruyen->mota = $data['mota'];
        $danhmuctruyen->kichhoat = $data['kichhoat'];
        $danhmuctruyen->save();
        return redirect()->back()->with('status', 'Thêm danh mục thành công');
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
        $danhmuc = Danhmuctruyen::find($id);
        return view('admin.danhmuctruyen.edit')->with(compact('danhmuc'));  

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
                'tendanhmuc' => 'required|max:255',
                'slug_danhmuc' => 'required|max:255',
                'mota' => 'required|max:255',
                'kichhoat' => 'required',
 
            ],
            [
                'tendanhmuc.required' => 'Nhập tên danh mục',
                'slug_danhmuc.required' => 'Nhập slug danh mục',
                'mota.required' => 'Điền mô tả',
            ]
    );
        $danhmuctruyen = Danhmuctruyen::find($id);
        $danhmuctruyen->tendanhmuc = $data['tendanhmuc'];
        $danhmuctruyen->slug_danhmuc = $data['slug_danhmuc'];
        $danhmuctruyen->mota = $data['mota'];
        $danhmuctruyen->kichhoat = $data['kichhoat'];
        $danhmuctruyen->save();
        return redirect()->back()->with('status', 'Cập nhật danh mục thành công');
    

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Danhmuctruyen::find($id)->delete();
        return redirect()->back()->with('status', 'Xóa danh mục thành công');
    }
}
