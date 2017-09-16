<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>学院岗位数据分析 </title>
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

  <script src="${pageContext.request.contextPath}/resource/front/chart_lib/Chart.bundle.js"></script>
  <script src="${pageContext.request.contextPath}/resource/front/chart_lib/samples/utils.js"></script>


    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>

</head>

<body class="fh5co-outer">
  <header id="fh5co-header" role="banner">
    
      <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header"> 
            <!-- Mobile Toggle Menu Button -->
            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#fh5co-navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">返回主页</a>
          </div>
          <div id="fh5co-navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
            </ul>
            <ul class="nav navbar-nav navbar-right">

              <li>


              </li>
              <li>&nbsp;&nbsp;</li>
              <li>&nbsp;&nbsp;</li>
              <li><button class="btn btn-primary">登录</button></li>

            </ul>
          </div>
        </div>
      </nav>

  </header>


  <div id="fh5co-page-title" style="background-image: url(${pageContext.request.contextPath}/resource/front/lib_one/images/index_bg.jpg)">
    <div class="overlay"></div>
    <div class="container">
      <div class="text">
        <h1>学院教师岗位数据分析</h1>
      </div>

    </div>
  </div>


  <main role="main" id="fh5co-main">

	<div class="copyrights">copy right @ <a href="#" >UP-VAMS工作室</a></div>
    <section class="grid-gallery">
      <div class="container">
          <div class="row gallery-row">
              <div class="col-md-12">

                  <h5 style="text-align: center"></h5>

                  <div id="canvas-holder10">
                  </div>

              </div>
          </div>

          <br/>
          <hr/>
          <br/>

          <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">

                  <h5 style="text-align: center">人员编织核定及现状</h5>



                  <div id="canvas-holder9">
                      <canvas id="chart-area9" />
                  </div>

              </div>
          </div>

          <br/>
          <hr/>
          <br/>

          <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">

                  <center>
                  <!-- 按钮触发模态框 -->
                  <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                      查看详细数据信息
                  </button>
                  </center>
                  <!-- 模态框（Modal） -->
                  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                      <div class="modal-dialog">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                      &times;
                                  </button>
                                  <h4 class="modal-title" id="myModalLabel">
                                      人员编织核定及现状
                                  </h4>
                              </div>
                              <div class="modal-body">


                                  <table class="table table-bordered">
                                      <caption><center>人员编织核定及现状信息表</center> </caption>
                                      <thead>
                                      <tr>
                                          <th>类别</th>
                                          <th>核定科室及人员</th>
                                          <th>领导配置</th>
                                          <th>处级</th>
                                          <th>科级</th>
                                          <th>一般管理岗</th>
                                          <th>教学科研</th>
                                          <th>其他专技岗位</th>
                                          <th>专制辅导员</th>
                                          <th>工勤</th>
                                          <th>合计</th>
                                      </tr>
                                      </thead>
                                      <tbody>

                                          <tr>
                                              <td>核定编制</td>
                                              <td>21</td>
                                              <td>9</td>
                                              <td>4</td>
                                              <td>7</td>
                                              <td>6</td>
                                              <td>215</td>
                                              <td>21</td>
                                              <td>10</td>
                                              <td>0</td>
                                              <td>263</td>

                                          </tr>


                                          <tr>
                                              <td>人力资源现状</td>
                                              <td>19</td>
                                              <td>9</td>
                                              <td>4</td>
                                              <td>4</td>
                                              <td>8</td>
                                              <td>196</td>
                                              <td>40</td>
                                              <td>9</td>
                                              <td>1</td>
                                              <td>262</td>

                                          </tr>



                                      </tbody>
                                  </table>



                              </div>
                              <div class="modal-footer">
                                  <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                  </button>

                              </div>
                          </div><!-- /.modal-content -->
                      </div><!-- /.modal -->
                  </div>

              </div>
          </div>

          <br/>
          <hr/>
          <br/>


        <div class="row gallery-row">
          
          <div class="col-md-6 col-sm-6">

            <div id="canvas-holder">
            </div>


          </div>

          <div class="col-md-6 col-sm-6">


            <div id="canvas-holder1">
            </div>



          </div>
        </div>
        <br/>
        <hr/>
        <br/>

        <!-- Gallery Row -->

        <div class="row gallery-row">
          <div class="col-md-6 col-sm-6">


            <div id="canvas-holder2">
            </div>



          </div>
		  <div class="col-md-6 col-sm-6">


            <div id="canvas-holder3">
            </div>


          </div>
        </div>

        <br/>
        <hr/>
        <br/>

        <!-- Gallery Row -->

        <div class="row gallery-row">
          <div class="col-md-6 col-sm-6">



            <div id="canvas-holder4">
            </div>



          </div>
          <div class="col-md-6 col-sm-6">


          </div>
        </div>




        <br/>
        <hr/>
        <br/>




      </div>
    </section>

  </main>

  <script>


//去水印
      var credits = {
          enabled: false
      };


      //      ==========================================================================================

      var chartJSJKXYJS = {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false
      };
      var title1 = {
          text: '计算机科学与技术系'
      };
      var tooltip1 = {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      };
      var plotOptions1 = {
          pie: {
              allowPointSelect: true,
              cursor: 'pointer',
              colors:[
                  'blue', 'red', 'green' , '#f7a35c'
              ],
              dataLabels: {
                  enabled: true,
                  format: '<b>{point.name}</b>: {point.percentage:.1f}% ',
                  style: {
                      color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                  }
              }
          }
      };
      var series1= [{
          type: 'pie',
          name: '占比',
          data: [

              ['基础教学',  ${JSJKXYJSX_POST_DATA["JCJXX"]}],
              ['教学与科研并重',  ${JSJKXYJSX_POST_DATA["JXKYBZX"]}],
              ['科研型',   0],
              ['社会服务型', ${JSJKXYJSX_POST_DATA["SHFWX"]}]
          ]
      }];

      var json1 = {};
      json1.chart = chartJSJKXYJS;
      json1.title = title1;
      json1.tooltip = tooltip1;
      json1.series = series1;
      json1.credits = credits;
      json1.plotOptions = plotOptions1;
      $('#canvas-holder').highcharts(json1);



      //      ==========================================================================================

      //      ==========================================================================================

      var chartDZXXGCX = {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
      };
      var title2 = {
          text: '电子信息工程系'
      };
      var tooltip2 = {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      };
      var plotOptions2 = {
          pie: {
              allowPointSelect: true,
              cursor: 'pointer',

              /**
               * colors: ['#7cb5ec', '#434348', '#90ed7d', '#f7a35c', '#8085e9',
               '#f15c80', '#e4d354', '#8085e8', '#8d4653', '#91e8e1']
               */

              colors:[
                  'blue', 'red', 'green' , '#f7a35c'
              ],

              dataLabels: {
                  enabled: true,
                  format: '<b>{point.name}</b>: {point.percentage:.1f}% ',
                  style: {
                      color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                  }
              }
          }
      };
      var series2= [{
          type: 'pie',
          name: '占比',
          data: [

              ['基础教学',  ${DZXXGCX_POST_DATA["JCJXX"]}],
              ['教学与科研并重',  ${DZXXGCX_POST_DATA["JXKYBZX"]}],
              ['科研型',   0],
              ['社会服务型', ${DZXXGCX_POST_DATA["SHFWX"]}]
          ]
      }];



      var json2 = {};
      json2.chart = chartDZXXGCX;
      json2.title = title2;
      json2.tooltip = tooltip2;
      json2.series = series2;
      json2.credits = credits;
      json2.plotOptions = plotOptions2;
      $('#canvas-holder1').highcharts(json2);

      //============================================================


      //      ==========================================================================================

      var chartDQYZDHX = {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
      };
      var title3 = {
          text: '电气与自动化系'
      };
      var tooltip3 = {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      };
      var plotOptions3 = {
          pie: {
              allowPointSelect: true,
              cursor: 'pointer',

              /**
               * colors: ['#7cb5ec', '#434348', '#90ed7d', '#f7a35c', '#8085e9',
               '#f15c80', '#e4d354', '#8085e8', '#8d4653', '#91e8e1']
               */

              colors:[
                  'blue', 'red', 'green' , '#f7a35c'
              ],

              dataLabels: {
                  enabled: true,
                  format: '<b>{point.name}</b>: {point.percentage:.1f}% ',
                  style: {
                      color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                  }
              }
          }
      };
      var series3= [{
          type: 'pie',
          name: '占比',
          data: [

              ['基础教学',  ${DQYZDHX_POST_DATA["JCJXX"]}],
              ['教学与科研并重',  ${DQYZDHX_POST_DATA["JXKYBZX"]}],
              ['科研型',   0],
              ['社会服务型', ${DQYZDHX_POST_DATA["SHFWX"]}]
          ]
      }];



      var json3 = {};
      json3.chart = chartDQYZDHX;
      json3.title = title3;
      json3.tooltip = tooltip3;
      json3.series = series3;
      json3.credits = credits;

      json3.plotOptions = plotOptions3;
      $('#canvas-holder2').highcharts(json3);

      //============================================================



      //      ==========================================================================================

      var chartJSZX = {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
      };
      var title4 = {
          text: '计算中心'
      };
      var tooltip4 = {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      };
      var plotOptions4 = {
          pie: {
              allowPointSelect: true,
              cursor: 'pointer',

              /**
               * colors: ['#7cb5ec', '#434348', '#90ed7d', '#f7a35c', '#8085e9',
               '#f15c80', '#e4d354', '#8085e8', '#8d4653', '#91e8e1']
               */

              colors:[
                  'blue', 'red', 'green' , '#f7a35c'
              ],

              dataLabels: {
                  enabled: true,
                  format: '<b>{point.name}</b>: {point.percentage:.1f}% ',
                  style: {
                      color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                  }
              }
          }
      };
      var series4= [{
          type: 'pie',
          name: '占比',
          data: [

              ['基础教学',  ${JSZX_POST_DATA["JCJXX"]}],
              ['教学与科研并重',  ${JSZX_POST_DATA["JXKYBZX"]}],
              ['科研型',   0],
              ['社会服务型', ${JSZX_POST_DATA["SHFWX"]}]
          ]
      }];



      var json4 = {};
      json4.chart = chartJSZX;
      json4.title = title4;
      json4.tooltip = tooltip4;
      json4.credits = credits;
      json4.series = series4;
      json4.plotOptions = plotOptions4;
      $('#canvas-holder3').highcharts(json4);

      //      ==========================================================================================

      //      ==========================================================================================

      var chartDGDZSYZX = {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
      };
      var title5 = {
          text: '电工电子实验中心'
      };
      var tooltip5 = {
          pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
      };
      var plotOptions5 = {
          pie: {
              allowPointSelect: true,
              cursor: 'pointer',

              /**
               * colors: ['#7cb5ec', '#434348', '#90ed7d', '#f7a35c', '#8085e9',
               '#f15c80', '#e4d354', '#8085e8', '#8d4653', '#91e8e1']
               */

              colors:[
                  'blue', 'red', 'green' , '#f7a35c'
              ],

              dataLabels: {
                  enabled: true,
                  format: '<b>{point.name}</b>: {point.percentage:.1f}% ',
                  style: {
                      color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                  }
              }
          }
      };
      var series5= [{
          type: 'pie',
          name: '占比',
          data: [

              ['基础教学',  ${DGDZSYZX_POST_DATA["JCJXX"]}],
              ['教学与科研并重',  ${DGDZSYZX_POST_DATA["JXKYBZX"]}],
              ['科研型',  0],
              ['社会服务型', ${DGDZSYZX_POST_DATA["SHFWX"]}]
          ]
      }];



      var json5 = {};
      json5.chart = chartDGDZSYZX;
      json5.title = title5;
      json5.tooltip = tooltip5;
      json5.series = series5;
      json5.credits = credits;

      json5.plotOptions = plotOptions5;
      $('#canvas-holder4').highcharts(json5);

      //      ==========================================================================================


      var config9 = {
          type: 'line',
          data: {
              labels: ["核定科室及人员", "领导配置", "处级", "科级", "一般管理岗", "教学科研", "其他专技岗位","专职辅导员","工勤","合计编制"],
              datasets: [{
                  label: "核定编制",
                  data: [
                      21,
                      9,
                      4,
                      7,
                      6,
                      215,
                      21,
                      10,
                      0,
                      263
                  ],
                  backgroundColor: window.chartColors.red,
                  borderColor: window.chartColors.red,
                  fill: false,
                  borderDash: [5, 5],
                  pointRadius: 5,
                  pointHoverRadius: 10,
              }, {
                  label: "人力资源现状",
                  data: [
                      19,
                      9,
                      4,
                      4,
                      8,
                      196,
                      40,
                      9,
                      1,
                      262

                  ],
                  backgroundColor: window.chartColors.blue,
                  borderColor: window.chartColors.blue,
                  fill: false,
                  borderDash: [5, 5],
                  pointRadius: 5,
                  pointHoverRadius: 10,
              }


              ]
          },
          options: {
              responsive: true,
              legend: {
                  position: 'bottom',
              },
              hover: {
                  mode: 'index'
              },
              scales: {
                  xAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: 'Month'
                      }
                  }],
                  yAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: 'Post'
                      }
                  }]
              },
              title: {
                  display: true,
              }
          }
      };

      //      ==========================================================================================

      //学院岗位数据对比分析


      var chart = {
          type: 'column'
      };
      var title = {
          text: '学院教学岗位数据对比分析'
      };
      var xAxis = {
          categories: ['计算机科学与技术系', '电子信息工程系', '电气与自动化系', '计算中心', '电工电子实验中心']
      };
      var yAxis ={
          min: 0,
          title: {
              text: '人数'
          },
          stackLabels: {
              enabled: true,
              style: {
                  fontWeight: 'bold',
                  color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
              }
          }
      };
      var legend = {
          align: 'right',
          x: -30,
          verticalAlign: 'top',
          y: 25,
          floating: true,
          backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || 'white',
          borderColor: '#CCC',
          borderWidth: 1,
          shadow: false
      };
      var tooltip = {
          formatter: function () {
              return '<b>' + this.x + '</b><br/>' +
                      this.series.name + ': ' + this.y + '<br/>' +
                      'Total: ' + this.point.stackTotal;
          }
      };
      var plotOptions = {
          column: {
              stacking: 'normal',
              dataLabels: {
                  enabled: true,
                  color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white',
                  style: {
                      textShadow: '0 0 3px black'
                  }
              }
          }
      };

      var series= [{
          name: '教师岗位',
          data: [${JSGW["JSJKXYJSX"]}, ${JSGW["DZXXGCX"]}, ${JSGW["DQYZDHGCX"]}, ${JSGW["JSZX"]}, ${JSGW["DGDZSYZX"]}]
      }, {
          name: '其它专业技术',
          data: [${QTZYJSGW["JSJKXYJSX"]}, ${QTZYJSGW["DZXXGCX"]}, ${QTZYJSGW["DQYZDHGCX"]}, ${QTZYJSGW["JSZX"]}, ${QTZYJSGW["DGDZSYZX"]}]
      }];

      var json = {};
      json.chart = chart;
      json.title = title;
      json.xAxis = xAxis;
      json.yAxis = yAxis;
      json.legend = legend;
      json.tooltip = tooltip;
      json.plotOptions = plotOptions;
      json.credits = credits;
      json.series = series;
      $('#canvas-holder10').highcharts(json);


      window.onload = function() {

          var ctx9 = document.getElementById("chart-area9").getContext("2d");

          window.myLine = new Chart(ctx9, config9);


      };


  </script>


  <footer role="contentinfo" id="fh5co-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <div class="footer-box border-bottom">
            <h3 class="footer-heading"> 关于我们</h3>
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
