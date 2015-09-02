<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSendersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('senders', function(Blueprint $table)
		{
                        $table->engine = 'InnoDB';
			$table->increments('id');
                        $table->string('name', 80);
                        $table->string('phone', 80);
                        $table->string('city', 50);
                        $table->string('country_id', 10);
                        $table->string('country', 50);
                        $table->string('address', 100);
                        $table->string('balance', 80);
                        $table->string('email', 80);
			$table->timestamps();
		 
                });
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('senders');
	}

}
