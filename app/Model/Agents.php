<?php namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Validator;



class Agents extends Model {

	public static $rules = array(
		'name'=>'required|min:10',
		'phone'=>'required|alpha_num|min:10| max:15',
		'design_id'=>'required|alpha_num|min:1 | max:10',
		'note'=>'required|min:10',
		'login_link'=>'required|min:20',
		'company'=>'required|min:10'
	);

	public static function validate($data) {
		return  Validator::make($data, static::$rules);
	}

}
