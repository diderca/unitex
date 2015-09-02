<?php namespace App\Http\Controllers;
/*
|--------------------------------------------------------------------------
|    Agent Controller 
|--------------------------------------------------------------------------
|
|    Developer   :   Sahadat Hussein
|    CopyRight   :   This Code is not OpenSource. For permission please contact at shdcse@gmail.com
|    LinkedIn    :   http://lnkd.in/ZCzpw7
|    Facebook    :   https://www.facebook.com/diderca
|*/ 
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Model\Agents;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Validator;

class Agent  extends Controller {
    
    public $restful = true;

    //Add new entry Form Viewer
    public function create() {
        return view('agents/new');
    }

    //List All Current Entry In The Table.
    public function view() {
        $agent = Agents::all();
        return view('agents/view')->with('agents', $agent);
    }

    //Save POST Controller
    public function save(Request $request) {
        
        
        $validation = Agents::validate($request->all());

		if ($validation->fails()) {
			return redirect('agents/new')->withErrors($validation)->withInput();
		} else {
        
        
                        $agent = new Agents();
                        $agent->name = $request->input('name');
                        $agent->company = $request->input('company');
                        $agent->phone = $request->input('phone');
                        $agent->design_id = $request->input('design_id');
                        $agent->login_link = $request->input('login_link');
                        $agent->note = $request->input('note');
                        $agent->save();
                        Session::flash('message', 'Agent info save successfully');
                        return redirect('/agents');
                }
    }

    //Delete POST Controller
    public function delete($id) {
        Agents::find($id)->delete();
        return redirect('/agents');
    }

    //Edit Entry Form Loader
    public function edit($id) {
        $agent = Agents::find($id);
        return view('agents/edit')->with('agent', $agent);
    }

    //Save Updates POST Controller
    public function update(Request $request) {
        $validation = Agents::validate($request->all());
                        $id = $request->input('id');
                        $agent = Agents::find($id);
		if ($validation->fails()) {
			return redirect('agents/edit/'.$id)->withErrors($validation)->withInput();
		} else {
        
        
                        $agent->name = $request->input('name', 50);
                        $agent->company = $request->input('company', 50);
                        $agent->phone = $request->input('phone', 50);
                        $agent->design_id = $request->input('design_id');
                        $agent->login_link = $request->input('login_link');
                        $agent->note = $request->input('note');
                        $agent->save();
                        return redirect('/agents');
                }
    }

}
