<?php
use App\User;
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|    Developer   :   Sahadat Hussein
|    CopyRight   :   This Code is not OpenSource. For permission please contact at shdcse@gmail.com
|    LinkedIn    :   http://lnkd.in/ZCzpw7
|    Facebook    :   https://www.facebook.com/diderca
| 
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
//Welcome Home
Route::get('/',  function() {
        return View::make('welcome');
    });

//On register 
Route::get('/register', function() {
        return View::make('auth/register');
    });

//On Click/Post Register
Route::post('auth/register', function() {
    
            $validation = User::validate(Input::all());

		if ($validation->fails()) {
			return redirect('/register')->withErrors($validation)->withInput();
		} else {
    
    
                    $user = new User;
                    $user->name = Input::get('name');
                    $user->email = Input::get('email');
                    $user->remember_token = Input::get('_token');
                    $user->password = Hash::make(Input::get('password'));
                    $user->save();
                    return Redirect::intended('/login');
                }
    });

//On login 
Route::get('/login', function() {
        return View::make('auth/login');
    });

//On Logon Route to intended or Cards page.
Route::post('auth/login', function() {
        $credentials = Input::only('email', 'password');
            if (Auth::attempt($credentials)) {
                return Redirect::intended('/orders');
            }
        return Redirect::to('/login');
    });


//On Forgot Password action
Route::get('/password/email', function() {
        return View::make('emails/password');
    });


//On Logout Route to Login page
Route::get('/auth/logout', function() {
        Auth::logout();
        return View::make('auth/login');
    });
 








//Companies Route
Route::get('/companies',                array('before' => 'auth','uses' => 'Company@index'));
Route::get('/companies/new',            array('before' => 'auth','uses' => 'Company@create'));
Route::post('/companies/store',     array('before' => 'auth','uses' => 'Company@store'));
Route::post('/companies/show/{id}',     array('before' => 'auth','uses' => 'Company@show'));
Route::get('/companies/edit/{id}',      array('before' => 'auth','uses' => 'Company@edit'));
Route::post('/companies/update',   array('before' => 'auth','uses' => 'Company@update'));
Route::get('/companies/delete/{id}',    array('before' => 'auth','uses' => 'Company@destroy'));

//Agents Route
Route::get('/agents',                array('before' => 'auth','uses' => 'Agent@view'));
Route::get('/agents/new',            array('before' => 'auth','uses' => 'Agent@create'));
Route::post('/agents/save',     array('before' => 'auth','uses' => 'Agent@save'));
Route::get('/agents/edit/{id}',      array('before' => 'auth','uses' => 'Agent@edit'));
Route::post('/agents/update',   array('before' => 'auth','uses' => 'Agent@update'));
Route::get('/agents/delete/{id}',    array('before' => 'auth','uses' => 'Agent@delete'));


//Senders Route
Route::get('/senders',                array('before' => 'auth','uses' => 'Sender@index'));
Route::get('/senders/new',            array('before' => 'auth','uses' => 'Sender@create'));
Route::post('/senders/store',     array('before' => 'auth','uses' => 'Sender@store'));
Route::post('/senders/show/{id}',     array('before' => 'auth','uses' => 'Sender@show'));
Route::get('/senders/edit/{id}',      array('before' => 'auth','uses' => 'Sender@edit'));
Route::post('/senders/update',   array('before' => 'auth','uses' => 'Sender@update'));
Route::get('/senders/delete/{id}',    array('before' => 'auth','uses' => 'Sender@destroy'));

//Orders Route
Route::get('/orders',                array('before' => 'auth','uses' => 'Order@index'));
Route::get('/orders/new',            array('before' => 'auth','uses' => 'Order@create'));
Route::post('/orders/store',     array('before' => 'auth','uses' => 'Order@store'));
Route::post('/orders/show/{id}',     array('before' => 'auth','uses' => 'Order@show'));
Route::get('/orders/edit/{id}',      array('before' => 'auth','uses' => 'Order@edit'));
Route::post('/orders/update',   array('before' => 'auth','uses' => 'Order@update'));
Route::get('/orders/delete/{id}',    array('before' => 'auth','uses' => 'Order@destroy'));



//Filters

Route::filter('before', function() {
        // Do stuff before every request to your application...
    });

Route::filter('after', function($response) {
        // Do stuff after every request to your application...
    });

Route::filter('csrf', function() {
        if (Request::forged())
            return Response::error('500');
    });

Route::filter('auth', function() {
        if (Auth::guest())
            return Redirect::to('login');
    });
