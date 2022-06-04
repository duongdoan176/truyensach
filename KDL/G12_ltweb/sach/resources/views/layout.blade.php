<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Sách truyện</title>

        <!-- Style -->
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <link href="{{ asset('css/owl.carousel.min.css') }}" rel="stylesheet">
        <link href="{{ asset('css/owl.theme.default.min.css') }}" rel="stylesheet"> 
        

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <style type="text/css">
            body{
                background-color: Gray;
            }
            nav{
                background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20190222/ourmid/pngtree-blue-pink-gouache-spot-blotch-background-backgroundink-renderingsplashwatercolor-gouachewatercolor-image_58726.jpg');
            }
        </style>
    </head>
    <body>
        <div class="container">
            <!-- Menu -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
             
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                    <a class="nav-link" href="{{url('/')}}">Trang chủ<span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Danh mục truyện
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        @foreach($danhmuc as $key => $danh)
                      <a class="dropdown-item" href="{{url('danh_muc/'.$danh->slug_danhmuc)}}">{{$danh->tendanhmuc}}</a> 
                      @endforeach 
                    </div>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Thể loại  
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      @foreach($theloai as $key => $the)
                      <a class="dropdown-item" href="{{url('the_loai/'.$the->slug_theloai)}}">{{$the->tentheloai}}</a> 
                      @endforeach 
                    </div>
                  </li>
                   
                    <li class="nav-item dropdown">
                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        {{ Auth::user()->name }}
                    </a>

                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();">
                            {{ __('Logout') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                    </div>
                </li>
                 
                </ul>
                <form class="form-inline my-2 my-lg-0" action="{{url('tim_kiem')}}" method="GET">
                    
                  <input class="form-control mr-sm-2" name ="tukhoa" type="search" placeholder="Tìm kiếm tác giả, truyện,...." aria-label="Search">
                  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
                
                </form>
               
 
              </div>
            </nav>
            <!-- Slide -->
            
            @yield('slide')
            <!--Home--------------------------------------------------->
            @yield('content')

    <footer class="text-muted">
        <div class="container">
        <p class="float-right">
          <a href="#">Next page</a>
        </p>
        <p>Rất vui vì các bạn ở đây!!!</p>
        <p>LtWeb <a href="https://www.w3schools.com/">Visit W3shool</a> or read our <a href="https://www.w3schools.com/html/default.asp">welcome HTML</a> and <a href="https://www.w3schools.com/css/default.asp">CSS</a></p>
      </div>
    </footer>

 
    </div>
     <div id="fb-root"></div>
        <script src="{{ asset('js/app.js') }}" defer></script>
        <script src="{{ asset('js/jquery.min.js') }}" defer></script>
        <script src="{{ asset('js/owl.carousel.js') }}" defer></script>
        
       
        <script type="text/javascript">
           $('.owl-carousel').owlCarousel({
                loop:true,
                margin:10,
                nav:true,
                responsive:{
                    0:{
                        items:1
                    },
                    600:{
                        items:3
                    },
                    1000:{
                        items:5
                    }
                }
            })
        </script>
        <script type="text/javascript">
            $('.select-chapter').on('change', function(){
                var url = $(this).val();
                if(url){
                    window.location = url;
                }
            
                return false;
            });
            current_chapter();
            function current_chapter(){
                var url = window.location.href;
                $('.select-chapter').find('option[value ="'+url+'"]').attr("selected", true);
            }
        </script>

        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0" nonce="v8l38dpH">
                
        </script>
       
      
    </body>
</html>
