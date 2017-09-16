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
  <title>学院人力资源数据分析 </title>
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
    <link href='http://fonts.useso.com/css?family=PT+Mono' rel='stylesheet' type='text/css'>
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


    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>

    <!-- FOR IE9 below -->
    <!--[if lte IE 9]>
    <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/modernizr-2.6.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/front/lib_one/js/respond.min.js"></script>
    <![endif]-->

  <script src="${pageContext.request.contextPath}/resource/front/chart_lib/Chart.bundle.js"></script>
  <script src="${pageContext.request.contextPath}/resource/front/chart_lib/samples/utils.js"></script>

    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>


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
        <h1>学院人力资源数据分析</h1>
      </div>

    </div>
  </div>


  <main role="main" id="fh5co-main">

	<div class="copyrights">copy right @ <a href="#" >UP-VAMS工作室</a></div>
    <section class="grid-gallery">
      <div class="container">


          <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">


                  <div id="main" style="height:600px;width: 100%"></div>


              </div>


              <br/>
              <br/>

              <center>

              <!-- 按钮触发模态框 -->
              <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                  所有博士来源信息
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
                                  所有博士来源信息
                              </h4>
                          </div>
                          <div class="modal-body">


                                  <table class="table table-bordered">
                                      <caption><center>博士信息列表</center> </caption>
                                      <thead>
                                      <tr>
                                          <th>序号</th>
                                          <th>姓名</th>
                                          <th>来自</th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                      <c:forEach var="items" varStatus="st" items="${DoctorList}">

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

              </div>



              <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">


                  <h5>学院自2003年至今人才引进情况</h5>


                  <div id="canvas-holder6">
                      <canvas id="chart-area6" />
                  </div>



              </div>

          </div>

          <br/>
          <hr/>
          <br/>



          <div class="row gallery-row">
              <div class="col-md-12 col-sm-6">


                  <h5>学院未来9年退休情况</h5>


                  <div id="canvas-holder8">
                      <canvas id="chart-area8"/>
                  </div>


              </div>

          </div>


          <br/>
          <hr/>
          <br/>

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


        <%--<div class="row gallery-row">--%>

          <%--<div class="col-md-6 col-sm-6">--%>

            <%--<h5>专任教师职称结构</h5>--%>


            <%--<div id="canvas-holder" style="width: 400px;height: 400px">--%>
              <%--<canvas id="chart-area" />--%>
            <%--</div>--%>


          <%--</div>--%>

            <%--<div class="col-md-6 col-sm-6">--%>


                <%--<h5>专任教师年龄结构</h5>--%>


                <%--<div id="canvas-holder2" style="width: 400px;height: 400px">--%>
                    <%--<canvas id="chart-area2" />--%>
                <%--</div>--%>



            <%--</div>--%>

        <%--</div>--%>
        <%--<br/>--%>
        <%--<hr/>--%>
        <%--<br/>--%>


        <div class="row gallery-row">
          <div class="col-md-6 col-sm-6">


            <h5 style="text-align: center">不同年龄段、不同学位人数比例</h5>


            <div id="canvas-holder4">
              <canvas id="chart-area4"/>
            </div>



          </div>
          <div class="col-md-6 col-sm-6">

            <h5 style="text-align: center">不同年龄段、不同职称人数比例</h5>


            <div id="canvas-holder5">
              <canvas id="chart-area5" />
            </div>


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

      // 路径配置
      require.config({
          paths: {
              echarts: 'http://echarts.baidu.com/build/dist'
          }
      });

      // 使用
      require(
              [
                  'echarts',
                  'echarts/chart/map' // 使用柱状图就加载bar模块，按需加载
              ],

              function (ec) {
                  // 基于准备好的dom，初始化echarts图表
                  var myChart = ec.init(document.getElementById('main'));

                  option = {
                      title : {
                          text: '师资力量',
                          subtext: '地域分布',
                          x:'center'
                      },
                      tooltip : {
                          trigger: 'item'
                      },
                      legend: {
                          orient: 'vertical',
                          x:'left',
                          data:['博士','硕士','学士']
                      },
                      dataRange: {
                          min: 0,
                          max: 150,
                          x: 'left',
                          y: 'bottom',
                          text:['高','低'],           // 文本，默认为数值文本
                          calculable : true,
//                          inRange: {
//
//                          }

                          //orangered
                          color: ['red','yellow']

                      },


                      toolbox: {
                          show: true,
                          orient : 'vertical',
                          x: 'right',
                          y: 'center',
                          feature : {
                              mark : {show: true},
                              dataView : {show: true, readOnly: false},
                              restore : {show: true},
                              saveAsImage : {show: true}
                          }
                      },
                      roamController: {
                          show: true,
                          x: 'right',
                          mapTypeControl: {
                              'china': true
                          }
                      },
                      series : [
                          {
                              name: '博士',
                              type: 'map',
                              mapType: 'china',
                              roam: false,
                              itemStyle:{
                                  normal:{label:{show:true}},
                                  emphasis:{label:{show:true}}
                              },
                              data:[
                                  <c:forEach items="${SingleProvinceDataBS}" var="items">
                                  {name: '${items.key}',value:${items.value}},
                                  </c:forEach>
                              ]
                          },
                          {
                              name: '硕士',
                              type: 'map',
                              mapType: 'china',
                              itemStyle:{
                                  normal:{label:{show:true}},
                                  emphasis:{label:{show:true}}
                              },
                              data:[

                                  <c:forEach items="${SingleProvinceDataSS}" var="items">
                                  {name: '${items.key}',value:${items.value}},
                                  </c:forEach>

                              ]
                          },
                          {
                              name: '学士',
                              type: 'map',
                              mapType: 'china',
                              itemStyle:{
                                  normal:{label:{show:true}},
                                  emphasis:{label:{show:true}}
                              },
                              data:[
                                  <c:forEach items="${SingleProvinceDataXS}" var="items">
                                  {name: '${items.key}',value:${items.value}},
                                  </c:forEach>
                              ]
                          }
                      ]
                  };

                  // 为echarts对象加载数据
                  myChart.setOption(option);
              }
      );


      //      ==========================================================================================


      <!--专任教师职称结构-->

      var config = {
          type: 'pie',
          data: {
              datasets: [{
                  data: [
                      47,
                      78,
                      74
                  ],
                  backgroundColor: [
                      window.chartColors.red,
                      window.chartColors.orange,
                      window.chartColors.yellow
                  ],
                  label: '人数'
              }],
              labels: [
                  "教授",
                  "副教授",
                  "讲师"
              ]
          },
          options: {
              responsive: true,
              legend: {
                  position: 'top',
              },
              title: {
                  display: true,
              },
              animation: {
                  animateScale: true,
                  animateRotate: true
              }
          }
      };

//      ==========================================================================================

     //专任教师学历结构
      var config1 = {
          type: 'pie',
          data: {
              datasets: [{
                  data: [
                      76,
                      88,
                      38
                  ],
                  backgroundColor: [
                      window.chartColors.blue,
                      window.chartColors.purple,
                      window.chartColors.green
                  ],
                  label: '人数'
              }],
              labels: [
                  "博士",
                  "硕士",
                  "学士"
              ]
          },
          options: {
              responsive: true,
              legend: {
                  position: 'top',
              },
              title: {
                  display: true,
//                  text: 'Chart.js Doughnut Chart'
              },
              animation: {
                  animateScale: true,
                  animateRotate: true
              }
          }
      };

//      ==========================================================================================

    //专任教师年龄结构
      var config2 = {
          type: 'pie',
          data: {
              datasets: [{
                  data: [
                      62,
                      31,
                      73,
                      30
                  ],
                  backgroundColor: [
                      window.chartColors.blue,
                      window.chartColors.purple,
                      window.chartColors.green
                  ],
                  label: '人数'
              }],
              labels: [
                  "50岁以上",
                  "46～50岁",
                  "36～45岁",
                  "35岁以下"
              ]
          },
          options: {
              responsive: true,
              legend: {
                  position: 'top',
              },
              title: {
                  display: true,
//                  text: 'Chart.js Doughnut Chart'
              },
              animation: {
                  animateScale: true,
                  animateRotate: true
              }
          }
      };

//==========================================================================================


//专任教师博士比、硕士比、学士比
      var config3 = {
          type: 'line',
          data: {
              labels: ["35岁以下", "36-44岁", "45-49岁", "50岁以上"],
              datasets: [{
                  label: "博士比例(%)",
                  backgroundColor: window.chartColors.red,
                  borderColor: window.chartColors.red,
                  data: [
                      82.33,
                      41.10,
                      32.26,
                      17.74
                  ],
                  fill: false,
              }]
          }
      };


//      ==========================================================================================

//不同年龄段，不同学位人数比例


    var color = Chart.helpers.color;

    var config4 = {
        type: 'radar',
        data: {
            labels: ["博士",  "硕士", "学士", "无学位"],
            datasets: [

            {
                label: "50岁以上(%)",
                backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                borderColor: window.chartColors.red,
                pointBackgroundColor: window.chartColors.red,
                data: [
                    17.74,
                    29.03,
                    50.00,
                    3.23

                ]
            },

            {
                label: "45-49岁(%)",
                backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                borderColor: window.chartColors.blue,
                pointBackgroundColor: window.chartColors.blue,
                data: [
                    32.26,
                    58.06,
                    9.68,
                    0

                ]
            },

                {
                    label: "36-44岁(%)",
                    backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.green,
                    pointBackgroundColor: window.chartColors.blue,
                    data: [
                        41.10,
                        54.79,
                        4.11,
                        0

                    ]
                },

                {
                    label: "35岁以下(%)",
                    backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                    borderColor: window.chartColors.blue,
                    pointBackgroundColor: window.chartColors.yellow,
                    data: [
                        83.33,
                        13.33,
                        3.33,
                        0
                    ]
                },


            ]
        },
        options: {
            legend: {
                position: 'bottom',
            },
            title: {
                display: true,
//                text: 'Chart.js Radar Chart'
            },
            scale: {
                ticks: {
                    beginAtZero: true
                }
            }
        }
    };

//      ==========================================================================================


    //不同年龄段，不同职称人数比例

      var config5 = {
          type: 'radar',
          data: {
              labels: ["教授",  "副教授", "讲师", "助教"],
              datasets: [

                  {
                      label: "50岁以上(%)",
                      backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.red,
                      pointBackgroundColor: window.chartColors.red,
                      data: [
                          54.84,
                          38.71,
                          6.45,
                          0

                      ]
                  },

                  {
                      label: "45-49岁(%)",
                      backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.blue,
                      pointBackgroundColor: window.chartColors.blue,
                      data: [
                          12.90,
                          51.61,
                          35.48,
                          0

                      ]
                  },

                  {
                      label: "36-44岁(%)",
                      backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.green,
                      pointBackgroundColor: window.chartColors.blue,
                      data: [
                          12.33,
                          42.47,
                          41.10,
                          4.11

                      ]
                  },

                  {
                      label: "35岁以下(%)",
                      backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                      borderColor: window.chartColors.blue,
                      pointBackgroundColor: window.chartColors.yellow,
                      data: [
                          0,
                          23.33,
                          73.33,
                          3.33
                      ]
                  },


              ]
          },
          options: {
              legend: {
                  position: 'bottom',
              },
              title: {
                  display: true,
//                text: 'Chart.js Radar Chart'
              },
              scale: {
                  ticks: {
                      beginAtZero: true
                  }
              }
          }
      };

//      ==========================================================================================

    //学院2003年至今人才引进情况

      var config6 = {
          type: 'line',
          data: {
              labels: ["2003", "2004", "2005", "2006", "2007", "2008", "2009","2010","2011","2012","2013","2014","2015","2016"],
              datasets: [{
                  label: "博士",
                  backgroundColor: window.chartColors.red,
                  borderColor: window.chartColors.red,
                  data: [
                      1,
                      2,
                      4,
                      9,
                      13,
                      13,
                      16,
                      18,
                      20,
                      26,
                      28,
                      32,
                      40,
                      45
                  ],
                  fill: false,
              },

                  {
                  label: "硕士",
                  fill: false,
                  backgroundColor: window.chartColors.blue,
                  borderColor: window.chartColors.blue,
                  data: [
                      1,
                      8,
                      15,
                      23,
                      24,
                      24,
                      24,
                      25,
                      26,
                      27,
                      28,
                      29,
                      30,
                      32
                  ],},

                  {
                      label: "学士",
                      fill: false,
                      backgroundColor: window.chartColors.yellow,
                      borderColor: window.chartColors.yellow,
                      data: [
                          2,
                          5,
                          12,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18,
                          18
                      ],}

              ]
          },
          options: {
              responsive: true,
              title:{
                  display:true,
//                  text:'Chart.js Line Chart'
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
                          labelString: 'Month'
                      }
                  }],
                  yAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: 'Value'
                      }
                  }]
              }
          }
      };

//      ==========================================================================================

// 学院未来9年教师退休情况
      var config8 = {
          type: 'line',
          data: {
              labels: ["2017", "2018", "2019", "2020", "2021", "2022", "2023","2024","2025"],
              datasets: [{
                  label: "教师",
                  backgroundColor: window.chartColors.red,
                  borderColor: window.chartColors.red,
                  data: [
                      1,
                      2,
                      3,
                      5,
                      8,
                      10,
                      13,
                      16,
                      23
                  ],
                  fill: false,
              },

                  {
                      label: "非专技",
                      fill: false,
                      backgroundColor: window.chartColors.blue,
                      borderColor: window.chartColors.blue,
                      data: [
                          2,
                          5,
                          6,
                          9,
                          9,
                          11,
                          14,
                          16,
                          18
                      ],},

                  {
                      label: "管理岗",
                      fill: false,
                      backgroundColor: window.chartColors.yellow,
                      borderColor: window.chartColors.yellow,
                      data: [
                          0,
                          0,
                          3,
                          3,
                          3,
                          3,
                          3,
                          5,
                          7

                      ],}

              ]
          },
          options: {
              responsive: true,
              title:{
                  display:true,
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
                          labelString: 'Month'
                      }
                  }],
                  yAxes: [{
                      display: true,
                      scaleLabel: {
                          display: true,
                          labelString: 'Value'
                      }
                  }]
              }
          }
      };

//      ==========================================================================================

      //===============================================================


      var chart = {
          type: 'column'
      };
      var title = {
          text: '学院人才队伍学历分布'
      };
      var xAxis = {
          categories: ['35岁以下', '35岁到45岁', '45岁到50岁', '50岁以上']
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
          name: '博士',
          data: [24,32,10,11]
      }, {
          name: '硕士',
          data: [8,32,10,16]
      }, {
          name: '学士',
          data: [8,19,16,37]
      },
      ];

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

//          var ctx = document.getElementById("chart-area").getContext("2d");
//          var ctx2 = document.getElementById("chart-area2").getContext("2d");
          var ctx4 = document.getElementById("chart-area4").getContext("2d");
          var ctx5 = document.getElementById("chart-area5").getContext("2d");
          var ctx6 = document.getElementById("chart-area6").getContext("2d");
          var ctx8 = document.getElementById("chart-area8").getContext("2d");


//          window.myPie = new Chart(ctx, config);
//          window.myPie = new Chart(ctx2, config2);
          window.myRadar = new Chart(ctx4, config4);
          window.myRadar = new Chart(ctx5, config5);
          window.myLine = new Chart(ctx6, config6);
          window.myLine = new Chart(ctx8, config8);
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
