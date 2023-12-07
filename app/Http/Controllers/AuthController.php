<?php

namespace App\Http\Controllers;

use App\Models\User;
use Egulias\EmailValidator\Result\Reason\AtextAfterCFWS;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = $request->validate([
            'email' => 'required|email|unique:users',
            'password' => 'required|string',
            'name' => 'required|string',
        ]);
        $user = User::create([
            'name' => $validator['name'],
            'email' => $validator['email'],
            'password' => bcrypt($validator['password'])
        ]);
        $token = $user->createToken('main')->plainTextToken;
        return response()->json([
            'token' => $token,
            'user' => $user,
        ]);
    }

    public function login(Request $request)
    {
        $validator = $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
        if (!Auth::attempt($validator)){
            return response()->json([
                'message' => 'Email hoặc mật khẩu không đúng'
            ], 401);
        }
        $user = Auth::user();
        $token = $user->createToken('main')->plainTextToken;
        return response()->json([
            'token' => $token,
            'user' => $user,
        ]);
    }

    public function logout(Request $request)
    {
        $user = $request->user();
        $user->currentAccessToken()->delete();
        return response('', 204);
    }
}
