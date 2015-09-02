<?php namespace App\Http\Controllers;  
/*
|--------------------------------------------------------------------------
|    Orders Controllr 
|--------------------------------------------------------------------------
|
|    Developer   :   Sahadat Hussein
|    CopyRight   :   This Code is not OpenSource. For permission please contact at shdcse@gmail.com
|    LinkedIn    :   http://lnkd.in/ZCzpw7
|    Facebook    :   https://www.facebook.com/diderca
|*/ 
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Model\Orders;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Validator;
use BD;

class Order extends Controller {
    
    public $restful = true;



/**
     * Display a listing of the resource.
     *
     * @return Response
*/
    public function index() {
        
            //$uid= \DB::table('users')->where('id', '=', $request->input('card') )->get();
            $orders =  \DB::table('orders') 
            ->join('agents', 'orders.card_id', '=', 'agents.id'  )
            ->select('orders.id','orders.card_no','orders.points', 'orders.note', 'agents.name', 'agents.company_id','agents.company', 'agents.phone', 'agents.login_link')
            ->where('orders.uid', '=', \Auth::user()->id )
            ->get();
         
        return view('orders/view')->with('orders', $orders);
    }

/**
 * Show the form for creating a new resource.
 *
 * @return Response
 */
    public function create() {
        
        $agents = \DB::table('agents')->lists('name', 'id'); 
        return view('orders/new')->with('agents', $agents);
    }
        
        
/**
 * Store a newly created resource in storage.
 *
 * @return Response
 */
	public function store( Request $request )
	{ 
        
        $validation = Orders::validate($request->all());

		if ($validation->fails()) {
			return redirect('orders/new')->withErrors($validation)->withInput();
		} else {
        
        
                        $card = new Orders();
                        $card->card_id = $request->input('card');
                        $card_name= \DB::table('agents')->where('id', '=', $request->input('card') )->get();
                        $card->card = $card_name[0]->name;
                        $card->card_no = $request->input('card_no');
                        $card->points = $request->input('points');
                        $card->note = $request->input('note');
                        $card->uid = \Auth::user()->id;
                        
                        
                        $card->save();
                        Session::flash('message', 'Card info save successfully');
                        return redirect('/orders');
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
            
        $order = Orders::find($id);
        $agents = \DB::table('agents')->lists('name', 'id'); 
        return view('orders/edit')->with('order', $order)->with('agents', $agents);
    }

/**
* Update the specified resource in storage.
*
* @param  int  $id
* @return Response
*/
	public function update( Request $request ) {
   
        
            $validation = Orders::validate($request->all());
                        $id = $request->input('id');
                        $order = Orders::find($id);

		if ($validation->fails()) {
			return redirect('orders/edit/'.$id)->withErrors($validation)->withInput();
		} else {
        
 
                        $order->card_id = $request->input('card');
                        $card_name= \DB::table('agents')->where('id', '=', $request->input('card') )->get();
                        $order->card = $card_name[0]->name;
                        $order->card_no = $request->input('card_no');
                        $order->points = $request->input('points');
                        $order->note = $request->input('note');
                        $order->save();
                        Session::flash('message', 'Order saved successfully');
                        return redirect('/orders');
                }
     }
    
        //Delete POST Controller
    public function destroy($id) {
        Orders::find($id)->delete();
        return redirect('/orders');
    }

}
