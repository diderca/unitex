@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">Welcome to Unitex App. </div>

				<div class="panel-body">
                                    <img  src="{{ asset('/images/frog-leaf.png') }}" >
                                    <br />
                                    <br />
                                    <p> Interested to see how it works?</p>
                                    <button type="button" onclick="window.location='./register'" class="btn btn-primary" >Lets go</button>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
