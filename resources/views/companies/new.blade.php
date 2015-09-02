@extends('app')
 
       
@section('content')
 

    <div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default  @if($errors->has()) has-error @endif ">
                                    <div class="panel-heading">
                                    <h3>Add Fund </h3>
                                    </div>
                            
                                    {{ Session::get('message') }}
                                    {!! Form::open(array('url' => '/companies/store')) !!}
                                            <div class="form-group">
                                                <label for="name">Company Name</label><a class="control-label"> {{$errors->first('name', ':message') }} </a>
                                                <input type="text" name="name" class="form-control" id="name" value="{{ Request::old('name') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="city">City</label><a class="control-label"> {{$errors->first('city', ':message') }} </a>
                                                <input type="text" name="city" class="form-control" id="city" value="{{ Request::old('city') }}">
                                            </div>
                                                <div class="form-group">
                                                    {!! Form::label('Country') !!}<br />
                                                    {!! Form::select('country', 
                                                    ([Request::old('country_id') => Request::old('country') ] + $countries ), 
                                                    null, 
                                                    ['class' => 'form-control']) !!}
                                                </div>
                                            <div class="form-group">
                                                <label for="email">Email</label><a class="control-label"> {{ $errors->first('email', ':message') }} </a>
                                                <input type="text" name="email" class="form-control" id="email" value="{{ Request::old('email') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="phone">Phone Number</label><a class="control-label">  {{$errors->first('phone', ':message') }}</a>
                                                <input type="text" name="phone" class="form-control" id="phone" value="{{ Request::old('phone') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="link">Balance</label><a class="control-label"> {{$errors->first('balance', ':message') }}</a>
                                                <input type="text" name="balance" class="form-control" id="link" value="{{ Request::old('balance') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="address">Full Address</label><a class="control-label">  {{$errors->first('address', ':message') }} </a>
                                                <textarea class="form-control" name="address" id="" cols="10" rows="5"> {{ Request::old('address') }} </textarea>
                                            </div>

                                            <button type="submit" name="" class="btn btn-primary" >Submit</button>
                                    {!! Form::close() !!}
                                    
                                    
                        </div>
                    </div>
            </div>
    </div>
@endsection
 