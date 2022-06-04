<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Giohang;

class Giohangcontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $giohang = Giohang::orderBy('id', 'DESC');
        return view('admin.giohang.index')->with(compact('giohang'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         return view('admin.giohan.create');
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
                'name' => 'required|unique:danhmuc|max:255',
                'email' => 'required|unique:danhmuc|max:255',
                'tensach' => 'required|max:255',
                'ngaymuon' => 'required|max:255',
                'hantra' => 'required|max:255',
                'giamuon' => 'required|max:255',
                'trangthai' => 'required',
 
            ],
            [
                'name.unique' => 'Tên danh mục đã tồn tại, vui lòng điền tên khác',
                'email.unique' => 'Tên danh mục đã tồn tại, vui lòng điền slug khác',
                'tensach.required' => 'Nhập tên danh mục',
                'giamuon.required' => 'Điền mô tả',
            ]
    );
        $giohang = new Giohang();
        $giohang->name = $data['name'];
        $giohang->email = $data['email'];
        $giohang->ngaymuon = $data['ngaymuon'];
        $giohang->hantra = $data['hantra'];
        $giohang->giamuon = $data['giamuon'];
        $giohang->trangthai = $data['trangthai '];
        $giohang->save();
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
