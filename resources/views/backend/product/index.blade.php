@extends('backend.layouts.master')
@section('content')
<main class="app-main"> <!--begin::App Content Header-->
            <div class="app-content-header"> <!--begin::Container-->
                <div class="container-fluid"> <!--begin::Row-->
                    <div class="row">
                        <div class="col-sm-6">
                            <h3 class="mb-0">Product</h3>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-end">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Product
                                </li>
                            </ol>
                        </div>
                    </div> <!--end::Row-->
                </div> <!--end::Container-->
            </div> <!--end::App Content Header--> <!--begin::App Content-->
            <div class="app-content"> <!--begin::Container-->
                <div class="container-fluid"> <!--begin::Row-->
                 <table class="table table-bordered table-spriped">
                    <thead>
                    <tr>
                        <th>name</th>
                        <th>price</th>
                        <th>descreption</th>
                        <th>image</th>
                        <th>action</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $product)
                        <tr>
                            <td>{{ $product->name }}</td>
                            <td>{{ $product->price }}</td>
                            <td>{{ $product->descreption }}</td>
                            <td><img src="{{ asset('backend/uploads/products/'.$product->image) }}" alt="" width="100px" height="100px"></td>
                            <td>
                                <a href="{{ Route('product.edit', $product->id) }}" class="btn btn-primary">Edit</a><br>
                                <form action="{{url('deleteproduct',$product->id)}}" method="POST" style="background-color:transparent; width:auto;">
                            @csrf
                            @method("DELETE")
                           <button type="submit" class="btn btn-danger">Delete</button>
                           </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                </div> <!--end::Container-->
            </div> <!--end::App Content-->
        </main> <!--end::App Main--> <!--begin::Footer-->
    @endsection