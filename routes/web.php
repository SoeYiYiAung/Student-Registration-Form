<?php

use App\Http\Controllers\AcademicYearController;
use App\Http\Controllers\ProgramController;
use App\Http\Controllers\StudentRegisterController;
use App\Http\Controllers\StudentRegisterFormController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/registerForm', function () {
    return view('registerForm');
});

// Route::get('registerForm','RegisterFormController@getData')->name('registerForm');
Route::resource('registerForm',StudentRegisterFormController::class);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['prefix'=>'admin'],function(){
    Route::view('/','admin.index')->name('admin.index');
    Route::resource('academic_year',AcademicYearController::class);
    Route::resource('program',ProgramController::class);
    Route::resource('student_register',StudentRegisterController::class);
});
