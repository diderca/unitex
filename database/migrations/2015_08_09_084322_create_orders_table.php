<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
 
            Schema::create('orders', function(Blueprint $table)
		{
                        $table->engine = 'InnoDB';
                        $table->increments('id');
			$table->bigInteger('uid');
			$table->string('card_id', 15);
			$table->string('card_no', 80);
			$table->bigInteger('points');
			$table->string('note', 80);
			$table->softDeletes();
			$table->timestamps();
                        $table->unique('id');
                        $table->index('uid','card_no');
		});

	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('orders');
	}

}
