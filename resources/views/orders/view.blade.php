 @extends('app')
 
       
@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
                                    <div class="panel-heading">
                                    <button type="button"  onclick="window.location='./orders/new'" class="btn btn-primary" >Add Order</button>
                                    <h3>All Orders</h3>
                                    </div>
                                    <table class="table table-striped">
                                       <thead>
                                        <tr>
                                          <th>#</th>
                                          <th>Name</th>
                                          <th>Order No</th>
                                          <th>Amount</th>
                                          <th>Login Link</th>
                                          <th>Action</th>
                                        </tr>
                                      </thead>
                                      <tbody>

                                        @foreach($orders as $order)
                                         <tr>
                                           <th scope="row">{{ $order->id }}</th>
                                           <td>{{ $order->name }}</td>
                                           <td>{{ $order->card_no }}</td>
                                           <td>{{ $order->points }}</td>
                                           <td>{{ $order->login_link }}</td>
                                           <td><a href="{{ URL::to('/orders/edit/'.$order->id) }}">Edit</a>   <a onclick="return check()" href="{{ URL::to('/orders/delete/'.$order->id) }}">Delete</a></td>
                                         </tr>
                                         @endforeach
                                      </tbody>
                                    </table>
                            
                        </div>
                    </div>
            </div>
</div>
@endsection


