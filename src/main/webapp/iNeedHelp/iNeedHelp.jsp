<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>提出需求(I need help!)</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../images/handbag-fill.svg">
    <!-- Boostrap5.0 導入程式 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>
    <!-- JQuery 導入程式 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>

    <!-- 連結內容CSS -->
    <link rel="stylesheet" href="INeedHelp.css">
    <!-- 連結內容JS -->
    <script src="INeedHelp.js"></script>
</head>
<body>
 <!-- 導覽列 -->
    <nav class="navbar navbar-expand-md navbar-light">
        <div class="container-fluid">
            <!-- 品牌LOGO -->
            <a class="navbar-brand" href="../LoginHome/LoginHome.html">幫幫忙
                <img src="<c:url value='/images/handbag-fill.svg'/>" alt="" width="30" height="24"
                    class="d-inline-block align-text-top">
            </a>
            <!-- 手機版顯示 -->
            <div class="navbar-toggler border-0 p-0">
                <div class="rounded-circle d-flex">
                    <img src="${pageContext.servletContext.contextPath}/RestrieveMemberImageServlet?id=${MemberBean.mId}" class="rounded-circle" data-bs-toggle="collapse"
                        data-bs-target="#offcanvas">
                    <p class="fs-1 py-2 ps-1 m-0" data-bs-toggle="collapse" data-bs-target="#offcanvas">姓名</p>
                </div>
            </div>
            <!-- 桌機版顯示 -->

            <div class="collapse navbar-collapse" id="linkbar">
                <!-- 內容 -->
                <ul class="navbar-nav me-auto p-2">
                    <li class="nav-item">
                        <a class="nav-link" href="../INeedHelp/INeedHelp.html">提出需求(I need help!)</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../ICanHelp/ICanHelp.html">我要幫忙(I can help!)</a>
                    </li>
                </ul>
                <img src="${pageContext.servletContext.contextPath}/RestrieveMemberImageServlet?id=${MemberBean.mId}" class="rounded-circle" style="height:40px; width:40px;" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
            </div>
        </div>
    </nav>

    <!-- 小視窗時點大頭貼的offcanvas -->
    <div class="collapse navbar-collapse bg-light p-2" id="offcanvas">
        <!-- 內容 -->
        <ul class="navbar-nav me-auto bg-light">
            <li class="nav-item">
                <p class="nav-link m-0 fs-5 text-dark">會員中心</p>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../INeedHelp/INeedHelp.html">提出需求(I need help!)</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../Login-Home/Login-Home.html">我要幫忙(I can help!)</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../CommonProblem/CommonProblem.html">常見問題</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../AboutUs/AboutUs.html">關於我們</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../ContactCustomerService/ContactCustomerService.html">聯絡客服</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">登出</a>
            </li>
        </ul>
    </div>

    <!-- 內容 -->
    
    <div class="container-fluid row d-flex px-0 mx-0" style="height: 100%">
        <!-- GoogleMap -->
        <div class="col col-12 col-lg-8 order-1 order-lg-2 d-flex p-0 m-0">
            <img src="../images/help_pic1.png" style="width: 100%; height: 100%;">
        </div>

        <!-- 需求表單 -->
        <div class="col col-12 col-lg-4 bg-light m-0 py-0 order-2 order-lg-1">
            <!-- <form class="my-3"> -->
                <h5 class="p-0 m-0 text-center">任務事項</h5>
                <hr class="my-2 container-fluid">
                <!-- 需求起點 -->
                <p class="fs-6 m-0">需求起點:</p>
                <div class="row mb-3">
                    <div class="col-xxl-3 px-2 py-1">
                        <input type="text" list="area" class="form-control p-0" id="deladd1">
                    </div>
                    <div class="col-xxl-9 px-2 py-1">
                        <input type="text" class="form-control p-0" id="deladd2">
                    </div>
                </div>
                <!-- 需求終點 -->
                <p class="fs-6 m-0">需求終點:</p>
                <div class="row mb-3">
                    <div class="col-xxl-3 px-2 py-1">
                        <input type="text" list="area" class="form-control p-0" id="recadd1">
                    </div>
                    <div class="col-xxl-9 px-2 py-1">
                        <input type="text" class="form-control p-0" id="recadd2">
                    </div>
                </div>
                 <div class="row">                   
                    <div id="result"></div>
                    <!-- 跑腿費 -->
                    <div style="display: inline" class="col-xxl-6">
                        <div class="input-group input-group-sm mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-sm">跑腿費</span>
                            <input type="text" class="form-control" aria-label="Sizing example input"
                                aria-describedby="inputGroup-sizing-sm" id="tip">
                        </div>
                    </div>
                    <!-- 預估價格 -->
                    <div style="display: inline" class="col-xxl-6">
                        <div class="input-group input-group-sm mb-3">
                            <span class="input-group-text" id="inputGroup-sizing-sm">預估價格</span>
                            <input type="text" class="form-control" aria-label="Sizing example input"
                                aria-describedby="inputGroup-sizing-sm" id="price">
                        </div>
                    </div>
                </div>
                <!-- 需求起始日 -->
                <p class="fs-6 m-0">需求起始日</p>
                <div class="row mb-1">
                    <div class="col-6 px-2 py-1 d-flex">
                        <input type="date" class="form-control p-0" id="starttime">
                    </div>
                    <div class="col-6 px-2 py-1 d-flex">
                        <select>
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                        </select>
                        <p class="my-0">:</p>
                        <select>
                            <option value="05">05</option>
                            <option value="10">10</option>
                            <option value="15">15</option>
                            <option value="20">20</option>
                            <option value="25">25</option>
                            <option value="30">30</option>
                            <option value="35">35</option>
                            <option value="40">40</option>
                            <option value="45">45</option>
                            <option value="50">50</option>
                            <option value="55">55</option>
                        </select>
                    </div>
                </div>
                <!-- 需求截止日 -->
                <p class="fs-6 m-0">需求截止日</p>
                <div class="row mb-1">
                    <div class="col-6 px-2 py-1 d-flex">
                        <input type="date" class="form-control p-0" id="endtime">
                    </div>
                    <div class="col-6 px-2 py-1 d-flex">
                        <select>
                            <option value="0">0</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                        </select>
                        <p class="my-0">:</p>
                        <select>
                            <option value="05">05</option>
                            <option value="10">10</option>
                            <option value="15">15</option>
                            <option value="20">20</option>
                            <option value="25">25</option>
                            <option value="30">30</option>
                            <option value="35">35</option>
                            <option value="40">40</option>
                            <option value="45">45</option>
                            <option value="50">50</option>
                            <option value="55">55</option>
                        </select>
                    </div>
                </div>
                <!-- radio -->
                <div class="d-flex row">
                    <div class="col col-6 col-lg-12 col-xxl-3">
                        <div class="form-check mx-1 d-flex">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="radio" value="代買"
                                checked>
                            <label class="form-check-label fs-6" for="flexRadioDefault1">
                                代買
                            </label>
                        </div>
                    </div>
                    <div class="col col-6 col-lg-12 col-xxl-3">
                        <div class="form-check mx-1 d-flex">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="radio" value="代排">
                            <label class="form-check-label fs-6" for="flexRadioDefault2">
                                代排
                            </label>
                        </div>
                    </div>
                    <div class="col col-6 col-lg-12 col-xxl-3">
                        <div class="form-check mx-1 d-flex">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="radio"
                                value="到府服務">
                            <label class="form-check-label fs-6" for="flexRadioDefault3">
                                到府服務
                            </label>
                        </div>
                    </div>
                    <div class="col col-6 col-lg-12 col-xxl-3">
                        <div class="form-check mx-1 d-flex">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="radio" value="團購">
                            <label class="form-check-label fs-6" for="flexRadioDefault4">
                                團購
                            </label>
                        </div>
                    </div>
                </div>
                <!-- 提供相關照片 -->
                <!-- <p class="fs-6 my-1">提供相關照片:</p>
                <div class="input-group mb-3">
                    <input type="file" class="form-control" id="inputGroupFile01" onchange="selectImgFile(this.files)">
                </div>
                <img id="showImg" height="200" width="200"></img> -->
                <!-- 備註 -->
                <p class="fs-6 m-0">備註:</p>
                <div class="input-group input-group-sm mb-3">
                    <textarea id="talk" rows="8" cols="100" maxlength="500"
                        placeholder="請輸入任何與此訂單相關的重要資訊，例如地標、物品數量、代付金額等。" id="talk"></textarea>
                </div>
                <p id="feedback"></p>
                <!-- 按鈕 -->
                <div class="row">
                    <div class="col-sm-12"></div>
                    <button type="submit" class="btn btn-primary" id="orderButton">
                        選擇付款方式
                    </button>
                </div>
              
                <div id="showOrder"></div>
                
            </form>
        </div>
    </div>

    <!-- 大視窗時點大頭貼的offcanvas -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <div class="d-flex pe-5">
                <img src="https://picsum.photos/50/50/?random=1" width="50" height="50" class="rounded-circle">
                <h1>名字</h1>
            </div>
        </div>
        <div class="offcanvas-body">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="../MemberCenter/MemberCenter.html">會員中心</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../CommonProblem/CommonProblem.html">常見問題</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../AboutUs/AboutUs.html">關於我們</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../ContactCustomerService/ContactCustomerService.html">聯絡客服</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">登出</a>
                </li>
            </ul>
        </div>
    </div>

    <!-- 頁尾 -->
    <footer class="footer border-top bg-dark text-light">
        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-5 col-md-12 p-2" href="#">
                    <h4 class="text-nowrap">幫幫忙</h4>
                    <h6>俗話說在家靠父母，出外靠朋友</h6>
                    <h6>但不好請朋友幫忙怎麼辦？沒有朋友幫忙怎麼辦？</h6>
                    <h6>為了解決這個問題，我們提供一個平台，不管是「I need help ! 」</h6>
                    <h6>還是「I can help ! 」，只要使用「幫幫忙」，問題歹就補！</h6>
                    <div class="">
                        <a href="#"><img class="bi bi-twitter m-1" src="../images/svg/twitter-svgrepo-com.svg"
                                style="height: 40px; width: 40px;"></a>
                        <a href="#"><img class="bi bi-facebook m-1" src="../images/svg/facebook-svgrepo-com.svg"
                                style="height: 40px; width: 40px;"></a>
                        <a href="#"><img class="bi bi-instagram m-1 rounded-circle"
                                src="../images/svg/instagram-cat-tail-svgrepo-com.svg"
                                style="height: 40px; width: 40px; border: 1px solid ; color: #aaa;"></a>
                        <a href="#"><img class="bi bi-linkedin m-1" src="../images/svg/linkedin-svgrepo-com.svg"
                                style="height: 40px; width: 40px;"></a>
                    </div>
                </div>
                <div class="col-lg-2 col-6 align-items-center p-2">
                    <h4>其他資訊</h4>
                    <ul class="nav flex-column">
                        <li class="nav-item pt-1">
                            <a class="nav-link p-0 text-secondary fs-6" aria-current="page"
                                href="../Login-Home/Login-Home.html">首頁</a>
                        </li>
                        <li class="nav-item pt-1">
                            <a class="nav-link p-0 text-secondary fs-6" aria-current="page"
                                href="../MemberCenter/MemberCenter.html">會員中心</a>
                        </li>
                        <li class="nav-item pt-1">
                            <a class="nav-link p-0 text-secondary fs-6" aria-current="page" href="#">使用者條款</a>
                        </li>
                        <li class="nav-item pt-1">
                            <a class="nav-link p-0 text-secondary fs-6" aria-current="page" href="#">隱私權條款</a>
                        </li>
                        <li class="nav-item pt-1">
                            <a class="nav-link p-0 text-secondary fs-6" aria-current="page"
                                href="../CommonProblem/CommonProblem.html">常見問題</a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-2 col-6 p-2">
                    <h4>我們的服務</h4>
                    <ul class="nav flex-column">
                        <li class="nav-item pt-2">
                            <a class="nav-link p-0 text-secondary fs-6" aria-current="page"
                                href="../INeedHelp/INeedHelp.html">提出需求(I need
                                help!)</a>
                        </li>
                        <li class="nav-item pt-2">
                            <a class="nav-link p-0 text-secondary fs-6" aria-current="page"
                                href="../Login-Home/Login-Home.html">我要幫忙(I can
                                help!)</a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 p-2 text-center text-md-start">
                    <h4 class="text-nowrap">聯絡我們</h4>
                    <p>JAVA班018第三組</p>
                    <p class="m-0">Phone : (xx) xxxx-xxxx</p>
                    <p class="p-0 m-0">Email : 018_team03@xxx.com.tw</p>
                </div>
            </div>
            <div class="container text-center p-1">
                <h6 class="text-nowrap">© 2022 JAVA班018第三組. 版權所有</h6>
            </div>
        </div>
    </footer>

    <!-- Area List -->
    <datalist id="area">
        <option value="基隆市">Keelung City</option>
        <option value="新北市">New Taipei City</option>
        <option value="台北市">Taipei City</option>
        <option value="桃園市">Taoyuan City</option>
        <option value="新竹縣">Hsinchu County</option>
        <option value="新竹市">Hsinchu City</option>
        <option value="苗栗縣">Miaoli County</option>
        <option value="台中市">Taichung City</option>
        <option value="彰化縣">Changhua County</option>
        <option value="南投縣">Nantou County</option>
        <option value="雲林縣">Yunlin County</option>
        <option value="嘉義縣">Chiayi County</option>
        <option value="嘉義市">Chiayi City</option>
        <option value="台南市">Tainan City</option>
        <option value="高雄市">Kaohsiung City</option>
        <option value="屏東縣">Pingtung County</option>
        <option value="宜蘭縣">Yilan County</option>
        <option value="花蓮縣">Hualien County</option>
        <option value="台東縣">Taitung County</option>
        <option value="澎湖縣">Penghu County</option>
        <option value="金門縣">Kinmen County</option>
        <option value="連江縣">Lienchiang County</option>
    </datalist>

    <!-- Hours -->
    <datalist id="hours">
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
    </datalist>

    <!-- Minutes -->
    <datalist id="minutes">
        <option value="05">05</option>
        <option value="10">10</option>
        <option value="15">15</option>
        <option value="20">20</option>
        <option value="25">25</option>
        <option value="30">30</option>
        <option value="35">35</option>
        <option value="40">40</option>
        <option value="45">45</option>
        <option value="50">50</option>
        <option value="55">55</option>
    </datalist>
	

</body>
</html>