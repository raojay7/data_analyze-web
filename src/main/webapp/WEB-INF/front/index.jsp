<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>主页</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="FREEHTML5.CO" />

    <!-- Facebook and Twitter integration -->
  <meta property="og:title" content=""/>
  <meta property="og:image" content=""/>
  <meta property="og:url" content=""/>
  <meta property="og:site_name" content=""/>
  <meta property="og:description" content=""/>
  <meta name="twitter:title" content="" />
  <meta name="twitter:image" content="" />
  <meta name="twitter:url" content="" />
  <meta name="twitter:card" content="" />

  <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/front/lib_one/favicon.ico">

  <!-- Themify Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/themify-icons.css">
  <!-- Icomoon Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/icomoon-icons.css">
  <!-- Bootstrap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/bootstrap.css">
  <!-- Owl Carousel -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/owl.theme.default.min.css">
  <!-- Magnific Popup -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/magnific-popup.css">
  <!-- Easy Responsive Tabs -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/easy-responsive-tabs.css">
  <!-- Theme Style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/front/lib_one/css/style.css">


  <!-- FOR IE9 below -->
  <!--[if lte IE 9]>
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/modernizr-2.6.2.min.js"></script>
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/respond.min.js"></script>
  <![endif]-->

  <script type="application/javascript">

     function goURL() {

     }

  </script>

</head>

<body class="fh5co-outer">
  <header id="fh5co-header" role="banner">
    
      <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header"> 
            <!-- Mobile Toggle Menu Button -->
            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#fh5co-navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
            <a class="navbar-brand" href="index.jsp">主页</a>
          </div>
          <div id="fh5co-navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <!--<li><a href="teacher_data.html">数据中心</a></li>-->
            </ul>
            <ul class="nav navbar-nav navbar-right">

              <li>

                <!--<form action="#" class="form-subscribe">-->
                  <!--<div class="field">-->
                    <!--<input type="email" class="form-control" placeholder="输入学校名...">-->
                    <!--&nbsp;&nbsp;-->
                    <!--<button class="btn btn-primary">搜索</button>-->
                  <!--</div>-->
                <!--</form>-->

              </li>
              <li>&nbsp;&nbsp;</li>
              <li>&nbsp;&nbsp;</li>
              <%--<li><button class="btn btn-primary">登录</button></li>--%>


              <li>
                <form method="post" action="${pageContext.request.contextPath}/account/loginUI.do">

                <button type="submit" class="btn btn-primary">数据维护</button>
                </form>

              </li>

            </ul>
          </div>
        </div>
      </nav>

  </header>

  <div id="fh5co-hero" style="background-image: url(${pageContext.request.contextPath}/resource/front/lib_one/images/index_bg.jpg)">
    <a href="#fh5co-main" class="smoothscroll animated bounce fh5co-arrow"><i class="ti-angle-down"></i></a>
    <div class="container">
      <div class="col-md-8 col-md-offset-2">
        <div class="text">
          <h1>
            <strong>数据专家
            </strong>
            <br>
          </h1>
          <br/>
          <br/>
          <br/>
          <h3 style="color: #ffffff;text-align: right">
            --- 探索数据的价值
          </h3>
        </div>
      </div>
    </div>
  </div>

  <main role="main" id="fh5co-main">
    <section class="feature">
      <div class="container">
        
        <div class="row">
          <div class="col-md-6">
            <div class="feature-item">
              <div class="feature-icon"><i class="icon icon-air"></i></div>
              <div class="feature-text">
                <h3>最有价值的数据分析结果</h3>
                <p>
                  <h5>
                      我们通过对***数据的分析，挖掘出了***的价值，点击下方参观我们的结果吧。
                  </h5>
                  <br>
                  <a href="#" class="btn btn-calltoaction btn-primary">点击浏览</a>
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="feature-item">
              <div class="feature-icon"><i class="icon ti-mobile"></i></div>
              <div class="feature-text">
                <h3>手机APP下载</h3>
                <p>
                <h5>
                   网页浏览不方便，试试下载使用我们的APP端吧，亲点击选择合适版本下载。
                </h5>
                <br>
                <a href="#" class="btn btn-calltoaction btn-primary">点击下载</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END .feature -->
	<div class="copyrights">copy right @ <a href="#" >UP-VAMS工作室</a></div>
    <section class="grid-gallery">
      <div class="container">
        
        <div class="row">
          <div class="col-md-6 col-md-offset-3">
            <h2 class="section-heading">精选项目</h2>
          </div>
        </div>

        <hr>

        <div class="row gallery-row">
          
          <div class="col-md-6 col-sm-6">
            <a href="${pageContext.request.contextPath}/resource/front/lib_one/images/post_data.png" target="_blank" class="img image-popup">

              <a href="teacher/post_data.do">
              <img src="${pageContext.request.contextPath}/resource/front/lib_one/images/post_data.png" alt="Image" class="img-responsive">
              </a>


              <div class="text">
                <h5 style="font-size: 25px;font-weight: 100;color: #b0b29f;text-align: center">学院岗位数据分析</h5>
              </div>

            </a>
          </div>

          <div class="col-md-6 col-sm-6">

            <a href="${pageContext.request.contextPath}/resource/front/lib_one/images/hr_data.png" target="_blank" class="img image-popup">

              <a href="teacher/hr_data.do">
                <img src="${pageContext.request.contextPath}/resource/front/lib_one/images/hr_data.png" alt="Image" class="img-responsive">
              </a>



              <div class="text">
                <h5 style="font-size: 25px;font-weight: 100;color: #b0b29f;text-align: center">学院人力资源现状分析</h5>
              </div>

            </a>

          </div>
        </div>

        <hr>

        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">
            <a href="${pageContext.request.contextPath}/resource/front/lib_one/images/work_data1.png" target="_blank" class="img image-popup">

              <a href="teach/work_data_teach.do">
                <img src="${pageContext.request.contextPath}/resource/front/lib_one/images/work_data1.png" alt="Image" class="img-responsive">
              </a>

              <div class="text">
                <h5 style="font-size: 25px;font-weight: 100;color: #b0b29f;text-align: center">学院历年教学工作量数据分析</h5>
              </div>

            </a>
          </div>

            <div class="col-md-6 col-sm-6">
              <a href="${pageContext.request.contextPath}/resource/front/lib_one/images/work_data2.png" target="_blank" class="img image-popup">

                  <a href="project/work_data_research.do">
                  <img src="${pageContext.request.contextPath}/resource/front/lib_one/images/work_data2.png" alt="Image" class="img-responsive">
                </a>


                <div class="text">
                  <h5 style="font-size: 25px;font-weight: 100;color: #b0b29f;text-align: center">学院历年科研数据分析</h5>
                </div>

              </a>
            </div>

        </div>

        <hr>
        
      </div>
    </section>

  </main>

  <footer role="contentinfo" id="fh5co-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <div class="footer-box border-bottom">
            <h3 class="footer-heading">关于我们</h3>
            <p>
               我们是信息工程学院教学数据信息开发的团队。
            </p>
          </div>
          
            <h3 class="footer-heading">订阅</h3>
            <form action="#" class="form-subscribe">
              <div class="field">
                <input type="email" class="form-control" placeholder="hello@mail.com">
                <button class="btn btn-primary">订阅</button>
              </div>
            </form>
            <div class="fh5co-spacer fh5co-spacer-sm"></div>
          
        </div>
        <div class="col-md-3 col-sm-6">
          
            <h3 class="footer-heading">正在开发的项目</h3>
            <ul class="footer-list">
              <li><a href="${pageContext.request.contextPath}/teacher/post_data.do">学院岗位数据分析</a></li>
              <li><a href="${pageContext.request.contextPath}/teacher/hr_data.do">学院人力资源现状分析</a></li>
              <li><a href="${pageContext.request.contextPath}/teach/work_data_teach.do">学院历年教学工作量分析</a></li>
              <li><a href="${pageContext.request.contextPath}/project/work_data_research.do">学院历年科研数据分析</a></li>
            </ul>
          
        </div>


        <div class="visible-sm clearfix"></div>


        <div class="col-md-3 col-sm-6">
          
            <h3 class="footer-heading">初步成果</h3>
            <ul class="footer-list">
              <li><a href="#"><abbr title="Hypertext Markup Language 5">成果一</abbr></a></li>
              <li><a href="#"><abbr title="Cascading Stylesheets 3">成果二</abbr></a></li>
              <li><a href="#">成果三</a></li>
              <li><a href="#">成果四</a></li>
            </ul>
          
        </div>


        <div class="col-md-3 col-sm-6 clearfix">

          <div class="row">
            <div class="col-md-6 col-sm-6">
              <div class="footer-box">
                <h3 class="footer-heading">联系我们</h3>
                <ul class="footer-list">
                  <li><a href="#">我们的主页</a></li>
                  <li><a href="#">给我们留言</a></li>
                  <li><a href="#">关于我们</a></li>
                  
                </ul>
              </div>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="footer-box">
                <h3 class="footer-heading">技术支持</h3>
                <ul class="footer-list">
                  <li><a href="#">问题</a></li>
                  <li><a href="#">领域知识</a></li>
                </ul>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="copyright">
            <p class="text-center">
              <a href="#" target="_blank">UP-VAMS</a><br> &copy; 2017 Display. All Rights Reserved.</p>
          </div>
        </div>
      </div>
    </div>
  </footer>


  <!-- Go To Top -->
    <a href="#" class="fh5co-gotop"><i class="ti-shift-left"></i></a>



  <!-- jQuery -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/jquery-1.10.2.min.js"></script>
  <!-- jQuery Easing -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/jquery.easing.1.3.js"></script>
  <!-- Bootstrap -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/bootstrap.js"></script>
  <!-- Owl carousel -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/owl.carousel.min.js"></script>
  <!-- Magnific Popup -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/jquery.magnific-popup.min.js"></script>
  <!-- Easy Responsive Tabs -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/easyResponsiveTabs.js"></script>
  <!-- FastClick for Mobile/Tablets -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/fastclick.js"></script>

  <!-- Main JS -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/main.js"></script>

</body>
</html>
