@extends('layouts.auth')

@section('auth')
<ul class="text-center">
    <li style="list-style: none;"><a href="{{ route('home') }}" class="p-4">Home</a></li>
</ul>
    <form class="form-horizontal form-material" action="{{ route('user.login') }}" method="post">
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
                        <div class="form-group row">
                            <div class="col-md-12">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="remember" id="customCheck1" {{ old('remember') ? 'checked' : '' }}>
                                    <label class="custom-control-label" for="customCheck1">{{__('Remember me')}}</label>
                                    @if (Route::has('password.request'))
                                    <a href="{{ route('password.request') }}" id="to-recover" class="text-dark float-right"><i class="ti-help-alt"></i> {{__('Forgot pwd?')}}</a>
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="form-group text-center">
                            <div class="col-xs-12 p-b-20">
                                <button class="btn btn-block btn-lg btn-info btn-rounded" type="submit">{{ __('Login') }}</button>
                            </div>
                        </div>
                         <div class="form-group text-center">
                            <div class="col-xs-12 p-b-20">
                                <span>Don't have account? </span><a href="{{ route('user.register') }}">Sign up</a>
                            </div>
                        </div>
                    </form>
@endsection
