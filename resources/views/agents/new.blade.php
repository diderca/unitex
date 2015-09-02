@extends('app')
 
       
@section('content')
 

    <div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default  @if($errors->has()) has-error @endif ">
                                    <div class="panel-heading">
                                    <h3>All Agents</h3>
                                    </div>
                            
                                    {{ Session::get('message') }}
                                    {!! Form::open(array('url' => '/agents/save')) !!}
                                            <div class="form-group">
                                                <label for="name">Agents Name</label><a class="control-label"> {{$errors->first('name', ':message') }} </a>
                                                <input type="text" name="name" class="form-control" id="name" value="{{ Request::old('name') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="company">Company name</label><a class="control-label"> {{ $errors->first('company', ':message') }} </a>
                                                <input type="text" name="company" class="form-control" id="company" value="{{ Request::old('company') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="phone">Phone Number</label><a class="control-label">  {{$errors->first('phone', ':message') }}</a>
                                                <input type="text" name="phone" class="form-control" id="phone" value="{{ Request::old('phone') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="design_id">Agents Design</label><a class="control-label">  {{$errors->first('design_id', ':message') }}</a>
                                                <input type="text" name="design_id" class="form-control" id="design_id" value="{{ Request::old('design_id') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="login_link">Login Link</label><a class="control-label"> {{$errors->first('login_link', ':message') }}</a>
                                                <input type="text" name="login_link" class="form-control" id="login_link" value="{{ Request::old('login_link') }}">
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
 