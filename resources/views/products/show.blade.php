@extends('layouts.app')
@section('content')
<h1>Product Details</h1>
<div class="card">
    <div class="card-body">
        <h5 class="card-title">{{ $product->name }}</h5>
        <p class="card-text">{{ $product->description }}</p>
        <p class="card-text"><strong>Price:</strong> ${{ $product->price
            }}</p>
        <p class="card-text"><strong>Quantity:</strong> {{ $product->quantity }}</p>

        <a href="{{ route('products.edit', $product->id) }}" class="btn btn-warning">Edit</a>

        <form action="{{ route('products.destroy', $product->id) }}" method="POST" style="display:inline;">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-danger">Delete</button>
        </form>

    </div>
</div>
@endsection