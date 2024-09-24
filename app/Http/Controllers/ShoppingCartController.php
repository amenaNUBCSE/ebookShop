<?php

namespace App\Http\Controllers;

use App\Models\ShoppingCart;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Cart;
use Illuminate\Support\Facades\Auth;

class ShoppingCartController extends Controller
{
    public function index()
    {
        // Obtener Products en el carrito del usuario actual
        $cartItems = ShoppingCart::where('usuario_id', Auth::id())->get();

        return view('cart.index', compact('cartItems'));
    }

    public function addToCart($productId)
    {
        // Lógic
        return 'progress working';
    }

    public function updateCart(Request $request, $cartId)
    {
        // Lógic
        return 'progress working';
    }

    public function removeFromCart($cartId)
    {
        return 'progress working';
    }
}
