@extends('app')
 
       
@section('content')
 

    <div class="container">
        
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default  ">
                                    <div class="panel-heading">
                                        <h3> Edit Funder</h3>
                                    <?php 
                                    if (Request::old('name')){ $companies->name=Request::old('name'); }
                                    if (Request::old('city')){ $companies->company=Request::old('city'); }
                                    if (Request::old('country')){ $companies->company=Request::old('country'); }
                                    if (Request::old('email')){ $companies->phone=Request::old('email'); }
                                    if (Request::old('phone')){ $companies->phone=Request::old('phone'); }
                                    if (Request::old('balance')){ $companies->balance=Request::old('balance'); }
                                    if (Request::old('address')){ $companies->country=Request::old('address'); }
                                    ?>
                                    </div>

                                        {!! Form::open(array('url' => '/companies/update')) !!}
                                                <div class="form-group ">
                                                    <label for="name"> Name </label><a class="control-label">{{$errors->first('name', ':message') }}</a>
                                                    <input type="text" name="name" class="form-control" id="name" value="{{ $companies->name }}">
                                                    <input type="hidden" name="id" class="form-control" id="id" value="{{ $companies->id }}">

                                                </div>
                                                <div class="form-group">
                                                    <label for="city">City</label> <a class="control-label">  {{$errors->first('city', ':message') }}</a> 
                                                    <input type="text" name="city" class="form-control" id="phone" value="{{ $companies->city }}">
                                                </div>

                                                <div class="form-group">
                                                    {!! Form::label('Country') !!}<br />
                                                    {!! Form::select('country', 
                                                    ( [$companies->country_id=> $companies->country]+ $countries ), 
                                                    null, 
                                                    ['class' => 'form-control']) !!}
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email</label> <a class="control-label"> {{$errors->first('email', ':message') }} </a>
                                                    <input type="text" name="email" class="form-control" id="email" value="{{ $companies->email }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="phone">Phone Number</label> <a class="control-label">  {{$errors->first('phone', ':message') }}</a> 
                                                    <input type="text" name="phone" class="form-control" id="phone" value="{{ $companies->phone }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="balance">Balance </label><a class="control-label"> {{$errors->first('balance', ':message') }}</a>  
                                                    <input type="text" name="balance" class="form-control" id="balance" value="{{ $companies->balance }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="address">Full Address</label><a class="control-label">  {{$errors->first('address', ':message') }} </a> 
                                                    <textarea class="form-control" name="address" id="" cols="30" rows="10">{{ $companies->address }}</textarea>
                                                </div>

                                                <button type="submit" name="" class="btn btn-primary">Submit</button>
                                        {!! Form::close() !!}
                        </div>
                </div>
        </div>
    </div>
@endsection
