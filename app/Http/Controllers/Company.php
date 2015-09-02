<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Validator;
use App\Model\Companies;
use BD;

class Company extends Controller {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
                $companies = Companies::all();
                return view('companies/view')->with('companies', $companies);
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
                    $countries = \DB::table('country')->lists('name', 'id'); 
		   return view('companies/new')->with('countries', $countries);
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store( Request $request )
	{
		$validation = Companies::validate($request->all());

		if ($validation->fails()) {
			return redirect('companies/new')->withErrors($validation)->withInput();
		} else {
        
        
                        $companies = new Companies();
                        $companies->name = $request->input('name');
                        $companies->city = $request->input('city');
                        $companies->country_id = $request->input('country');
                        $companies_country= \DB::table('country')->where('id', '=', $request->input('country') )->get();
                        $companies->country = $companies_country[0]->name;
                        $companies->email = $request->input('email');
                        $companies->phone = $request->input('phone');
                        $companies->balance = $request->input('balance');
                        $companies->address = $request->input('address');
                        $companies->save();
                        Session::flash('message', 'Company info save successfully');
                        return redirect('/companies');
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
                $companies = Companies::find($id);
                $countries = \DB::table('country')->lists('name', 'id'); 
                          

                return view('companies/edit')->with('companies', $companies)
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
                $companies = Companies::find($id);
                
                $validation = Companies::validate($request->all());
		if ($validation->fails()) {
			return redirect('companies/edit/'.$id)->withErrors($validation)->withInput();
		} else {
        
        
                         
                        $companies->name = $request->input('name');
                        $companies->city = $request->input('city');
                        $companies->country_id = $request->input('country');
                        $companies_country= \DB::table('country')->where('id', '=', $request->input('country') )->get();
                        $companies->country = $companies_country[0]->name;
                        $companies->email = $request->input('email');
                        $companies->phone = $request->input('phone');
                        $companies->balance = $request->input('balance');
                        $companies->address = $request->input('address');
                        $companies->save();
                        Session::flash('message', 'Company info save successfully');
                        return redirect('/companies');
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
                Companies::find($id)->delete();
                return redirect('/companies');	}

        }
