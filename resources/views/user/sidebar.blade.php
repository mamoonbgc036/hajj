<div class="d-flex no-block nav-text-box align-items-center">
                <span>{!! getLogo() !!}</span>
                <a class="nav-lock waves-effect waves-dark ml-auto hidden-md-down" href="javascript:void(0)"><i class="mdi mdi-toggle-switch"></i></a>
                <a class="nav-toggler waves-effect waves-dark ml-auto hidden-sm-up" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
            </div>
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li> <a class="waves-effect waves-dark" href="{{ route('admin.dashboard') }}" aria-expanded="false"><i class="icon-speedometer"></i><span class="hide-menu">Dashboard</span></a>
                        </li>
                          <li> <a class="waves-effect waves-dark" href="{{ route('admin.language') }}" aria-expanded="false"><i class="ti-video-clapper"></i><span class="hide-menu">{{_lang('language')}}</span></a>
                        </li>
                         <li> <a class="has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="ti-book"></i></i><span class="hide-menu">{{_lang('Book')}}</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="{{ route('user.book') }}">
                                    {{_lang('Package Book')}} <i class=" ti-hand-open"></i></a>
                                </li>

                                <li><a href="">
                                    {{_lang('Air Ticket')}} <i class=" ti-hand-open"></i></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->