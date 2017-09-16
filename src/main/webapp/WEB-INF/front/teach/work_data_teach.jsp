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
  <title>学院${YEAR}教学工作量数据分析 </title>
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

    <!-- Google Webfont -->
    <!--
     -->
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


    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
          学院${YEAR}教学数据分析结果
        </h1>
      </div>

    </div>
  </div>


  <main role="main" id="fh5co-main">

	<div class="copyrights">copy right @ <a href="#" >UP-VAMS工作室</a></div>
    <section class="grid-gallery">
      <div class="container">

          <div class="row gallery-row">

              <div class="col-md-12">

                  <ul class="resp-tabs-list hor_1">
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2010" style="text-decoration: none;color: blue">2010</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2011" style="text-decoration: none;color: blue">2011</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2012" style="text-decoration: none;color: blue">2012</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2013" style="text-decoration: none;color: blue">2013</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2014" style="text-decoration: none;color: blue">2014</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2015" style="text-decoration: none;color: blue">2015</a></li>
                      <li><i class="fh5co-tab-menu-icon ti-alarm-clock"></i><a href="${pageContext.request.contextPath}/teach/work_data_teach.do?YEAR=2016" style="text-decoration: none;color: blue">2016</a></li>
                  </ul>

              </div>
          </div>
          <hr/>

          <%--模型旧人均--%>

          <div class="row gallery-row">
              <div class="col-md-12">
                  <div id="canvas-holder6">
                  </div>
              </div>
          </div>

          <%--模型旧总--%>
          <div class="row gallery-row">
              <div class="col-md-12">
                  <div id="canvas-holder7">
                  </div>
              </div>
          </div>

          <%--模型二人均--%>
          <div class="row gallery-row">
              <div class="col-md-12">
                  <div id="canvas-holder8">
                  </div>
              </div>
          </div>

          <%--模型二总的--%>
          <div class="row gallery-row">
              <div class="col-md-12">
                  <div id="canvas-holder9">
                  </div>
              </div>
          </div>



          <div class="row gallery-row">
          <div class="col-md-6 col-sm-6">

            <h3 style="text-align: center">${YEAR}学院各单位专任教师总教学工作量数据</h3>

            <div id="canvas-holder">
              <canvas id="chart-area" />
            </div>
              <br/>
              <%--模型旧算的前10--%>

              <center>
                  <table class="table table-bordered">
                      <caption><center>${YEAR}计算机科学与技术系教学工作量前十（旧模型）</center> </caption>
                      <thead>
                      <tr>
                          <th>排名</th>
                          <th>姓名</th>
                          <th>教学工作量</th>
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="items" varStatus="st" items="${JSJKXYJS_FirstToFiveTeachData}">
                          <tr>
                              <td>${st.count}</td>
                              <td>${items.key}</td>
                              <td>${items.value}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </center>
              <br/>
              <center>
                  <table class="table table-bordered">
                      <caption><center>${YEAR}电工电子实验中心教学工作量前十（旧模型）</center> </caption>
                      <thead>
                      <tr>
                          <th>排名</th>
                          <th>姓名</th>
                          <th>教学工作量</th>
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="items" items="${DGDZSYZX_FirstToFiveTeachData}" varStatus="st" >
                          <tr>
                              <td>${st.count}</td>
                              <td>${items.key}</td>
                              <td>${items.value}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </center>
              <br/>
              <center>
                  <table class="table table-bordered">
                      <caption><center>${YEAR}电气与自动化系教学工作量前十（旧模型）</center> </caption>
                      <thead>
                      <tr>
                          <th>排名</th>
                          <th>姓名</th>
                          <th>教学工作量</th>
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="items" items="${DQYZDHGCX_FirstToFiveTeachData}" varStatus="st" >
                          <tr>
                              <td>${st.count}</td>
                              <td>${items.key}</td>
                              <td>${items.value}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </center>
              <br/>
              <center>
                  <table class="table table-bordered">
                      <caption><center>${YEAR}计算中心教学工作量前十（旧模型）</center> </caption>
                      <thead>
                      <tr>
                          <th>排名</th>
                          <th>姓名</th>
                          <th>教学工作量</th>
                      </tr>
                      </thead>
                      <tbody>

                      <c:forEach var="items" items="${JSZX_FirstToFiveTeachData}" varStatus="st">
                          <tr>
                              <td>${st.count}</td>

                              <td>${items.key}</td>
                              <td>${items.value}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </center>
              <br/>
              <center>
                  <table class="table table-bordered">
                      <caption><center>${YEAR}电子信息工程系教学工作量前十（旧模型）</center> </caption>
                      <thead>
                      <tr>
                          <th>排名</th>
                          <th>姓名</th>
                          <th>教学工作量</th>
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="items" items="${DZXXGCX_FirstToFiveTeachData}" varStatus="st">
                          <tr>
                              <td>${st.count}</td>
                              <td>${items.key}</td>
                              <td>${items.value}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </center>
          </div>

          <div class="col-md-6 col-sm-6">

            <h3 style="text-align: center">${YEAR}学院各单位专任教师平均教学工作量数据</h3>

            <div id="canvas-holder1">
              <canvas id="chart-area1" />
            </div>

              <br/>
              <%--模型二算的前10--%>

              <center>
                  <table class="table table-bordered">
                      <caption><center>${YEAR}计算机科学与技术系教学工作量前十（新模型）</center> </caption>
                      <thead>
                      <tr>
                          <th>排名</th>
                          <th>姓名</th>
                          <th>教学工作量</th>
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="items" varStatus="st" items="${JSJKXYJS_FirstToFiveTeachDataNew}">
                          <tr>
                              <td>${st.count}</td>
                              <td>${items.key}</td>
                              <td>${items.value}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </center>
              <br/>
              <center>
                  <table class="table table-bordered">
                      <caption><center>${YEAR}电工电子实验中心教学工作量前十（新模型）</center> </caption>
                      <thead>
                      <tr>
                          <th>排名</th>
                          <th>姓名</th>
                          <th>教学工作量</th>
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="items" items="${DGDZSYZX_FirstToFiveTeachDataNew}" varStatus="st" >
                          <tr>
                              <td>${st.count}</td>
                              <td>${items.key}</td>
                              <td>${items.value}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </center>
              <br/>
              <center>
                  <table class="table table-bordered">
                      <caption><center>${YEAR}电气与自动化系教学工作量前十（新模型）</center> </caption>
                      <thead>
                      <tr>
                          <th>排名</th>
                          <th>姓名</th>
                          <th>教学工作量</th>
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="items" items="${DQYZDHGCX_FirstToFiveTeachDataNew}" varStatus="st" >
                          <tr>
                              <td>${st.count}</td>
                              <td>${items.key}</td>
                              <td>${items.value}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </center>
              <br/>
              <center>
                  <table class="table table-bordered">
                      <caption><center>${YEAR}计算中心教学工作量前十（新模型）</center> </caption>
                      <thead>
                      <tr>
                          <th>排名</th>
                          <th>姓名</th>
                          <th>教学工作量</th>
                      </tr>
                      </thead>
                      <tbody>

                      <c:forEach var="items" items="${JSZX_FirstToFiveTeachDataNew}" varStatus="st">
                          <tr>
                              <td>${st.count}</td>
                              <td>${items.key}</td>
                              <td>${items.value}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </center>
              <br/>
              <center>
                  <table class="table table-bordered">
                      <caption><center>${YEAR}电子信息工程系教学工作量前十（新模型）</center> </caption>
                      <thead>
                      <tr>
                          <th>排名</th>
                          <th>姓名</th>
                          <th>教学工作量</th>
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="items" items="${DZXXGCX_FirstToFiveTeachDataNew}" varStatus="st">
                          <tr>
                              <td>${st.count}</td>
                              <td>${items.key}</td>
                              <td>${items.value}</td>
                          </tr>
                      </c:forEach>
                      </tbody>
                  </table>
              </center>
          </div>
        </div>
      </div>
    </section>
  </main>
  <script>
      /**
       * 学院各单位专任教师总教学工作量数据-雷达图
       *
       **/
       //颜色定义
      var color = Chart.helpers.color;

      var config = {
          type: 'radar',
          data: {
              labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
              datasets: [

                  {
                      label: "单位总教学工作量(小时)",
                      backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.red,
                      pointBackgroundColor: window.chartColors.red,
                      data: [

                           ${SumTeachData["JSJKXYJSX"]},
                           ${SumTeachData["DZXXGCX"]},
                           ${SumTeachData["DQYZDHGCX"]},
                           ${SumTeachData["JSZX"]},
                           ${SumTeachData["DGDZSYZX"]},

                      ]
                  },
                  {
                      label: "学院总教学工作量(小时)",
                      backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.blue,
                      pointBackgroundColor: window.chartColors.blue,
                      data: [

                          ${SumTeachData["XY"]},
                          ${SumTeachData["XY"]},
                          ${SumTeachData["XY"]},
                          ${SumTeachData["XY"]},
                          ${SumTeachData["XY"]},


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

      /**
       *
       * 学院各单位专任教师人均教学工作量数据-雷达图
       * */

      var config1 = {
        type: 'radar',
        data: {
            labels: ["计算机科学与技术系",  "电子信息工程系", "电气与自动化工程系", "计算中心","电工电子实验中心"],
            datasets: [

                {
                    label: "单位人均教学工作量(小时)",
                    backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.red,
                    pointBackgroundColor: window.chartColors.red,
                    data: [
                        ${AveTeachData["JSJKXYJSX"]},
                        ${AveTeachData["DZXXGCX"]},
                        ${AveTeachData["DQYZDHGCX"]},
                        ${AveTeachData["JSZX"]},
                        ${AveTeachData["DGDZSYZX"]}
                    ]
                }
                ,
                {
                    label: "学院人均总教学工作量(小时)",
                    backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.blue,
                    pointBackgroundColor: window.chartColors.blue,
                    data: [

                        ${AveTeachData["XY"]},
                        ${AveTeachData["XY"]},
                        ${AveTeachData["XY"]},
                        ${AveTeachData["XY"]},
                        ${AveTeachData["XY"]},
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


      //去水印
      var credits = {
          enabled: false
      };

      /**
       *
       * 2010-2016全学院人均教学工作量数据整体分析(模型一)
       * 什么都算，就是算岗贴的
       *
       */

      var title = {
          text: '2010-2016全学院人均教学工作量数据整体分析(旧模型)'
      };

      var xAxis = {
          categories: ['2010年', '2011年', '2012年', '2013年', '2014年', '2015年',
              '2016年']
      };
      var yAxis = {
          title: {
              text: '人均教学工作量（小时）'
          },
          tickPositions: [0,100,200,300,400,500,600] // 指定竖轴坐标点的值
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
              ${TeachData2010["XY"]},
              ${TeachData2011["XY"]},
              ${TeachData2012["XY"]},
              ${TeachData2013["XY"]},
              ${TeachData2014["XY"]},
              ${TeachData2015["XY"]},
              ${TeachData2016["XY"]}]
          },
          {
          name: '计算机科学与技术系',
          data: [
              ${TeachData2010["JSJKXYJSX"]},
              ${TeachData2011["JSJKXYJSX"]},
              ${TeachData2012["JSJKXYJSX"]},
              ${TeachData2013["JSJKXYJSX"]},
              ${TeachData2014["JSJKXYJSX"]},
              ${TeachData2015["JSJKXYJSX"]},
              ${TeachData2016["JSJKXYJSX"]}]
        },
          {
              name: '电子信息工程系',
              data: [
              ${TeachData2010["DZXXGCX"]},
              ${TeachData2011["DZXXGCX"]},
              ${TeachData2012["DZXXGCX"]},
              ${TeachData2013["DZXXGCX"]},
              ${TeachData2014["DZXXGCX"]},
              ${TeachData2015["DZXXGCX"]},
              ${TeachData2016["DZXXGCX"]}
              ]
          },

          {
              name: '电气与自动化系',
              data: [
                  ${TeachData2010["DQYZDHGCX"]},
                  ${TeachData2011["DQYZDHGCX"]},
                  ${TeachData2012["DQYZDHGCX"]},
                  ${TeachData2013["DQYZDHGCX"]},
                  ${TeachData2014["DQYZDHGCX"]},
                  ${TeachData2015["DQYZDHGCX"]},
                  ${TeachData2016["DQYZDHGCX"]}]
          },
          {
              name: '计算中心',
              data: [
                  ${TeachData2010["JSZX"]},
                  ${TeachData2011["JSZX"]},
                  ${TeachData2012["JSZX"]},
                  ${TeachData2013["JSZX"]},
                  ${TeachData2014["JSZX"]},
                  ${TeachData2015["JSZX"]},
                  ${TeachData2016["JSZX"]}]
          }
          ,
          {
              name: '电工电子实验中心',
              data: [
                  ${TeachData2010["DGDZSYZX"]},
                  ${TeachData2011["DGDZSYZX"]},
                  ${TeachData2012["DGDZSYZX"]},
                  ${TeachData2013["DGDZSYZX"]},
                  ${TeachData2014["DGDZSYZX"]},
                  ${TeachData2015["DGDZSYZX"]},
                  ${TeachData2016["DGDZSYZX"]}]
          },
      ];

      var json = {};

      json.title = title;
      json.xAxis = xAxis;
      json.yAxis = yAxis;
      json.series = series;
      json.credits = credits;
      json.plotOptions = plotOptions;
      $('#canvas-holder6').highcharts(json);



      /**
       * 2010-2016全学院人均教学工作量数据整体分析（模型二）
       * 算理论课时还有实验课时
       */

      var title1 = {
          text: '2010-2016全学院人均教学工作量数据整体分析（新模型）'
      };

      var xAxis1 = {
          categories: ['2010年', '2011年', '2012年', '2013年', '2014年', '2015年',
              '2016年']
      };
      var yAxis1 = {
          title: {
              text: '人均教学工作量（小时）'
          },
          tickPositions: [0,50,100,150,200,250,300] // 指定竖轴坐标点的值
      };

      var plotOptions1 = {
          line: {
              dataLabels: {
                  enabled: true
              },
              enableMouseTracking: false
          }
      };
      var series1= [

          {
              name: '学院总',
              data: [
                  ${RealTeachData2010["XY"]},
                  ${RealTeachData2011["XY"]},
                  ${RealTeachData2012["XY"]},
                  ${RealTeachData2013["XY"]},
                  ${RealTeachData2014["XY"]},
                  ${RealTeachData2015["XY"]},
                  ${RealTeachData2016["XY"]}]
          },
          {
              name: '计算机科学与技术系',
              data: [
                  ${RealTeachData2010["JSJKXYJSX"]},
                  ${RealTeachData2011["JSJKXYJSX"]},
                  ${RealTeachData2012["JSJKXYJSX"]},
                  ${RealTeachData2013["JSJKXYJSX"]},
                  ${RealTeachData2014["JSJKXYJSX"]},
                  ${RealTeachData2015["JSJKXYJSX"]},
                  ${RealTeachData2016["JSJKXYJSX"]}]
          },
          {
              name: '电子信息工程系',
              data: [
                  ${RealTeachData2010["DZXXGCX"]},
                  ${RealTeachData2011["DZXXGCX"]},
                  ${RealTeachData2012["DZXXGCX"]},
                  ${RealTeachData2013["DZXXGCX"]},
                  ${RealTeachData2014["DZXXGCX"]},
                  ${RealTeachData2015["DZXXGCX"]},
                  ${RealTeachData2016["DZXXGCX"]}
              ]
          },

          {
              name: '电气与自动化系',
              data: [
                  ${RealTeachData2010["DQYZDHGCX"]},
                  ${RealTeachData2011["DQYZDHGCX"]},
                  ${RealTeachData2012["DQYZDHGCX"]},
                  ${RealTeachData2013["DQYZDHGCX"]},
                  ${RealTeachData2014["DQYZDHGCX"]},
                  ${RealTeachData2015["DQYZDHGCX"]},
                  ${RealTeachData2016["DQYZDHGCX"]}]
          },
          {
              name: '计算中心',
              data: [
                  ${RealTeachData2010["JSZX"]},
                  ${RealTeachData2011["JSZX"]},
                  ${RealTeachData2012["JSZX"]},
                  ${RealTeachData2013["JSZX"]},
                  ${RealTeachData2014["JSZX"]},
                  ${RealTeachData2015["JSZX"]},
                  ${RealTeachData2016["JSZX"]}]
          }
          ,
          {
              name: '电工电子实验中心',
              data: [
                  ${RealTeachData2010["DGDZSYZX"]},
                  ${RealTeachData2011["DGDZSYZX"]},
                  ${RealTeachData2012["DGDZSYZX"]},
                  ${RealTeachData2013["DGDZSYZX"]},
                  ${RealTeachData2014["DGDZSYZX"]},
                  ${RealTeachData2015["DGDZSYZX"]},
                  ${RealTeachData2016["DGDZSYZX"]}]
          },
      ];

      var json1 = {};
      json1.title = title1;
      json1.xAxis = xAxis1;
      json1.yAxis = yAxis1;
      json1.series = series1;
      json1.credits = credits;
      json1.plotOptions = plotOptions1;
      $('#canvas-holder8').highcharts(json1);


      /**
       * 模型一总
       * 2010-2016全学院总教学工作量数据整体分析（模型一）
       */

      var title2 = {
          text: '2010-2016全学院总教学工作量数据整体分析（旧模型）'
      };

      var xAxis2 = {
          categories: ['2010年', '2011年', '2012年', '2013年', '2014年', '2015年',
              '2016年']
      };
      var yAxis2 = {
          title: {
              text: '总教学工作量（小时）'
          },
          tickPositions: [0,5000,10000,15000,20000,25000,30000] // 指定竖轴坐标点的值
      };

      var plotOptions2 = {
          line: {
              dataLabels: {
                  enabled: true
              },
              enableMouseTracking: false
          }
      };
      var series2= [

          {
              name: '学院单位平均',
              data: [
                  ${SumTeachData2010["XY"]/5},
                  ${SumTeachData2011["XY"]/5},
                  ${SumTeachData2012["XY"]/5},
                  ${SumTeachData2013["XY"]/5},
                  ${SumTeachData2014["XY"]/5},
                  ${SumTeachData2015["XY"]/5},
                  ${SumTeachData2016["XY"]/5}]
          },
          {
              name: '计算机科学与技术系',
              data: [
                  ${SumTeachData2010["JSJKXYJSX"]},
                  ${SumTeachData2011["JSJKXYJSX"]},
                  ${SumTeachData2012["JSJKXYJSX"]},
                  ${SumTeachData2013["JSJKXYJSX"]},
                  ${SumTeachData2014["JSJKXYJSX"]},
                  ${SumTeachData2015["JSJKXYJSX"]},
                  ${SumTeachData2016["JSJKXYJSX"]}]
          },
          {
              name: '电子信息工程系',
              data: [
                  ${SumTeachData2010["DZXXGCX"]},
                  ${SumTeachData2011["DZXXGCX"]},
                  ${SumTeachData2012["DZXXGCX"]},
                  ${SumTeachData2013["DZXXGCX"]},
                  ${SumTeachData2014["DZXXGCX"]},
                  ${SumTeachData2015["DZXXGCX"]},
                  ${SumTeachData2016["DZXXGCX"]}
              ]
          },

          {
              name: '电气与自动化系',
              data: [
                  ${SumTeachData2010["DQYZDHGCX"]},
                  ${SumTeachData2011["DQYZDHGCX"]},
                  ${SumTeachData2012["DQYZDHGCX"]},
                  ${SumTeachData2013["DQYZDHGCX"]},
                  ${SumTeachData2014["DQYZDHGCX"]},
                  ${SumTeachData2015["DQYZDHGCX"]},
                  ${SumTeachData2016["DQYZDHGCX"]}]
          },
          {
              name: '计算中心',
              data: [
                  ${SumTeachData2010["JSZX"]},
                  ${SumTeachData2011["JSZX"]},
                  ${SumTeachData2012["JSZX"]},
                  ${SumTeachData2013["JSZX"]},
                  ${SumTeachData2014["JSZX"]},
                  ${SumTeachData2015["JSZX"]},
                  ${SumTeachData2016["JSZX"]}]
          }
          ,
          {
              name: '电工电子实验中心',
              data: [
                  ${SumTeachData2010["DGDZSYZX"]},
                  ${SumTeachData2011["DGDZSYZX"]},
                  ${SumTeachData2012["DGDZSYZX"]},
                  ${SumTeachData2013["DGDZSYZX"]},
                  ${SumTeachData2014["DGDZSYZX"]},
                  ${SumTeachData2015["DGDZSYZX"]},
                  ${SumTeachData2016["DGDZSYZX"]}]
          },
      ];

      var json2 = {};
      json2.title = title2;
      json2.xAxis = xAxis2;
      json2.yAxis = yAxis2;
      json2.series = series2;
      json2.credits = credits;
      json2.plotOptions = plotOptions2;
      $('#canvas-holder7').highcharts(json2);



      /**
       * 模型二总
       * 2010-2016全学院总教学工作量数据整体分析
       */

      var title3 = {
          text: '2010-2016全学院总教学工作量数据整体分析（新模型）'
      };

      var xAxis3 = {
          categories: ['2010年', '2011年', '2012年', '2013年', '2014年', '2015年',
              '2016年']
      };
      var yAxis3 = {
          title: {
              text: '总教学工作量（小时）'
          },
          tickPositions: [0,2500,5000,7500,10000,12500,15000] // 指定竖轴坐标点的值
      };

      var plotOptions3 = {
          line: {
              dataLabels: {
                  enabled: true
              },
              enableMouseTracking: false
          }
      };
      var series3 = [

          {
              name: '学院单位平均',
              data: [
                  ${SumTeachDataNew2010["XY"]/5},
                  ${SumTeachDataNew2011["XY"]/5},
                  ${SumTeachDataNew2012["XY"]/5},
                  ${SumTeachDataNew2013["XY"]/5},
                  ${SumTeachDataNew2014["XY"]/5},
                  ${SumTeachDataNew2015["XY"]/5},
                  ${SumTeachDataNew2016["XY"]/5}]
          },
          {
              name: '计算机科学与技术系',
              data: [
                  ${SumTeachDataNew2010["JSJKXYJSX"]},
                  ${SumTeachDataNew2011["JSJKXYJSX"]},
                  ${SumTeachDataNew2012["JSJKXYJSX"]},
                  ${SumTeachDataNew2013["JSJKXYJSX"]},
                  ${SumTeachDataNew2014["JSJKXYJSX"]},
                  ${SumTeachDataNew2015["JSJKXYJSX"]},
                  ${SumTeachDataNew2016["JSJKXYJSX"]}]
          },
          {
              name: '电子信息工程系',
              data: [
                  ${SumTeachDataNew2010["DZXXGCX"]},
                  ${SumTeachDataNew2011["DZXXGCX"]},
                  ${SumTeachDataNew2012["DZXXGCX"]},
                  ${SumTeachDataNew2013["DZXXGCX"]},
                  ${SumTeachDataNew2014["DZXXGCX"]},
                  ${SumTeachDataNew2015["DZXXGCX"]},
                  ${SumTeachDataNew2016["DZXXGCX"]}
              ]
          },

          {
              name: '电气与自动化系',
              data: [
                  ${SumTeachDataNew2010["DQYZDHGCX"]},
                  ${SumTeachDataNew2011["DQYZDHGCX"]},
                  ${SumTeachDataNew2012["DQYZDHGCX"]},
                  ${SumTeachDataNew2013["DQYZDHGCX"]},
                  ${SumTeachDataNew2014["DQYZDHGCX"]},
                  ${SumTeachDataNew2015["DQYZDHGCX"]},
                  ${SumTeachDataNew2016["DQYZDHGCX"]}]
          },
          {
              name: '计算中心',
              data: [
                  ${SumTeachDataNew2010["JSZX"]},
                  ${SumTeachDataNew2011["JSZX"]},
                  ${SumTeachDataNew2012["JSZX"]},
                  ${SumTeachDataNew2013["JSZX"]},
                  ${SumTeachDataNew2014["JSZX"]},
                  ${SumTeachDataNew2015["JSZX"]},
                  ${SumTeachDataNew2016["JSZX"]}]
          }
          ,
          {
              name: '电工电子实验中心',
              data: [
                  ${SumTeachDataNew2010["DGDZSYZX"]},
                  ${SumTeachDataNew2011["DGDZSYZX"]},
                  ${SumTeachDataNew2012["DGDZSYZX"]},
                  ${SumTeachDataNew2013["DGDZSYZX"]},
                  ${SumTeachDataNew2014["DGDZSYZX"]},
                  ${SumTeachDataNew2015["DGDZSYZX"]},
                  ${SumTeachDataNew2016["DGDZSYZX"]}]
          },
      ];

      var json3 = {};
      json3.title = title3;
      json3.xAxis = xAxis3;
      json3.yAxis = yAxis3;
      json3.series = series3;
      json3.credits = credits;
      json3.plotOptions = plotOptions3;
      $('#canvas-holder9').highcharts(json3);

      window.onload = function () {

          var ctx = document.getElementById("chart-area").getContext("2d");
          var ctx1 = document.getElementById("chart-area1").getContext("2d");

          window.myRadar = new Chart(ctx, config);
          window.myRadar = new Chart(ctx1,config1);

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


  <script>
      $(function () {
          $("[data-toggle='popover']").popover();
      });
  </script>



  <!-- Go To Top -->
    <a href="#" class="fh5co-gotop"><i class="ti-shift-left"></i></a>

  <!-- jQuery -->
  <!-- jQuery Easing -->
  <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/jquery.easing.1.3.js"></script>
  <!-- Bootstrap -->
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
