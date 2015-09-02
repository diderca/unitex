@extends('app')
 
       
@section('content')
 

    <div class="container">
        
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default  ">
                                    <div class="panel-heading">
                                        <h3> Edit Sender Info</h3>
                                    <?php 
                                    if (Request::old('name')){ $senders->name=Request::old('name'); }
                                    if (Request::old('city')){ $senders->company=Request::old('city'); }
                                    if (Request::old('country')){ $senders->company=Request::old('country'); }
                                    if (Request::old('email')){ $senders->phone=Request::old('email'); }
                                    if (Request::old('phone')){ $senders->phone=Request::old('phone'); }
                                    if (Request::old('balance')){ $senders->balance=Request::old('balance'); }
                                    if (Request::old('address')){ $senders->country=Request::old('address'); }
                                    ?>
                                    </div>

                                        {!! Form::open(array('url' => '/senders/update')) !!}
                                                <div class="form-group ">
                                                    <label for="name"> Name </label><a class="control-label">{{$errors->first('name', ':message') }}</a>
                                                    <input type="text" name="name" class="form-control" id="name" value="{{ $senders->name }}">
                                                    <input type="hidden" name="id" class="form-control" id="id" value="{{ $senders->id }}">

                                                </div>
                                                <div class="form-group">
                                                    <label for="city">City</label> <a class="control-label">  {{$errors->first('city', ':message') }}</a> 
                                                    <input type="text" name="city" class="form-control" id="phone" value="{{ $senders->city }}">
                                                </div>

                                                <div class="form-group">
                                                    {!! Form::label('Country') !!}<br />
                                                    {!! Form::select('country', 
                                                    ( [$senders->country_id=> $senders->country]+ $countries ), 
                                                    null, 
                                                    ['class' => 'form-control']) !!}
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email</label> <a class="control-label"> {{$errors->first('email', ':message') }} </a>
                                                    <input type="text" name="email" class="form-control" id="email" value="{{ $senders->email }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="phone">Phone Number</label> <a class="control-label">  {{$errors->first('phone', ':message') }}</a> 
                                                    <input type="text" name="phone" class="form-control" id="phone" value="{{ $senders->phone }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="balance">Balance </label><a class="control-label"> {{$errors->first('balance', ':message') }}</a>  
                                                    <input type="text" name="balance" class="form-control" id="balance" value="{{ $senders->balance }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="address">Full Address</label><a class="control-label">  {{$errors->first('address', ':message') }} </a> 
                                                    <textarea class="form-control" name="address" id="" cols="30" rows="10">{{ $senders->address }}</textarea>
                                                </div>

                                                <button type="submit" name="" class="btn btn-primary">Submit</button>
                                        {!! Form::close() !!}
                        </div>
                </div>
        </div>
    </div>
@endsection
