 @extends('app')
 
       
@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
                                    <div class="panel-heading">
                                    <button type="button"  onclick="window.location='./senders/new'" class="btn btn-primary" >Add Senders</button>
                                    <h3>All Senders</h3>
                                    </div>
                                    <table class="table table-striped">
                                       <thead>
                                        <tr>
                                          <th>#</th>
                                          <th>Name</th>
                                          <th>Balance</th>
                                          <th>Address</th>
                                          <th>City</th>
                                          <th>Country</th>
                                          <th>Email</th>
                                          <th>Phone</th>
                                          <th>Action</th>
                                        </tr>
                                      </thead>
                                      <tbody>

                                        @foreach($senders as $sender)
                                         <tr>
                                           <th scope="row">{{ $sender->id }}</th>
                                           <td>{{ $sender->name }}</td>
                                           <td>{{ $sender->balance }}</td>
                                           <td>{{ $sender->address }}</td>
                                           <td>{{ $sender->city }}</td>
                                           <td>{{ $sender->country }}</td>
                                           <td>{{ $sender->email }}</td>
                                           <td>{{ $sender->phone }}</td>
                                           <td><a href="{{ URL::to('/senders/edit/'.$sender->id) }}">Edit</a>   <a onclick="return check()" href="{{ URL::to('/senders/delete/'.$sender->id) }}">Delete</a></td>
                                         </tr>
                                         @endforeach
                                      </tbody>
                                    </table>
                            
                        </div>
                    </div>
            </div>
</div>
@endsection


