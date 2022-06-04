<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Giohang;




class GiohangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.giohang.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.giohang.create');
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
                
            ]
    );

        $giohang = new Giohang();   
        $giohang->name = $data['name'];
        $giohang->email = $data['email'];
        $giohang->tensach = $data['tensach'];
        $giohang->ngaymuon = $data['ngaymuon'];
        $giohang->hantra = $data['hantra'];
        $giohang->gia = $data['giamuon'];
        $giohang->save();
        return redirect()->back()->with('status', 'Muon truyen thành công');
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
