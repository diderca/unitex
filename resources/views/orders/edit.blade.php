@extends('app')
 
       
@section('content')
 

    <div class="container">
        
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default  ">
                                    <div class="panel-heading">
                                     <h3> Edit Order</h3>

                                    <?php 
                                    //if (Request::old('card')){ $order->card=Request::old('card'); }
                                    if (Request::old('card_no')){ $order->card_no=Request::old('card_no'); }
                                    if (Request::old('points')){ $order->points=Request::old('points'); }
                                    if (Request::old('note')){ $order->note=Request::old('note'); }
                                    ?>
                                    </div>
                                        {!! Form::open(array('url' => '/orders/update')) !!}
                                                <div class="form-group ">
                                                    {!! Form::label('Agent Name') !!}<a class="control-label"> {{$errors->first('card', ':message') }} </a><br />
                                                    {!! Form::select('card', 
                                                    ([$order->card_id => $order->card ] + $agents ), 
                                                    null, 
                                                    ['class' => 'form-control']) !!}
                                                    <input type="hidden" name="id" class="form-control" id="id" value="{{ $order->id }}">

                                                </div>
                                                <div class="form-group">
                                                    <label for="card_no">Sender</label> <a class="control-label">  {{$errors->first('card_no', ':message') }}</a> 
                                                    <input type="text" name="card_no" class="form-control" id="card_no" value="{{ $order->card_no }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="points">Amount</label><a class="control-label">  {{$errors->first('points', ':message') }}</a> 
                                                    <input type="text" name="points" class="form-control" id="points" value="{{ $order->points }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="note">My Note</label><a class="control-label">  {{$errors->first('note', ':message') }} </a> 
                                                    <textarea class="form-control" name="note" id="" cols="30" rows="10">{{ $order->note }}</textarea>
                                                </div>

                                                <button type="submit" name="" class="btn btn-primary">Submit</button>
                                        {!! Form::close() !!}
                        </div>
                </div>
        </div>
    </div>
@endsection
