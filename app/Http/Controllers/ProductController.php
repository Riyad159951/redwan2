<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function index(){
        $products = product::all();
        return view('backend.product.index', compact('products'));
    }

    public function create()
    {
        return view('backend.product.create');
    }

    public function store(Request $request){
        $product = new Product;
        $product->name = $request->name;
        $product->price = $request->price;
        $product->descreption = $request->descreption;
        if(isset($request->image)){
            $filename = time().'.'.$request->image->Extension();
            $upload_path= public_path('backend/uploads/products');
            $request->image->move($upload_path,$filename);
            $product->image = $filename;
        
        $product->save();
        session()->flash('success', 'Product created successfully');
        return redirect()->route('product.index');
    }
    }

    public function edit($id){
        $product = product::find($id);
        return view('backend.product.edit', compact('product'));
    }

    public function update(Request $request, $id){
        $product = product::find($id);
        $product->name = $request->name;
        $product->price = $request->price;
        $product->descreption = $request->descreption;
        if(isset($request->image)){
            $filename = time().'.'.$request->image->Extension();
            $upload_path= public_path('backend/uploads/products');
            $request->image->move($upload_path,$filename);
            $product->image = $filename;
        }
        $product->save();
        session()->flash('success', 'Product updated successfully');
        return redirect()->route('product.index');
    }

    public function deleteproduct($id){
        $product = Product::find($id);
        $product->delete();
        session()->flash('success','Product deleted Successfully');
        return redirect()->back();
       }

}
