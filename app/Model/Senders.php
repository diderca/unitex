<?php namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Validator;

class Senders extends Model {

	public static $rules = array(
		'name'=>'required|min:10',
		'city'=>'required|min:5',
		'country'=>'required|min:1',
		'phone'=>'required|min:10| max:15',
		'email'=>'required|email',
		'balance'=>'required|max:10',
		'address'=>'required|min:20'
	);
	public static function validate($data) {
		return  Validator::make($data, static::$rules);
	}


}
