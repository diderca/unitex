<?php namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use Validator;

class Orders extends Model {

		public static $rules = array(
		'card_no'=>'required|min:5| max:25',
		'points'=>'required|min:1 | max:15',
		'note'=>'required|min:10' 
	);

	public static function validate($data) {
		return  Validator::make($data, static::$rules);
	}

}
