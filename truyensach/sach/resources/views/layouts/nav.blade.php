 <div class="container">
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                      <li class="nav-item active">
                        <a class="nav-link" href="{{route('home')}}">Home <span class="sr-only">(current)</span></a>
                      </li>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Quản lý 
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="{{route('danhmuc.create')}}">Thêm danh mục</a>
                          <a class="dropdown-item" href="{{route('danhmuc.index')}}">Xem danh mục</a>
                        </div>
                      </li>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Thể loại
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="{{route('theloai.create')}}">Thêm thể loại</a>
                          <a class="dropdown-item" href="{{route('theloai.index')}}">Xem thể loại</a>
                        </div>
                      </li>
                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Truyện
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="{{route('truyen.create')}}">Thêm truyện</a>
                          <a class="dropdown-item" href="{{route('truyen.index')}}">Xem truyện</a>
                        </div>
                      </li>
                      
                      
                       <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Đơn hàng
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                         
                          <a class="dropdown-item" href="{{route('sach.index')}}">Xem đơn hàng</a>
                        </div>
                      </li>
                    </ul>
                    
                  </div> 
                  

 </nav>
</div>