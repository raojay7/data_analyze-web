<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>2010科研数据 </title>
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

    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>

    <!-- FOR IE9 below -->
    <!--[if lte IE 9]>
    <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/modernizr-2.6.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/respond.min.js"></script>
    <![endif]-->

  <script src="${pageContext.request.contextPath}/resource/front/chart_lib/Chart.bundle.js"></script>
  <script src="${pageContext.request.contextPath}/resource/front/chart_lib/samples/utils.js"></script>



</head>

<body class="fh5co-outer">
  <header id="fh5co-header" role="banner">
    
      <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header"> 
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

            </ul>
          </div>
        </div>
      </nav>

  </header>


  <div id="fh5co-page-title" style="background-image: url(${pageContext.request.contextPath}/resource/front/lib_one/images/index_bg.jpg)">
    <div class="overlay"></div>
    <div class="container">
      <div class="text">
        <h1>
          学院${YEAR}科研工作量分析
        </h1>
      </div>

    </div>
  </div>

  <main role="main" id="fh5co-main">

    <section class="grid-gallery">
      <div class="container">


          <div class="row gallery-row">

              <div class="col-md-12">


                  <ul class="resp-tabs-list hor_1">
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/project/work_data_research.do?YEAR=2010" style="text-decoration: none;color: blue">2010</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/project/work_data_research.do?YEAR=2011" style="text-decoration: none;color: blue">2011</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/project/work_data_research.do?YEAR=2012" style="text-decoration: none;color: blue">2012</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/project/work_data_research.do?YEAR=2013" style="text-decoration: none;color: blue">2013</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/project/work_data_research.do?YEAR=2014" style="text-decoration: none;color: blue">2014</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/project/work_data_research.do?YEAR=2015" style="text-decoration: none;color: blue">2015</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/project/work_data_research.do?YEAR=2016" style="text-decoration: none;color: blue">2016</a></li>
                  </ul>

              </div>
          </div>
          <hr/>



          <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">


                  <div id="canvas-holder4">
                  </div>

              </div>

          </div>

          <br/>
          <hr/>
          <br/>

          <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">


                  <div id="canvas-holder5">
                      <canvas id="chart-area5" />
                  </div>

              </div>

          </div>






        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">

            <h3 style="text-align: center">${YEAR}学院各单位总科研进账数据</h3>


            <div id="canvas-holder">
              <canvas id="chart-area" />
            </div>

              <table class="table table-bordered">
                  <caption><center>${YEAR}学院各单位总科研进账数据</center> </caption>
                  <thead>
                  <tr>
                      <th>单位名</th>
                      <th>科研进账(万元)</th>
                  </tr>
                  </thead>
                  <tbody>

                      <tr>
                          <td>计算机科学与技术系</td>
                          <td>${SumProjectMoneyData["JSJKXYJSX"]}</td>
                      </tr>
                      <tr>
                          <td>电子信息工程系</td>
                          <td>${SumProjectMoneyData["DZXXGCX"]}</td>
                      </tr>
                      <tr>
                          <td>电气与自动化系</td>
                          <td>${SumProjectMoneyData["DQYZDHGCX"]}</td>
                      </tr>
                      <tr>
                          <td>计算中心</td>
                          <td>${SumProjectMoneyData["JSZX"]}</td>
                      </tr>
                      <tr>
                          <td>电工电子实验中心</td>
                          <td>${SumProjectMoneyData["DGDZSYZX"]}</td>
                      </tr>

                  </tbody>
              </table>


          </div>

          <div class="col-md-6 col-sm-6">

            <h3 style="text-align: center">${YEAR}学院各单位平均科研进账数据</h3>


            <div id="canvas-holder1">
              <canvas id="chart-area1" />
            </div>

              <table class="table table-bordered">
                  <caption><center>${YEAR}学院各单位人均科研进账数据</center> </caption>
                  <thead>
                  <tr>
                      <th>单位名</th>
                      <th>科研进账(万元)</th>
                  </tr>
                  </thead>
                  <tbody>

                  <tr>
                      <td>计算机科学与技术系</td>
                      <td>${AveProjectMoneyData["JSJKXYJSX"]}</td>
                  </tr>
                  <tr>
                      <td>电子信息工程系</td>
                      <td>${AveProjectMoneyData["DZXXGCX"]}</td>
                  </tr>
                  <tr>
                      <td>电气与自动化系</td>
                      <td>${AveProjectMoneyData["DQYZDHGCX"]}</td>
                  </tr>
                  <tr>
                      <td>计算中心</td>
                      <td>${AveProjectMoneyData["JSZX"]}</td>
                  </tr>
                  <tr>
                      <td>电工电子实验中心</td>
                      <td>${AveProjectMoneyData["DGDZSYZX"]}</td>
                  </tr>

                  </tbody>
              </table>



          </div>
        </div>

          <br/>
          <center>

              <!-- 按钮触发模态框 -->
              <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                  所有老师科研进账（2010-2016）总和
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
                              所有老师科研进账（2010-2016）总和
                          </h4>
                      </div>
                      <div class="modal-body">

                          <table class="table table-bordered">
                              <caption><center>名单列表</center> </caption>
                              <thead>
                              <tr>
                                  <th>序号</th>
                                  <th>姓名</th>
                                  <th>金额（万元）</th>
                              </tr>
                              </thead>
                              <tbody>
                              <c:forEach var="items" varStatus="st" items="${AllTeacherSumMoneyData}">
                                  <tr>
                                      <td>${st.count}</td>
                                      <td>${items.key}</td>
                                      <td>${items.value}</td>
                                  </tr>
                              </c:forEach>
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
          <br/>
          <center>

              <!-- 按钮触发模态框 -->
              <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal1">
                  ${YEAR}-所有老师科研进账总和
              </button>
          </center>
          <!-- 模态框（Modal） -->
          <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                              &times;
                          </button>
                          <h4 class="modal-title" id="myModalLabel1">
                              ${YEAR}-所有老师科研进账总和
                          </h4>
                      </div>
                      <div class="modal-body">

                          <table class="table table-bordered">
                              <caption><center>名单列表</center> </caption>
                              <thead>
                              <tr>
                                  <th>序号</th>
                                  <th>姓名</th>
                                  <th>金额（万元）</th>
                              </tr>
                              </thead>
                              <tbody>
                              <c:forEach var="items" varStatus="st" items="${TeacherYearSumMoneyData}">
                                  <tr>
                                      <td>${st.count}</td>
                                      <td>${items.key}</td>
                                      <td>${items.value}</td>
                                  </tr>
                              </c:forEach>
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


        <br>
        <hr>
        <br>






        <div class="row gallery-row">

          <div class="col-md-6 col-sm-6">

            <h3 style="text-align: center">${YEAR}学院各单位总发表论文(SCI)</h3>


            <div id="canvas-holder3">
              <canvas id="chart-area3" />
            </div>


          </div>

            <div class="col-md-6 col-sm-6">


                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>


                <table class="table table-bordered">
                    <caption><center>${YEAR}学院各单位总发表论文(SCI)</center> </caption>
                    <thead>
                    <tr>
                        <th>单位名</th>
                        <th>论文篇数</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td>计算机科学与技术系</td>
                        <td>${PaperNumber["JSJKXYJSX"]}</td>
                    </tr>
                    <tr>
                        <td>电子信息工程系</td>
                        <td>${PaperNumber["DZXXGCX"]}</td>
                    </tr>
                    <tr>
                        <td>电气与自动化系</td>
                        <td>${PaperNumber["DQYZDHGCX"]}</td>
                    </tr>
                    <tr>
                        <td>计算中心</td>
                        <td>${PaperNumber["JSZX"]}</td>
                    </tr>
                    <tr>
                        <td>电工电子实验中心</td>
                        <td> ${PaperNumber["DGDZSYZX"]}</td>
                    </tr>

                    </tbody>
                </table>



            </div>

        </div>

        <br>
        <hr>
        <br>

      </div>
    </section>

  </main>

  <script>





      //      ==========================================================================================

      //颜色定义
      var color = Chart.helpers.color;

      //总科研进账
    var config = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "单位总科研进账(万元)",
                    backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.yellow,
                    pointBackgroundColor: window.chartColors.yellow,
                    data: [
                        ${SumProjectMoneyData["JSJKXYJSX"]},
                        ${SumProjectMoneyData["DZXXGCX"]},
                        ${SumProjectMoneyData["DQYZDHGCX"]},
                        ${SumProjectMoneyData["JSZX"]},
                        ${SumProjectMoneyData["DGDZSYZX"]}

                    ]
                },

                {
                    label: "学院平均总科研进账(万元)",
                    backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.blue,
                    pointBackgroundColor: window.chartColors.blue,
                    data: [
                        ${(SumProjectMoneyData["JSJKXYJSX"] + SumProjectMoneyData["DZXXGCX"] + SumProjectMoneyData["DQYZDHGCX"] +SumProjectMoneyData["JSZX"] + SumProjectMoneyData["DGDZSYZX"]) / 5 },
                        ${(SumProjectMoneyData["JSJKXYJSX"] + SumProjectMoneyData["DZXXGCX"] + SumProjectMoneyData["DQYZDHGCX"] +SumProjectMoneyData["JSZX"] + SumProjectMoneyData["DGDZSYZX"]) / 5 },
                        ${(SumProjectMoneyData["JSJKXYJSX"] + SumProjectMoneyData["DZXXGCX"] + SumProjectMoneyData["DQYZDHGCX"] +SumProjectMoneyData["JSZX"] + SumProjectMoneyData["DGDZSYZX"]) / 5 },
                        ${(SumProjectMoneyData["JSJKXYJSX"] + SumProjectMoneyData["DZXXGCX"] + SumProjectMoneyData["DQYZDHGCX"] +SumProjectMoneyData["JSZX"] + SumProjectMoneyData["DGDZSYZX"]) / 5 },
                        ${(SumProjectMoneyData["JSJKXYJSX"] + SumProjectMoneyData["DZXXGCX"] + SumProjectMoneyData["DQYZDHGCX"] +SumProjectMoneyData["JSZX"] + SumProjectMoneyData["DGDZSYZX"]) / 5 }
                    ]
                }


            ]
        },
        options: {
            legend: {
                position: 'bottom',
            },
            title: {
                display: true,
            },
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    };


    //  平均科研进账

    var config1 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "单位人均科研进账(万元)",
                    backgroundColor: color(window.chartColors.yellow).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.yellow,
                    pointBackgroundColor: window.chartColors.yellow,
                    data: [
                        ${AveProjectMoneyData["JSJKXYJSX"]},
                        ${AveProjectMoneyData["DZXXGCX"]},
                        ${AveProjectMoneyData["DQYZDHGCX"]},
                        ${AveProjectMoneyData["JSZX"]},
                        ${AveProjectMoneyData["DGDZSYZX"]}
                    ]
                },
                {
                    label: "学院人均科研进账(万元)",
                    backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.blue,
                    pointBackgroundColor: window.chartColors.blue,
                    data: [
                        ${AveProjectMoneyData["QY"]},
                        ${AveProjectMoneyData["QY"]},
                        ${AveProjectMoneyData["QY"]},
                        ${AveProjectMoneyData["QY"]},
                        ${AveProjectMoneyData["QY"]}
                    ]
                }


            ]
        },
        options: {
            legend: {
                position: 'bottom',
            },
            title: {
                display: true,
            },
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    };




    //各学院论文发表总数
    var config3 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "篇",
                    backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.blue,
                    pointBackgroundColor: window.chartColors.blue,
                    data: [
                        ${PaperNumber["JSJKXYJSX"]},
                        ${PaperNumber["DZXXGCX"]},
                        ${PaperNumber["DQYZDHGCX"]},
                        ${PaperNumber["JSZX"]},
                        ${PaperNumber["DGDZSYZX"]}

                    ]
                }


            ]
        },
        options: {
            legend: {
                position: 'bottom',
            },
            title: {
                display: true,
            },
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    };

//



      //  2010-2016人均科研进账数据

      //去水印
      var credits = {
          enabled: false
      };

      //=======================
      var title = {
          text: '2010-2016全学院人均科研进据数据分析'
      };


      var xAxis = {
          categories: ['2010年', '2011年', '2012年', '2013年', '2014年', '2015年',
              '2016年']
      };
      var yAxis = {
          title: {
              text: '人均科研进账（万元）'
          },
          tickPositions: [0,1,2,3,4,5,6,7,8,9,10,11,12,13] // 指定竖轴坐标点的值
      };

      var plotOptions = {
          line: {
              dataLabels: {
                  enabled: true
              },
              enableMouseTracking: false
          }
      };
      var series= [

          {
              name: '学院总',
              data: [
                  ${AveProjectMoneyData2010["QY"]},
                  ${AveProjectMoneyData2011["QY"]},
                  ${AveProjectMoneyData2012["QY"]},
                  ${AveProjectMoneyData2013["QY"]},
                  ${AveProjectMoneyData2014["QY"]},
                  ${AveProjectMoneyData2015["QY"]},
                  ${AveProjectMoneyData2016["QY"]}

              ]
          },
          {
              name: '计算机科学与技术系',
              data: [
                  ${AveProjectMoneyData2010["JSJKXYJSX"]},
                  ${AveProjectMoneyData2011["JSJKXYJSX"]},
                  ${AveProjectMoneyData2012["JSJKXYJSX"]},
                  ${AveProjectMoneyData2013["JSJKXYJSX"]},
                  ${AveProjectMoneyData2014["JSJKXYJSX"]},
                  ${AveProjectMoneyData2015["JSJKXYJSX"]},
                  ${AveProjectMoneyData2016["JSJKXYJSX"]}
              ]
          },
          {
              name: '电子信息工程系',
              data: [
                  ${AveProjectMoneyData2010["DZXXGCX"]},
                  ${AveProjectMoneyData2011["DZXXGCX"]},
                  ${AveProjectMoneyData2012["DZXXGCX"]},
                  ${AveProjectMoneyData2013["DZXXGCX"]},
                  ${AveProjectMoneyData2014["DZXXGCX"]},
                  ${AveProjectMoneyData2015["DZXXGCX"]},
                  ${AveProjectMoneyData2016["DZXXGCX"]}
              ]
          },

          {
              name: '电气与自动化系',
              data: [
                  ${AveProjectMoneyData2010["DQYZDHGCX"]},
                  ${AveProjectMoneyData2011["DQYZDHGCX"]},
                  ${AveProjectMoneyData2012["DQYZDHGCX"]},
                  ${AveProjectMoneyData2013["DQYZDHGCX"]},
                  ${AveProjectMoneyData2014["DQYZDHGCX"]},
                  ${AveProjectMoneyData2015["DQYZDHGCX"]},
                  ${AveProjectMoneyData2016["DQYZDHGCX"]}
              ]
          },
          {
              name: '计算中心',
              data: [
                  ${AveProjectMoneyData2010["JSZX"]},
                  ${AveProjectMoneyData2011["JSZX"]},
                  ${AveProjectMoneyData2012["JSZX"]},
                  ${AveProjectMoneyData2013["JSZX"]},
                  ${AveProjectMoneyData2014["JSZX"]},
                  ${AveProjectMoneyData2015["JSZX"]},
                  ${AveProjectMoneyData2016["JSZX"]}
              ]
          }
          ,
          {
              name: '电工电子实验中心',
              data: [
                  ${AveProjectMoneyData2010["DGDZSYZX"]},
                  ${AveProjectMoneyData2011["DGDZSYZX"]},
                  ${AveProjectMoneyData2012["DGDZSYZX"]},
                  ${AveProjectMoneyData2013["DGDZSYZX"]},
                  ${AveProjectMoneyData2014["DGDZSYZX"]},
                  ${AveProjectMoneyData2015["DGDZSYZX"]},
                  ${AveProjectMoneyData2016["DGDZSYZX"]}
              ]
          },
      ];

      var json = {};

      json.title = title;
      json.xAxis = xAxis;
      json.yAxis = yAxis;
      json.series = series;
      json.credits = credits;
      json.plotOptions = plotOptions;
      $('#canvas-holder4').highcharts(json);
      //===========



      var config4 = {
          type: 'line',
          data: {
              labels: ["2010", "2011", "2012", "2013", "2014", "2015", "2016"],
              datasets: [

                  {
                      label: "学院总人均科研进账",
                      backgroundColor: window.chartColors.red,
                      borderColor: window.chartColors.red,
                      data: [
                          ${AveProjectMoneyData2010["QY"]},
                          ${AveProjectMoneyData2011["QY"]},
                          ${AveProjectMoneyData2012["QY"]},
                          ${AveProjectMoneyData2013["QY"]},
                          ${AveProjectMoneyData2014["QY"]},
                          ${AveProjectMoneyData2015["QY"]},
                          ${AveProjectMoneyData2016["QY"]}
                      ],
                      fill: false,
                  }

                  , {
                      label: "计算机科学与技术系人均科研进账",
                      fill: false,
                      backgroundColor: window.chartColors.blue,
                      borderColor: window.chartColors.blue,
                      data: [
                          ${AveProjectMoneyData2010["JSJKXYJSX"]},
                          ${AveProjectMoneyData2011["JSJKXYJSX"]},
                          ${AveProjectMoneyData2012["JSJKXYJSX"]},
                          ${AveProjectMoneyData2013["JSJKXYJSX"]},
                          ${AveProjectMoneyData2014["JSJKXYJSX"]},
                          ${AveProjectMoneyData2015["JSJKXYJSX"]},
                          ${AveProjectMoneyData2016["JSJKXYJSX"]}
                      ],}

                  , {
                      label: "电子信息工程系人均科研进账",
                      fill: false,
                      backgroundColor: window.chartColors.green,
                      borderColor: window.chartColors.green,
                      data: [
                          ${AveProjectMoneyData2010["DZXXGCX"]},
                          ${AveProjectMoneyData2011["DZXXGCX"]},
                          ${AveProjectMoneyData2012["DZXXGCX"]},
                          ${AveProjectMoneyData2013["DZXXGCX"]},
                          ${AveProjectMoneyData2014["DZXXGCX"]},
                          ${AveProjectMoneyData2015["DZXXGCX"]},
                          ${AveProjectMoneyData2016["DZXXGCX"]}
                      ],}

                  , {
                      label: "电气与自动化系人均科研进账",
                      fill: false,
                      backgroundColor: window.chartColors.yellow,
                      borderColor: window.chartColors.yellow,
                      data: [
                          ${AveProjectMoneyData2010["DQYZDHGCX"]},
                          ${AveProjectMoneyData2011["DQYZDHGCX"]},
                          ${AveProjectMoneyData2012["DQYZDHGCX"]},
                          ${AveProjectMoneyData2013["DQYZDHGCX"]},
                          ${AveProjectMoneyData2014["DQYZDHGCX"]},
                          ${AveProjectMoneyData2015["DQYZDHGCX"]},
                          ${AveProjectMoneyData2016["DQYZDHGCX"]}
                      ],}

                  , {
                      label: "计算中心人均科研进账",
                      fill: false,
                      backgroundColor: window.chartColors.purple,
                      borderColor: window.chartColors.purple,
                      data: [
                          ${AveProjectMoneyData2010["JSZX"]},
                          ${AveProjectMoneyData2011["JSZX"]},
                          ${AveProjectMoneyData2012["JSZX"]},
                          ${AveProjectMoneyData2013["JSZX"]},
                          ${AveProjectMoneyData2014["JSZX"]},
                          ${AveProjectMoneyData2015["JSZX"]},
                          ${AveProjectMoneyData2016["JSZX"]}
                      ],}

                  , {
                      label: "电工电子实验中心人均科研进账",
                      fill: false,
                      backgroundColor: window.chartColors.color8,
                      borderColor: window.chartColors.color8,
                      data: [
                          ${AveProjectMoneyData2010["DGDZSYZX"]},
                          ${AveProjectMoneyData2011["DGDZSYZX"]},
                          ${AveProjectMoneyData2012["DGDZSYZX"]},
                          ${AveProjectMoneyData2013["DGDZSYZX"]},
                          ${AveProjectMoneyData2014["DGDZSYZX"]},
                          ${AveProjectMoneyData2015["DGDZSYZX"]},
                          ${AveProjectMoneyData2016["DGDZSYZX"]}
                      ],}


              ]
          },
          options: {
              responsive: true,
              title:{
                  display:true,
                  text:'2010-2016全学院人均科研进账数据整体分析'
              },
              tooltips: {
                  mode: 'index',
                  intersect: false,
              },
              hover: {
                  mode: 'nearest',
                  intersect: true
              },
              scales: {
                  xAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: '年份：'
                      }
                  }],
                  yAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: '时间（小时）：'
                      }
                  }]
              }
          }
      };


      //      2010-2016人均SCI论文数据

      var config5 = {
          type: 'line',
          data: {
              labels: ["2010", "2011", "2012", "2013", "2014", "2015", "2016"],
              datasets: [

                  {
                      label: "学院总",
                      backgroundColor: window.chartColors.red,
                      borderColor: window.chartColors.red,
                      data: [
                          ${PaperNumber2010["QY"]},
                          ${PaperNumber2011["QY"]},
                          ${PaperNumber2012["QY"]},
                          ${PaperNumber2013["QY"]},
                          ${PaperNumber2014["QY"]},
                          ${PaperNumber2015["QY"]},
                          ${PaperNumber2016["QY"]}
                      ],
                      fill: false,
                  }

                  , {
                      label: "计算机科学与技术系",
                      fill: false,
                      backgroundColor: window.chartColors.blue,
                      borderColor: window.chartColors.blue,
                      data: [
                          ${PaperNumber2010["JSJKXYJSX"]},
                          ${PaperNumber2011["JSJKXYJSX"]},
                          ${PaperNumber2012["JSJKXYJSX"]},
                          ${PaperNumber2013["JSJKXYJSX"]},
                          ${PaperNumber2014["JSJKXYJSX"]},
                          ${PaperNumber2015["JSJKXYJSX"]},
                          ${PaperNumber2016["JSJKXYJSX"]}
                      ],}

                  , {
                      label: "电子信息工程系",
                      fill: false,
                      backgroundColor: window.chartColors.green,
                      borderColor: window.chartColors.green,
                      data: [
                          ${PaperNumber2010["DZXXGCX"]},
                          ${PaperNumber2011["DZXXGCX"]},
                          ${PaperNumber2012["DZXXGCX"]},
                          ${PaperNumber2013["DZXXGCX"]},
                          ${PaperNumber2014["DZXXGCX"]},
                          ${PaperNumber2015["DZXXGCX"]},
                          ${PaperNumber2016["DZXXGCX"]}
                      ],}

                  , {
                      label: "电气与自动化系",
                      fill: false,
                      backgroundColor: window.chartColors.yellow,
                      borderColor: window.chartColors.yellow,
                      data: [
                          ${PaperNumber2010["DQYZDHGCX"]},
                          ${PaperNumber2011["DQYZDHGCX"]},
                          ${PaperNumber2012["DQYZDHGCX"]},
                          ${PaperNumber2013["DQYZDHGCX"]},
                          ${PaperNumber2014["DQYZDHGCX"]},
                          ${PaperNumber2015["DQYZDHGCX"]},
                          ${PaperNumber2016["DQYZDHGCX"]}
                      ],}

                  , {
                      label: "计算中心",
                      fill: false,
                      backgroundColor: window.chartColors.purple,
                      borderColor: window.chartColors.purple,
                      data: [
                          ${PaperNumber2010["JSZX"]},
                          ${PaperNumber2011["JSZX"]},
                          ${PaperNumber2012["JSZX"]},
                          ${PaperNumber2013["JSZX"]},
                          ${PaperNumber2014["JSZX"]},
                          ${PaperNumber2015["JSZX"]},
                          ${PaperNumber2016["JSZX"]}
                      ],}

                  , {
                      label: "电工电子实验中心",
                      fill: false,
                      backgroundColor: window.chartColors.color8,
                      borderColor: window.chartColors.color8,
                      data: [
                          ${PaperNumber2010["DGDZSYZX"]},
                          ${PaperNumber2011["DGDZSYZX"]},
                          ${PaperNumber2012["DGDZSYZX"]},
                          ${PaperNumber2013["DGDZSYZX"]},
                          ${PaperNumber2014["DGDZSYZX"]},
                          ${PaperNumber2015["DGDZSYZX"]},
                          ${PaperNumber2016["DGDZSYZX"]}
                      ],}


              ]
          },
          options: {
              responsive: true,
              legend: {
                  position: 'bottom',
              },
              title:{
                  display:true,
                  text:'2010-2016全学院SCI论文发表总数数据整体分析'
              },
              tooltips: {
                  mode: 'index',
                  intersect: false,
              },
              hover: {
                  mode: 'nearest',
                  intersect: true
              },
              scales: {
                  xAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: '年份：'
                      }
                  }],
                  yAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: 'SCI论文发表篇数'
                      }
                  }]
              }
          }
      };





      window.onload = function () {

          var ctx = document.getElementById("chart-area").getContext("2d");
          var ctx1 = document.getElementById("chart-area1").getContext("2d");
          var ctx3 = document.getElementById("chart-area3").getContext("2d");
          var ctx5 = document.getElementById("chart-area5").getContext("2d");

          window.myRadar = new Chart(ctx,config);
          window.myRadar = new Chart(ctx1,config1);
          window.myRadar = new Chart(ctx3,config3);
          window.Line = new Chart(ctx5,config5);




    }

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
