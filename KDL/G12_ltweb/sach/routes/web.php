<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DanhmucController;
use App\Http\Controllers\TruyenController;
use App\Http\Controllers\ChapterController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\TheloaiController;
use App\Http\Controllers\SachController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GiohangController;





/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [IndexController::class, 'home']);
Route::get('/danh_muc/{slug}', [IndexController::class, 'danhmuc']);
Route::get('/xem_truyen/{slug}', [IndexController::class, 'xemtruyen']);
Route::get('/xem_sach/{slug}', [IndexController::class, 'xemsach']);

Route::get('/xem_chapter/{slug}', [IndexController::class, 'xemchapter']);
Route::get('/the_loai/{slug}', [IndexController::class, 'theloai']);
Route::get('/tim_kiem', [IndexController::class, 'timkiem']);



Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');



Route::resource('/danhmuc', DanhmucController::class);
Route::resource('/truyen', TruyenController::class);
Route::resource('/chapter', ChapterController::class);
Route::resource('/theloai', TheloaiController::class);
Route::resource('/sach', SachController::class);

Route::resource('/user', UserController::class);
Route::resource('/giohang', GiohangController::class);


