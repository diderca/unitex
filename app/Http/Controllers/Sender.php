<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Validator;
use App\Model\Senders;
use BD;

class Sender extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
                $senders = Senders::all();
                return view('senders/view')->with('senders', $senders);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
                    $countries = \DB::table('country')->lists('name', 'id'); 
		   return view('senders/new')->with('countries', $countries);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store( Request $request )
	{
		$validation = Senders::validate($request->all());

		if ($validation->fails()) {
			return redirect('senders/new')->withErrors($validation)->withInput();
		} else {
        
        
                        $senders = new Senders();
                        $senders->name = $request->input('name');
                        $senders->city = $request->input('city');
                        $senders->country_id = $request->input('country');
                        $senders_country= \DB::table('country')->where('id', '=', $request->input('country') )->get();
                        $senders->country = $senders_country[0]->name;
                        $senders->email = $request->input('email');
                        $senders->phone = $request->input('phone');
                        $senders->balance = $request->input('balance');
                        $senders->address = $request->input('address');
                        $senders->save();
                        Session::flash('message', 'Sender info save successfully');
                        return redirect('/senders');
                }
         }
                

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id) {
                $senders = Senders::find($id);
                $countries = \DB::table('country')->lists('name', 'id'); 
                          

                return view('senders/edit')->with('senders', $senders)
                                             ->with('countries', $countries);
            }

    /**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update( Request $request )
	{
                $id = $request->input('id');
                $senders = Senders::find($id);
                
                $validation = Senders::validate($request->all());
		if ($validation->fails()) {
			return redirect('senders/edit/'.$id)->withErrors($validation)->withInput();
		} else {
        
        
                         
                        $senders->name = $request->input('name');
                        $senders->city = $request->input('city');
                        $senders->country_id = $request->input('country');
                        $senders_country= \DB::table('country')->where('id', '=', $request->input('country') )->get();
                        $senders->country = $senders_country[0]->name;
                        $senders->email = $request->input('email');
                        $senders->phone = $request->input('phone');
                        $senders->balance = $request->input('balance');
                        $senders->address = $request->input('address');
                        $senders->save();
                        Session::flash('message', 'Company info save successfully');
                        return redirect('/senders');
                }
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
                Senders::find($id)->delete();
                return redirect('/senders');	}

        }
