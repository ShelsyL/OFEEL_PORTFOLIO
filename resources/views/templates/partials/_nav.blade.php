<nav class="navbar navbar-default navbar-fixed-top fadeInDown" data-wow-delay="0.5s">
    <div class="top-bar smoothie hidden-xs">
        <div class="container">
            <div class="clearfix">
                <ul class="list-inline social-links wow pull-left">
                    {{-- <li>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                    </li> --}}
                    {{-- <li>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </li> --}}
                    <li>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                    </li>
                </ul>

                <div class="pull-right text-right">
                    <ul class="list-inline">
                        <li>
                            <div><i class="fa fa-envelope-o"></i> chelsealouis.graphiste@gmail.com</div>
                        </li>
                        {{-- <li>
                            <div class="meta-item"><i class="fa fa-mobile"></i> 0497/79.18.xx</div>
                        </li> --}}
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navigation">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand smoothie logo logo-light" href="index.html"><img src="{{ asset('assets/img/logo.png') }}" alt="logo"></a>
            <a class="navbar-brand smoothie logo logo-dark" href="index.html"><img src="{{ asset('assets/img/logo_reverse.png') }}" alt="logo"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="main-navigation">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                  <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">Home</a></li>
                  <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">About US</a></li>
                  <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio</a></li>
                  {{-- <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">Articles</a></li> --}}
                  <li><a href="#" class="dropdown-toggle" data-toggle="dropdown">Contact</a></li>



                <li><a href="#search"><i class="pe-7s-search"></i></a></li>
                <li><a href="javascript:void(0);" class="side-menu-trigger hidden-xs"><i class="fa fa-bars"></i></a></li>
              </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<div id="search-wrapper">
    <button type="button" class="close">×</button>
    <div class="vertical-center text-center">
        <form>
            <input type="search" value="" placeholder="Enter Search Term" />
            <button type="submit" class="btn btn-primary btn-white">Search</button>
        </form>
    </div>
</div>
