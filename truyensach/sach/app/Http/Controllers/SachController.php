<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
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
        $list_sach = Sach::orderBy('id', 'DESC')->get();
        return view('admin.sach.index')->with(compact('list_sach'));  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
        return view('admin.sach.create');
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
                    
                    'email' => 'required|max:255',
                    'tensach' => 'required',
                    'ngaymuon' => 'required',
                    
                    'hantra' => 'required',
                    'giamuon' =>'required',
                    'trangthai'=>'required',
                    
     
                ],
                
        );
            $sach = new Sach();
            $sach->email = $data['email'];
            $sach->tensach = $data['tensach'];
            $sach->ngaymuon = $data['ngaymuon'];
            $sach->hantra = $data['hantra'];
            $sach->giamuon = $data['giamuon'];
            $sach->trangthai = $data['trangthai'];


      
        $sach->save(); 
        return redirect()->back()->with('status', 'Mượn sách thành công');
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
       $sach = Sach::find($id);
        return view('admin.sach.edit')->with(compact('sach')); 
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
                    
                    'hantra' => 'required',
                    'giamuon' =>'required',
                    'trangthai'=>'required',
                    
     
                ],
        );
            $sach = Sach::find($id);
            $sach->hantra = $data['hantra'];
            $sach->giamuon = $data['giamuon'];
            $sach->trangthai = $data['trangthai'];
            $sach->save(); 
        return redirect()->back()->with('status', 'cập nhật đơn hàng thành công');
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
       Sach::find($id)->delete();
    return redirect()->back()->with('status', 'Xóa thành công');
    }
}
