@extends('app')
 
       
@section('content')
 

    <div class="container">
        
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default  ">
                                    <div class="panel-heading">
                                      <h3> Edit Agents</h3>

                                    <?php 
                                    if (Request::old('name')){ $agent->name=Request::old('name'); }
                                    if (Request::old('company')){ $agent->company=Request::old('company'); }
                                    if (Request::old('phone')){ $agent->phone=Request::old('phone'); }
                                    if (Request::old('design_id')){ $agent->design_id=Request::old('design_id'); }
                                    if (Request::old('login_link')){ $agent->login_link=Request::old('login_link'); }
                                    if (Request::old('note')){ $agent->note=Request::old('note'); }
                                    ?>
                                    </div>

                                        {!! Form::open(array('url' => '/agents/update')) !!}
                                                <div class="form-group ">
                                                    <label for="name">Agents Name </label><a class="control-label">{{$errors->first('name', ':message') }}</a>
                                                    <input type="text" name="name" class="form-control" id="name" value="{{ $agent->name }}">
                                                    <input type="hidden" name="id" class="form-control" id="id" value="{{ $agent->id }}">

                                                </div>
                                                <div class="form-group">
                                                    <label for="company">Company name</label> <a class="control-label"> {{$errors->first('company', ':message') }} </a>
                                                    <input type="text" name="company" class="form-control" id="company" value="{{ $agent->company }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="phone">Phone Number</label> <a class="control-label">  {{$errors->first('phone', ':message') }}</a> 
                                                    <input type="text" name="phone" class="form-control" id="phone" value="{{ $agent->phone }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="design_id">Agents Design</label><a class="control-label">  {{$errors->first('design_id', ':message') }}</a> 
                                                    <input type="text" name="design_id" class="form-control" id="design_id" value="{{ $agent->design_id }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="login_link">Login Link </label><a class="control-label"> {{$errors->first('login_link', ':message') }}</a>  
                                                    <input type="text" name="login_link" class="form-control" id="login_link" value="{{ $agent->login_link }}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="note">Note</label><a class="control-label">  {{$errors->first('note', ':message') }} </a> 
                                                    <textarea class="form-control" name="note" id="" cols="30" rows="10">{{ $agent->note }}</textarea>
                                                </div>

                                                <button type="submit" name="" class="btn btn-primary">Submit</button>
                                        {!! Form::close() !!}
                        </div>
                </div>
        </div>
    </div>
@endsection
