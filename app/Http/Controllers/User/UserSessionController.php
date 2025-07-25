<?php

namespace App\Http\Controllers\User;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserSessionController extends Controller
{
    public function login(){
		return view('user.login');
	}

    public function check(Request $request){
        $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required']
        ]);
       $credentials = $request->only(['email', 'password']);
        if(Auth::attempt($credentials)){
            $request->session()->regenerate();
            return redirect()->route('user-dashboard');
        }
        return redirect()->route('user.login')->withErrors('mismatch-credentials', 'Credentials does not matched');
    }

    public function register(){
        return view('user.register');
    }

    public function dashboard(){
        return view('user.dashboard');
    }

    public function store(Request $request){
       $request->validate([
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:6',
        ]);

        User::create([
            'email' => $request->email,
            'password'=> Hash::make($request->password),
        ]);
        return redirect()->route('user-dashboard')->with('success', 'Registration successful. Please login.');
    }

    public function logout(Request $request){
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('user.login')->with('success', 'You have been logged out successfully.');
    }
}
