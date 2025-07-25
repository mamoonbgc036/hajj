@extends('layouts.auth')

@section('auth')

<ul class="text-center">
    <li style="list-style: none;"><a href="{{ route('home') }}" class="p-4">Home</a></li>
</ul>

    <form class="form-horizontal form-material" action="{{ route('user.register') }}" method="post">
         @csrf
                        <div class="form-group ">
                            <div class="col-xs-12">
                            <input class="form-control" type="text"  name="email" id="email" placeholder="{{ __('E-Mail Address') }}"> </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <input class="form-control" type="password" name="password" id="password"  placeholder="{{ __('Password') }}">
                             </div>
                        </div>
                        <div class="form-group text-center">
                            <div class="col-xs-12 p-b-20">
                                <button class="btn btn-block btn-lg btn-info btn-rounded" type="submit">{{ __('Register') }}</button>
                            </div>
                        </div>
                           <div class="form-group text-center">
                            <div class="col-xs-12 p-b-20">
                                <span>have account? </span><a href="{{ route('user.login') }}">Sign in</a>
                            </div>
                        </div>
                    </form>
@endsection
