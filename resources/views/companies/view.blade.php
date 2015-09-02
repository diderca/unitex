 @extends('app')
 
       
@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
                                    <div class="panel-heading">
                                    <button type="button"  onclick="window.location='./companies/new'" class="btn btn-primary" >Add Funds</button>
                                    <h3>All Funds</h3>
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

                                        @foreach($companies as $company)
                                         <tr>
                                           <th scope="row">{{ $company->id }}</th>
                                           <td>{{ $company->name }}</td>
                                           <td>{{ $company->balance }}</td>
                                           <td>{{ $company->address }}</td>
                                           <td>{{ $company->city }}</td>
                                           <td>{{ $company->country }}</td>
                                           <td>{{ $company->email }}</td>
                                           <td>{{ $company->phone }}</td>
                                           <td><a href="{{ URL::to('/companies/edit/'.$company->id) }}">Edit</a>   <a onclick="return check()" href="{{ URL::to('/companies/delete/'.$company->id) }}">Delete</a></td>
                                         </tr>
                                         @endforeach
                                      </tbody>
                                    </table>
                            
                        </div>
                    </div>
            </div>
</div>
@endsection


