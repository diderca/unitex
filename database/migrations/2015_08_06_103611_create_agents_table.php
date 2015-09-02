<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAgentsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('agents', function(Blueprint $table)
		{
                        $table->engine = 'InnoDB';
			$table->increments('id');
			$table->string('name', 80);
			$table->string('company', 80);
			$table->string('company_id', 15);
			$table->string('phone', 80);
			$table->integer('design_id');
			$table->string('balance', 80);
			$table->string('note', 80);
			$table->softDeletes();
			$table->timestamps();
                        $table->unique('id');
                        $table->unique('design_id');
                        
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('agents');
	}

}
