@extends('app')
 
       
@section('content')
 

    <div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default  @if($errors->has()) has-error @endif ">
                                    <div class="panel-heading">
                                    <h3>Place Order </h3>
                                    </div>
                            
                                    {{ Session::get('message') }}
                                    {!! Form::open(array('url' => '/orders/store')) !!}
                                                 
                                            <div class="form-group">
                                                {!! Form::label('Agent Name') !!}<a class="control-label"> {{$errors->first('card', ':message') }} </a><br />
                                                {!! Form::select('card', 
                                                ( [Request::old('card_id') => Request::old('card') ]+ $agents ), 
                                                null, 
                                                ['class' => 'form-control']) !!}
                                            </div>

                                            <div class="form-group">
                                                <label for="card_no">Sender</label><a class="control-label"> {{ $errors->first('card_no', ':message') }} </a>
                                                <input type="text" name="card_no" class="form-control" id="card_no" value="{{ Request::old('card_no') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="points">Amount</label><a class="control-label">  {{$errors->first('points', ':message') }}</a>
                                                <input type="text" name="points" class="form-control" id="points" value="{{ Request::old('points') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="note">Note</label><a class="control-label">  {{$errors->first('note', ':message') }} </a>
                                                <textarea class="form-control" name="note" id="" cols="30" rows="10"> {{ Request::old('note') }} </textarea>
                                            </div>

                                            <button type="submit" name="" class="btn btn-primary" >Submit</button>
                                    {!! Form::close() !!}
                                    
                                    
                        </div>
                    </div>
            </div>
    </div>
@endsection
 