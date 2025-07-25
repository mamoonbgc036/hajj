<?php

namespace App\Http\Controllers\User;

use App\Book;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserSessionController extends Controller
{
    public function login(Request $request){
        $isEmpty = $request->query('redirect_to_book');
        if($isEmpty != ''){
            session()->put('redirect_to_book', $isEmpty);
        }
		return view('user.login');
	}

    public function book(){
        $book = Book::where('user_id', Auth::id())->get();
        return view('user.book.index', compact('book'));
    }

    public function check(Request $request){
        $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required']
        ]);
       $credentials = $request->only(['email', 'password']);
        if(Auth::attempt($credentials)){
            $request->session()->regenerate();
            if(session()->has('redirect_to_book')){
                $redirectTo = session()->get('redirect_to_book');
                session()->forget('redirect_to_book');
                return redirect($redirectTo);
            }
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
        if(session()->has('redirect_to_book')){
                $redirectTo = session()->get('redirect_to_book');
                session()->forget('redirect_to_book');
                return redirect($redirectTo);
            }
        return redirect()->route('user-dashboard')->with('success', 'Registration successful. Please login.');
    }

    public function logout(Request $request){
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect()->route('user.login')->with('success', 'You have been logged out successfully.');
    }
}
