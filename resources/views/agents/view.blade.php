 @extends('app')
 
       
@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
                                    <div class="panel-heading">
                                    <button type="button"  onclick="window.location='./agents/new'" class="btn btn-primary" >Add Agents</button>
                                    <h3>All Agents</h3>
                                    </div>
                                    <table class="table table-striped">
                                       <thead>
                                        <tr>
                                          <th>#</th>
                                          <th>Name</th>
                                          <th>Company</th>
                                          <th>Phone</th>
                                          <th>Agents Design</th>
                                          <th>Action</th>
                                        </tr>
                                      </thead>
                                      <tbody>

                                        @foreach($agents as $agent)
                                         <tr>
                                           <th scope="row">{{ $agent->id }}</th>
                                           <td>{{ $agent->name }}</td>
                                           <td>{{ $agent->company }}</td>
                                           <td>{{ $agent->phone }}</td>
                                           <td>{{ $agent->design_id }}</td>
                                           <td><a href="{{ URL::to('/agents/edit/'.$agent->id) }}">Edit</a>   <a onclick="return check()" href="{{ URL::to('/agents/delete/'.$agent->id) }}">Delete</a></td>
                                         </tr>
                                         @endforeach
                                      </tbody>
                                    </table>
                            
                        </div>
                    </div>
            </div>
</div>
@endsection


