<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>


    <style data-fullcalendar=""></style>
<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-5DDHKGP"></script><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5DDHKGP');</script>
    <!-- End Google Tag Manager -->

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../../assets/img/favicon/favicon.ico">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" href="../../assets/vendor/fonts/boxicons.css">
    <link rel="stylesheet" href="../../assets/vendor/fonts/fontawesome.css">
    <link rel="stylesheet" href="../../assets/vendor/fonts/flag-icons.css">

    <!-- Core CSS -->


    <link rel="stylesheet" href="../../assets/css/demo.css">

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/typeahead-js/typeahead.css">
    <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/fullcalendar/fullcalendar.css">
    <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/flatpickr/flatpickr.css">
    <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/select2/select2.css">
    <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/quill/editor.css">
    <link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/@form-validation/form-validation.css">

    <!-- Page CSS -->

    <link rel="stylesheet" href="${contextPath}/frontend//assets/vendor/css/pages/app-calendar.css">

    <!-- Helpers -->
    <script src="${contextPath}/frontend//assets/vendor/js/helpers.js"></script><style type="text/css">
    .layout-menu-fixed .layout-navbar-full .layout-menu,
    .layout-menu-fixed-offcanvas .layout-navbar-full .layout-menu {
        top: 62px !important;
    }
    .layout-page {
        padding-top: 62px !important;
    }
    .content-wrapper {
        padding-bottom: 46px !important;
    }</style>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="${contextPath}/frontend/assets/vendor/js/template-customizer.js"></script><style>#template-customizer{font-family:"Open Sans",BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol" !important;font-size:inherit !important;position:fixed;top:0;right:0;height:100%;z-index:99999999;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-orient:vertical;-webkit-box-direction:normal;-ms-flex-direction:column;flex-direction:column;width:400px;background:#fff;-webkit-box-shadow:0 0 20px 0 rgba(0,0,0,.2);box-shadow:0 0 20px 0 rgba(0,0,0,.2);-webkit-transition:all .2s ease-in;-o-transition:all .2s ease-in;transition:all .2s ease-in;-webkit-transform:translateX(420px);-ms-transform:translateX(420px);transform:translateX(420px)}#template-customizer h5{position:relative;font-size:11px}#template-customizer>h5{flex:0 0 auto}#template-customizer .disabled{color:#d1d2d3 !important}#template-customizer .form-label{font-size:.9375rem}#template-customizer .form-check-label{font-size:.8125rem}#template-customizer .template-customizer-t-panel_header{font-size:1.125rem}#template-customizer.template-customizer-open{-webkit-transition-delay:.1s;-o-transition-delay:.1s;transition-delay:.1s;-webkit-transform:none !important;-ms-transform:none !important;transform:none !important}#template-customizer.template-customizer-open .custom-option.checked{color:var(--bs-primary);border-width:2px}#template-customizer.template-customizer-open .custom-option.checked .custom-option-content{border:none}#template-customizer.template-customizer-open .custom-option .custom-option-content{border:1px solid rgba(0,0,0,0)}#template-customizer .template-customizer-header a:hover{color:inherit !important}#template-customizer .template-customizer-open-btn{position:absolute;top:180px;left:0;z-index:-1;display:block;width:42px;height:42px;border-top-left-radius:15%;border-bottom-left-radius:15%;background:var(--bs-primary);color:#fff !important;text-align:center;font-size:18px !important;line-height:42px;opacity:1;-webkit-transition:all .1s linear .2s;-o-transition:all .1s linear .2s;transition:all .1s linear .2s;-webkit-transform:translateX(-62px);-ms-transform:translateX(-62px);transform:translateX(-62px)}@media(max-width: 991.98px){#template-customizer .template-customizer-open-btn{top:145px}}.dark-style #template-customizer .template-customizer-open-btn{background:var(--bs-primary)}#template-customizer .template-customizer-open-btn::before{content:"";width:22px;height:22px;display:block;background-size:100% 100%;position:absolute;background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABClJREFUaEPtmY1RFEEQhbsjUCIQIhAiUCNQIxAiECIQIxAiECIAIpAMhAiECIQI2vquZqnZvp6fhb3SK5mqq6Ju92b69bzXf6is+dI1t1+eAfztG5z1BsxsU0S+ici2iPB3vm5E5EpEDlSVv2dZswFIxv8UkZcNy+5EZGcuEHMCOBeR951uvVDVD53vVl+bE8DvDu8Pxtyo6ta/BsByg1R15Bwzqz5/LJgn34CZwfnPInI4BUB6/1hV0cSjVxcAM4PbcBZjL0XklIPN7Is3fLCkdQPpPYw/VNXj5IhPIvJWRIhSl6p60ULWBGBm30Vk123EwRxCuIzWkkjNrCZywith10ewE1Xdq4GoAjCz/RTXW44Ynt+LyBEfT43kYfbj86J3w5Q32DNcRQDpwF+dkQXDMey8xem0L3TEqB4g3PZWad8agBMRgZPeu96D1/C2Zbh3X0p80Op1xxloztN48bMQQNoc7+eLEuAoPSPiIDY4Ooo+E6ixeNXM+D3GERz2U3CIqMstLJUgJQDe+7eq6mub0NYEkLAKwEHkiBQDCZtddZCZ8d6r7JDwFkoARklHRPZUFVDVZWbwGuNrC4EfdOzFrRABh3Wnqhv+d70AEBLGFROPmeHlnM81G69UdSd6IUuM0GgUVn1uqWmg5EmMfBeEyB7Pe3txBkY+rGT8j0J+WXq/BgDkUCaqLgEAnwcRog0veMIqFAAwCy2wnw+bI2GaGboBgF9k5N0o0rUSGUb4eO0BeO9j/GYhkSHMHMTIqwGARX6p6a+nlPBl8kZuXMD9j6pKfF9aZuaFOdJCEL5D4eYb9wCYVCanrBmGyii/tIq+SLj/HQBCaM5bLzwfPqdQ6FpVHyra4IbuVbXaY7dETC2ESPNNWiIOi69CcdgSMXsh4tNSUiklMgwmC0aNd08Y5WAES6HHehM4gu97wyhBgWpgqXsrASglprDy7CwhehMZOSbK6JMSma+Fio1KltCmlBIj7gfZOGx8ppQSXrhzFnOhJ/31BDkjFHRvOd09x0mRBA9SFgxUgHpQg0q0t5ymPMlL+EnldFTfDA0NAmf+OTQ0X0sRouf7NNkYGhrOYNrxtIaGg83MNzVDSe3LXLhP7O/yrCsCz1zlWTpjWkuZAOBpX3yVnLqI1yLCOKU6qMrmP7SSrUEw54XF4WBIK5FxCMOr3lVsfGqNSmPzBXUnJTIX1jyVBq9wO6UObOpgC5GjO98vFKnTdQMZXxEsWZlDiCZMIxAbNxQOqlpVZtobejBaZNoBnRDzMFpkxvTQOD36BlrcySZuI6p1ACB6LU3wWuf5581+oHfD1vi89bz3nFUC8Nm7ZlP3nKkFbM4bWPt/MSFwklprYItwt6cmvpWJ2IVcQBCz6bLysSCv3SaANCiTsnaNRrNRqMXVVT1/BrAqz/buu/Y38Ad3KC5PARej0QAAAABJRU5ErkJggg==);margin:10px}.customizer-hide #template-customizer .template-customizer-open-btn{display:none}[dir=rtl] #template-customizer .template-customizer-open-btn{border-radius:0;border-top-right-radius:15%;border-bottom-right-radius:15%}[dir=rtl] #template-customizer .template-customizer-open-btn::before{margin-left:-2px}#template-customizer.template-customizer-open .template-customizer-open-btn{opacity:0;-webkit-transition-delay:0s;-o-transition-delay:0s;transition-delay:0s;-webkit-transform:none !important;-ms-transform:none !important;transform:none !important}#template-customizer .template-customizer-inner{position:relative;overflow:auto;-webkit-box-flex:0;-ms-flex:0 1 auto;flex:0 1 auto;opacity:1;-webkit-transition:opacity .2s;-o-transition:opacity .2s;transition:opacity .2s}#template-customizer .template-customizer-inner>div:first-child>hr:first-of-type{display:none !important}#template-customizer .template-customizer-inner>div:first-child>h5:first-of-type{padding-top:0 !important}#template-customizer .template-customizer-themes-inner{position:relative;opacity:1;-webkit-transition:opacity .2s;-o-transition:opacity .2s;transition:opacity .2s}#template-customizer .template-customizer-theme-item{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;align-items:center;-ms-flex-align:center;-webkit-box-flex:1;-ms-flex:1 1 100%;flex:1 1 100%;-webkit-box-pack:justify;-ms-flex-pack:justify;justify-content:space-between;margin-bottom:10px;padding:0 24px;width:100%;cursor:pointer}#template-customizer .template-customizer-theme-item input{position:absolute;z-index:-1;opacity:0}#template-customizer .template-customizer-theme-item input~span{opacity:.25;-webkit-transition:all .2s;-o-transition:all .2s;transition:all .2s}#template-customizer .template-customizer-theme-item .template-customizer-theme-checkmark{display:inline-block;width:6px;height:12px;border-right:1px solid;border-bottom:1px solid;opacity:0;-webkit-transition:all .2s;-o-transition:all .2s;transition:all .2s;-webkit-transform:rotate(45deg);-ms-transform:rotate(45deg);transform:rotate(45deg)}[dir=rtl] #template-customizer .template-customizer-theme-item .template-customizer-theme-checkmark{border-right:none;border-left:1px solid;-webkit-transform:rotate(-45deg);-ms-transform:rotate(-45deg);transform:rotate(-45deg)}#template-customizer .template-customizer-theme-item input:checked:not([disabled])~span,#template-customizer .template-customizer-theme-item:hover input:not([disabled])~span{opacity:1}#template-customizer .template-customizer-theme-item input:checked:not([disabled])~span .template-customizer-theme-checkmark{opacity:1}#template-customizer .template-customizer-theme-colors span{display:block;margin:0 1px;width:10px;height:10px;border-radius:50%;-webkit-box-shadow:0 0 0 1px rgba(0,0,0,.1) inset;box-shadow:0 0 0 1px rgba(0,0,0,.1) inset}#template-customizer.template-customizer-loading .template-customizer-inner,#template-customizer.template-customizer-loading-theme .template-customizer-themes-inner{opacity:.2}#template-customizer.template-customizer-loading .template-customizer-inner::after,#template-customizer.template-customizer-loading-theme .template-customizer-themes-inner::after{content:"";position:absolute;top:0;right:0;bottom:0;left:0;z-index:999;display:block}@media(max-width: 1200px){#template-customizer{display:none;visibility:hidden !important}}@media(max-width: 575.98px){#template-customizer{width:300px;-webkit-transform:translateX(320px);-ms-transform:translateX(320px);transform:translateX(320px)}}.layout-menu-100vh #template-customizer{height:100vh}[dir=rtl] #template-customizer{right:auto;left:0;-webkit-transform:translateX(-420px);-ms-transform:translateX(-420px);transform:translateX(-420px)}[dir=rtl] #template-customizer .template-customizer-open-btn{right:0;left:auto;-webkit-transform:translateX(62px);-ms-transform:translateX(62px);transform:translateX(62px)}[dir=rtl] #template-customizer .template-customizer-close-btn{right:auto;left:0}#template-customizer .template-customizer-layouts-options[disabled]{opacity:.5;pointer-events:none}[dir=rtl] .template-customizer-t-style_switch_light{padding-right:0 !important}</style>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${contextPath}/frontend/assets/js/config.js"></script><link rel="stylesheet" type="text/css" href="../../assets/vendor/css/rtl/core.css" class="template-customizer-core-css"><link rel="stylesheet" type="text/css" href="../../assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css">

    <script type="text/javascript" src="https://a.omappapi.com/app/js/api.min.js" async="" data-user="252882" data-account="269977"></script><link rel="stylesheet" href="https://a.omappapi.com/app/js/api.min.css" id="omapi-css" media="all"><link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins%3Aital%2Cwght%400%2C400%3B0%2C500%3B0%2C700&amp;display=swap"></head><grammarly-desktop-integration data-grammarly-shadow-root="true"></grammarly-desktop-integration>

<body data-new-gr-c-s-check-loaded="9.73.0" data-gr-ext-installed="">


<!-- ?PROD Only: Google Tag Manager (noscript) (Default ThemeSelection: GTM-5DDHKGP, PixInvent: GTM-5J3LMKC) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5DDHKGP" height="0" width="0" style="display: none; visibility: hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar  ">
    <div class="layout-container">







        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme" data-bg-class="bg-menu-theme" style="touch-action: none; -webkit-user-select: none; -webkit-user-drag: none;">


            <div class="app-brand demo ">
                <a href="${contextPath}/pages/home" class="app-brand-link">
      <span class="app-brand-logo demo">

<svg width="25" viewBox="0 0 25 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
  <defs>
    <path d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z" id="path-1"></path>
    <path d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z" id="path-3"></path>
    <path d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z" id="path-4"></path>
    <path d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z" id="path-5"></path>
  </defs>
  <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
    <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
      <g id="Icon" transform="translate(27.000000, 15.000000)">
        <g id="Mask" transform="translate(0.000000, 8.000000)">
          <mask id="mask-2" fill="white">
            <use xlink:href="#path-1"></use>
          </mask>
          <use fill="#696cff" xlink:href="#path-1"></use>
          <g id="Path-3" mask="url(#mask-2)">
            <use fill="#696cff" xlink:href="#path-3"></use>
            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
          </g>
          <g id="Path-4" mask="url(#mask-2)">
            <use fill="#696cff" xlink:href="#path-4"></use>
            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
          </g>
        </g>
        <g id="Triangle" transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
          <use fill="#696cff" xlink:href="#path-5"></use>
          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
        </g>
      </g>
    </g>
  </g>
</svg>

</span>
                    <span class="app-brand-text demo menu-text fw-bold ms-2">Sneat</span>
                </a>

                <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
                    <i class="bx bx-chevron-left bx-sm align-middle"></i>
                </a>
            </div>

            <div class="menu-inner-shadow"></div>



            <ul class="menu-inner py-1 ps">
                <!-- Dashboards -->
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-home-circle"></i>
                        <div class="text-truncate" data-i18n="Dashboards">Dashboards</div>
                        <span class="badge badge-center rounded-pill bg-danger ms-auto">5</span>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="dashboards-analytics.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Analytics">Analytics</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="dashboards-crm.html" class="menu-link">
                                <div class="text-truncate" data-i18n="CRM">CRM</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-ecommerce-dashboard.html" class="menu-link">
                                <div class="text-truncate" data-i18n="eCommerce">eCommerce</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-logistics-dashboard.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Logistics">Logistics</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-academy-dashboard.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Academy">Academy</div>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Layouts -->
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-layout"></i>
                        <div class="text-truncate" data-i18n="Layouts">Layouts</div>
                    </a>

                    <ul class="menu-sub">

                        <li class="menu-item">
                            <a href="layouts-collapsed-menu.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Collapsed menu">Collapsed menu</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="layouts-content-navbar.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Content navbar">Content navbar</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="layouts-content-navbar-with-sidebar.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Content nav + Sidebar">Content nav + Sidebar</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="../horizontal-menu-template" class="menu-link" target="_blank">
                                <div class="text-truncate" data-i18n="Horizontal">Horizontal</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="layouts-without-menu.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Without menu">Without menu</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="layouts-without-navbar.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Without navbar">Without navbar</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="layouts-fluid.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Fluid">Fluid</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="layouts-container.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Container">Container</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="layouts-blank.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Blank">Blank</div>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Front Pages -->
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-store"></i>
                        <div class="text-truncate" data-i18n="Front Pages">Front Pages</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="../front-pages/landing-page.html" class="menu-link" target="_blank">
                                <div class="text-truncate" data-i18n="Landing">Landing</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="../front-pages/pricing-page.html" class="menu-link" target="_blank">
                                <div class="text-truncate" data-i18n="Pricing">Pricing</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="../front-pages/payment-page.html" class="menu-link" target="_blank">
                                <div class="text-truncate" data-i18n="Payment">Payment</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="../front-pages/checkout-page.html" class="menu-link" target="_blank">
                                <div class="text-truncate" data-i18n="Checkout">Checkout</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="../front-pages/help-center-landing.html" class="menu-link" target="_blank">
                                <div class="text-truncate" data-i18n="Help Center">Help Center</div>
                            </a>
                        </li>
                    </ul>
                </li>


                <!-- Apps & Pages -->
                <li class="menu-header small text-uppercase">
                    <span class="menu-header-text" data-i18n="Apps &amp; Pages">Apps &amp; Pages</span>
                </li>
                <li class="menu-item">
                    <a href="app-email.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-envelope"></i>
                        <div class="text-truncate" data-i18n="Email">Email</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="app-chat.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-chat"></i>
                        <div class="text-truncate" data-i18n="Chat">Chat</div>
                    </a>
                </li>
                <li class="menu-item active">
                    <a href="app-calendar.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-calendar"></i>
                        <div class="text-truncate" data-i18n="Calendar">Calendar</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="app-kanban.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-grid"></i>
                        <div class="text-truncate" data-i18n="Kanban">Kanban</div>
                    </a>
                </li>
                <!-- e-commerce-app menu start -->
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-cart-alt"></i>
                        <div class="text-truncate" data-i18n="eCommerce">eCommerce</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="app-ecommerce-dashboard.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Dashboard">Dashboard</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Products">Products</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-ecommerce-product-list.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Product List">Product List</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-product-add.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Add Product">Add Product</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-category-list.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Category List">Category List</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Order">Order</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-ecommerce-order-list.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Order List">Order List</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-order-details.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Order Details">Order Details</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Customer">Customer</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-ecommerce-customer-all.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="All Customers">All Customers</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                                        <div class="text-truncate" data-i18n="Customer Details">Customer Details</div>
                                    </a>
                                    <ul class="menu-sub">
                                        <li class="menu-item">
                                            <a href="app-ecommerce-customer-details-overview.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Overview">Overview</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-customer-details-security.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Security">Security</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-customer-details-billing.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Address &amp; Billing">Address &amp; Billing</div>
                                            </a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="app-ecommerce-customer-details-notifications.html" class="menu-link">
                                                <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="app-ecommerce-manage-reviews.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Manage Reviews">Manage Reviews</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-ecommerce-referral.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Referrals">Referrals</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Settings">Settings</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-ecommerce-settings-detail.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Store Details">Store Details</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-settings-payments.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Payments">Payments</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-settings-checkout.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Checkout">Checkout</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-settings-shipping.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Shipping &amp; Delivery">Shipping &amp; Delivery</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-settings-locations.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Locations">Locations</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-ecommerce-settings-notifications.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <!-- e-commerce-app menu end -->
                <!-- Academy menu start -->
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-book-open"></i>
                        <div class="text-truncate" data-i18n="Academy">Academy</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="app-academy-dashboard.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Dashboard">Dashboard</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-academy-course.html" class="menu-link">
                                <div class="text-truncate" data-i18n="My Course">My Course</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-academy-course-details.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Course Details">Course Details</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- Academy menu end -->
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-car"></i>
                        <div class="text-truncate" data-i18n="Logistics">Logistics</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="app-logistics-dashboard.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Dashboard">Dashboard</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-logistics-fleet.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Fleet">Fleet</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-food-menu"></i>
                        <div class="text-truncate" data-i18n="Invoice">Invoice</div>
                        <span class="badge badge-center rounded-pill bg-success ms-auto">4</span>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="app-invoice-list.html" class="menu-link">
                                <div class="text-truncate" data-i18n="List">List</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-invoice-preview.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Preview">Preview</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-invoice-edit.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Edit">Edit</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-invoice-add.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Add">Add</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-user"></i>
                        <div class="text-truncate" data-i18n="Users">Users</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="app-user-list.html" class="menu-link">
                                <div class="text-truncate" data-i18n="List">List</div>
                            </a>
                        </li>

                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="View">View</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="app-user-view-account.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Account">Account</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-user-view-security.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Security">Security</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-user-view-billing.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Billing &amp; Plans">Billing &amp; Plans</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-user-view-notifications.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="app-user-view-connections.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Connections">Connections</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-check-shield"></i>
                        <div class="text-truncate" data-i18n="Roles &amp; Permissions">Roles &amp; Permissions</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="app-access-roles.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Roles">Roles</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-access-permission.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Permission">Permission</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-dock-top"></i>
                        <div class="text-truncate" data-i18n="Pages">Pages</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="User Profile">User Profile</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="pages-profile-user.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Profile">Profile</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-profile-teams.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Teams">Teams</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-profile-projects.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Projects">Projects</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-profile-connections.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Connections">Connections</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Account Settings">Account Settings</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="pages-account-settings-account.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Account">Account</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-account-settings-security.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Security">Security</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-account-settings-billing.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Billing &amp; Plans">Billing &amp; Plans</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-account-settings-notifications.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Notifications">Notifications</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-account-settings-connections.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Connections">Connections</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="pages-faq.html" class="menu-link">
                                <div class="text-truncate" data-i18n="FAQ">FAQ</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="pages-pricing.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Pricing">Pricing</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Misc">Misc</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="pages-misc-error.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Error">Error</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-misc-under-maintenance.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Under Maintenance">Under Maintenance</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-misc-comingsoon.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Coming Soon">Coming Soon</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="pages-misc-not-authorized.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Not Authorized">Not Authorized</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                        <div class="text-truncate" data-i18n="Authentications">Authentications</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Login">Login</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="auth-login-basic.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="auth-login-cover.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Register">Register</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="auth-register-basic.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="auth-register-cover.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="auth-register-multisteps.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Multi-steps">Multi-steps</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Verify Email">Verify Email</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="auth-verify-email-basic.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="auth-verify-email-cover.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Reset Password">Reset Password</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="auth-reset-password-basic.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="auth-reset-password-cover.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Forgot Password">Forgot Password</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="auth-forgot-password-basic.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="auth-forgot-password-cover.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Two Steps">Two Steps</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="auth-two-steps-basic.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="auth-two-steps-cover.html" class="menu-link" target="_blank">
                                        <div class="text-truncate" data-i18n="Cover">Cover</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-spreadsheet"></i>
                        <div class="text-truncate" data-i18n="Wizard Examples">Wizard Examples</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="wizard-ex-checkout.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Checkout">Checkout</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="wizard-ex-property-listing.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Property Listing">Property Listing</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="wizard-ex-create-deal.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Create Deal">Create Deal</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="modal-examples.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-window-open"></i>
                        <div class="text-truncate" data-i18n="Modal Examples">Modal Examples</div>
                    </a>
                </li>

                <!-- Components -->
                <li class="menu-header small text-uppercase"><span class="menu-header-text" data-i18n="Components">Components</span></li>
                <!-- Cards -->
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-collection"></i>
                        <div class="text-truncate" data-i18n="Cards">Cards</div>
                        <span class="badge badge-center rounded-pill bg-danger ms-auto">6</span>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="cards-basic.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Basic">Basic</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="cards-advance.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Advance">Advance</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="cards-statistics.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Statistics">Statistics</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="cards-analytics.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Analytics">Analytics</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="cards-gamifications.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Gamifications">Gamifications</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="cards-actions.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Actions">Actions</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- User interface -->
                <li class="menu-item">
                    <a href="javascript:void(0)" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-box"></i>
                        <div class="text-truncate" data-i18n="User interface">User interface</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="ui-accordion.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Accordion">Accordion</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-alerts.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Alerts">Alerts</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-badges.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Badges">Badges</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-buttons.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Buttons">Buttons</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-carousel.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Carousel">Carousel</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-collapse.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Collapse">Collapse</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-dropdowns.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Dropdowns">Dropdowns</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-footer.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Footer">Footer</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-list-groups.html" class="menu-link">
                                <div class="text-truncate" data-i18n="List Groups">List Groups</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-modals.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Modals">Modals</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-navbar.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Navbar">Navbar</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-offcanvas.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Offcanvas">Offcanvas</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-pagination-breadcrumbs.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Pagination &amp; Breadcrumbs">Pagination &amp; Breadcrumbs</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-progress.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Progress">Progress</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-spinners.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Spinners">Spinners</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-tabs-pills.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Tabs &amp; Pills">Tabs &amp; Pills</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-toasts.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Toasts">Toasts</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-tooltips-popovers.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Tooltips &amp; Popovers">Tooltips &amp; Popovers</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="ui-typography.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Typography">Typography</div>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Extended components -->
                <li class="menu-item">
                    <a href="javascript:void(0)" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-copy"></i>
                        <div class="text-truncate" data-i18n="Extended UI">Extended UI</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="extended-ui-avatar.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Avatar">Avatar</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="extended-ui-blockui.html" class="menu-link">
                                <div class="text-truncate" data-i18n="BlockUI">BlockUI</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="extended-ui-drag-and-drop.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Drag &amp; Drop">Drag &amp; Drop</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="extended-ui-media-player.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Media Player">Media Player</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="extended-ui-perfect-scrollbar.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Perfect Scrollbar">Perfect Scrollbar</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="extended-ui-star-ratings.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Star Ratings">Star Ratings</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="extended-ui-sweetalert2.html" class="menu-link">
                                <div class="text-truncate" data-i18n="SweetAlert2">SweetAlert2</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="extended-ui-text-divider.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Text Divider">Text Divider</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="javascript:void(0);" class="menu-link menu-toggle">
                                <div class="text-truncate" data-i18n="Timeline">Timeline</div>
                            </a>
                            <ul class="menu-sub">
                                <li class="menu-item">
                                    <a href="extended-ui-timeline-basic.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Basic">Basic</div>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="extended-ui-timeline-fullscreen.html" class="menu-link">
                                        <div class="text-truncate" data-i18n="Fullscreen">Fullscreen</div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <a href="extended-ui-tour.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Tour">Tour</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="extended-ui-treeview.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Treeview">Treeview</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="extended-ui-misc.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Miscellaneous">Miscellaneous</div>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Icons -->
                <li class="menu-item">
                    <a href="javascript:void(0)" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-crown"></i>
                        <div class="text-truncate" data-i18n="Icons">Icons</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="icons-boxicons.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Boxicons">Boxicons</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="icons-font-awesome.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Fontawesome">Fontawesome</div>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Forms & Tables -->
                <li class="menu-header small text-uppercase"><span class="menu-header-text" data-i18n="Forms &amp; Tables">Forms &amp; Tables</span></li>
                <!-- Forms -->
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-detail"></i>
                        <div class="text-truncate" data-i18n="Form Elements">Form Elements</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="forms-basic-inputs.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Basic Inputs">Basic Inputs</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="forms-input-groups.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Input groups">Input groups</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="forms-custom-options.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Custom Options">Custom Options</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="forms-editors.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Editors">Editors</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="forms-file-upload.html" class="menu-link">
                                <div class="text-truncate" data-i18n="File Upload">File Upload</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="forms-pickers.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Pickers">Pickers</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="forms-selects.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Select &amp; Tags">Select &amp; Tags</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="forms-sliders.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Sliders">Sliders</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="forms-switches.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Switches">Switches</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="forms-extras.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Extras">Extras</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-detail"></i>
                        <div class="text-truncate" data-i18n="Form Layouts">Form Layouts</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="form-layouts-vertical.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Vertical Form">Vertical Form</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="form-layouts-horizontal.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Horizontal Form">Horizontal Form</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="form-layouts-sticky.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Sticky Actions">Sticky Actions</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-carousel"></i>
                        <div class="text-truncate" data-i18n="Form Wizard">Form Wizard</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="form-wizard-numbered.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Numbered">Numbered</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="form-wizard-icons.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Icons">Icons</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="form-validation.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-list-check"></i>
                        <div class="text-truncate" data-i18n="Form Validation">Form Validation</div>
                    </a>
                </li>
                <!-- Tables -->
                <li class="menu-item">
                    <a href="tables-basic.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-table"></i>
                        <div class="text-truncate" data-i18n="Tables">Tables</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-grid"></i>
                        <div class="text-truncate" data-i18n="Datatables">Datatables</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="tables-datatables-basic.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Basic">Basic</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="tables-datatables-advanced.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Advanced">Advanced</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="tables-datatables-extensions.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Extensions">Extensions</div>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Charts & Maps -->
                <li class="menu-header small text-uppercase">
                    <span class="menu-header-text" data-i18n="Charts &amp; Maps">Charts &amp; Maps</span>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-chart"></i>
                        <div class="text-truncate" data-i18n="Charts">Charts</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="charts-apex.html" class="menu-link">
                                <div class="text-truncate" data-i18n="Apex Charts">Apex Charts</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="charts-chartjs.html" class="menu-link">
                                <div class="text-truncate" data-i18n="ChartJS">ChartJS</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item">
                    <a href="maps-leaflet.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-map-alt"></i>
                        <div class="text-truncate" data-i18n="Leaflet Maps">Leaflet Maps</div>
                    </a>
                </li>

                <!-- Misc -->
                <li class="menu-header small text-uppercase"><span class="menu-header-text" data-i18n="Misc">Misc</span></li>
                <li class="menu-item">
                    <a href="https://themeselection.com/support/" target="_blank" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-support"></i>
                        <div class="text-truncate" data-i18n="Support">Support</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/" target="_blank" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-file"></i>
                        <div class="text-truncate" data-i18n="Documentation">Documentation</div>
                    </a>
                </li>
                <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 4px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></ul>



        </aside>
        <!-- / Menu -->



        <!-- Layout container -->
        <div class="layout-page">





            <!-- Navbar -->




            <nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">











                <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0   d-xl-none ">
                    <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                        <i class="bx bx-menu bx-sm"></i>
                    </a>
                </div>


                <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">




                    <!-- Search -->
                    <div class="navbar-nav align-items-center">
                        <div class="nav-item navbar-search-wrapper mb-0">
                            <a class="nav-item nav-link search-toggler px-0" href="javascript:void(0);">
                                <i class="bx bx-search bx-sm"></i>
                                <span class="d-none d-md-inline-block text-muted">Search (Ctrl+/)</span>
                            </a>
                        </div>
                    </div>
                    <!-- /Search -->





                    <ul class="navbar-nav flex-row align-items-center ms-auto">




                        <!-- Language -->
                        <li class="nav-item dropdown-language dropdown me-2 me-xl-0">
                            <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                <i class="bx bx-globe bx-sm"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li>
                                    <a class="dropdown-item active" href="javascript:void(0);" data-language="en" data-text-direction="ltr">
                                        <span class="align-middle">English</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="javascript:void(0);" data-language="fr" data-text-direction="ltr">
                                        <span class="align-middle">French</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="javascript:void(0);" data-language="ar" data-text-direction="rtl">
                                        <span class="align-middle">Arabic</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="javascript:void(0);" data-language="de" data-text-direction="ltr">
                                        <span class="align-middle">German</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- /Language -->

                        <!-- Quick links  -->
                        <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown me-2 me-xl-0">
                            <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                                <i class="bx bx-grid-alt bx-sm"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end py-0">
                                <div class="dropdown-menu-header border-bottom">
                                    <div class="dropdown-header d-flex align-items-center py-3">
                                        <h5 class="text-body mb-0 me-auto">Shortcuts</h5>
                                        <a href="javascript:void(0)" class="dropdown-shortcuts-add text-body" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Add shortcuts" data-bs-original-title="Add shortcuts"><i class="bx bx-sm bx-plus-circle"></i></a>
                                    </div>
                                </div>
                                <div class="dropdown-shortcuts-list scrollable-container ps">
                                    <div class="row row-bordered overflow-visible g-0">
                                        <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                      <i class="bx bx-calendar fs-4"></i>
                    </span>
                                            <a href="app-calendar.html" class="stretched-link">Calendar</a>
                                            <small class="text-muted mb-0">Appointments</small>
                                        </div>
                                        <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                      <i class="bx bx-food-menu fs-4"></i>
                    </span>
                                            <a href="app-invoice-list.html" class="stretched-link">Invoice App</a>
                                            <small class="text-muted mb-0">Manage Accounts</small>
                                        </div>
                                    </div>
                                    <div class="row row-bordered overflow-visible g-0">
                                        <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                      <i class="bx bx-user fs-4"></i>
                    </span>
                                            <a href="app-user-list.html" class="stretched-link">User App</a>
                                            <small class="text-muted mb-0">Manage Users</small>
                                        </div>
                                        <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                      <i class="bx bx-check-shield fs-4"></i>
                    </span>
                                            <a href="app-access-roles.html" class="stretched-link">Role Management</a>
                                            <small class="text-muted mb-0">Permission</small>
                                        </div>
                                    </div>
                                    <div class="row row-bordered overflow-visible g-0">
                                        <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                      <i class="bx bx-pie-chart-alt-2 fs-4"></i>
                    </span>
                                            <a href="index.html" class="stretched-link">Dashboard</a>
                                            <small class="text-muted mb-0">User Profile</small>
                                        </div>
                                        <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                      <i class="bx bx-cog fs-4"></i>
                    </span>
                                            <a href="pages-account-settings-account.html" class="stretched-link">Setting</a>
                                            <small class="text-muted mb-0">Account Settings</small>
                                        </div>
                                    </div>
                                    <div class="row row-bordered overflow-visible g-0">
                                        <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                      <i class="bx bx-help-circle fs-4"></i>
                    </span>
                                            <a href="pages-faq.html" class="stretched-link">FAQs</a>
                                            <small class="text-muted mb-0">FAQs &amp; Articles</small>
                                        </div>
                                        <div class="dropdown-shortcuts-item col">
                    <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                      <i class="bx bx-window-open fs-4"></i>
                    </span>
                                            <a href="modal-examples.html" class="stretched-link">Modals</a>
                                            <small class="text-muted mb-0">Useful Popups</small>
                                        </div>
                                    </div>
                                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
                            </div>
                        </li>
                        <!-- Quick links -->


                        <!-- Style Switcher -->
                        <li class="nav-item dropdown-style-switcher dropdown me-2 me-xl-0">
                            <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                <i class="bx bx-sm bx-sun"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end dropdown-styles">
                                <li>
                                    <a class="dropdown-item" href="javascript:void(0);" data-theme="light">
                                        <span class="align-middle"><i class="bx bx-sun me-2"></i>Light</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="javascript:void(0);" data-theme="dark">
                                        <span class="align-middle"><i class="bx bx-moon me-2"></i>Dark</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="javascript:void(0);" data-theme="system">
                                        <span class="align-middle"><i class="bx bx-desktop me-2"></i>System</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- / Style Switcher-->


                        <!-- Notification -->
                        <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">
                            <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                                <i class="bx bx-bell bx-sm"></i>
                                <span class="badge bg-danger rounded-pill badge-notifications">5</span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end py-0">
                                <li class="dropdown-menu-header border-bottom">
                                    <div class="dropdown-header d-flex align-items-center py-3">
                                        <h5 class="text-body mb-0 me-auto">Notification</h5>
                                        <a href="javascript:void(0)" class="dropdown-notifications-all text-body" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="Mark all as read" data-bs-original-title="Mark all as read"><i class="bx fs-4 bx-envelope-open"></i></a>
                                    </div>
                                </li>
                                <li class="dropdown-notifications-list scrollable-container ps">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                            <div class="d-flex">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar">
                                                        <img src="${contextPath}/frontend/assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="mb-1">Congratulation Lettie 🎉</h6>
                                                    <p class="mb-0">Won the monthly best seller gold badge</p>
                                                    <small class="text-muted">1h ago</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                                                    <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                            <div class="d-flex">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar">
                                                        <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="mb-1">Charles Franklin</h6>
                                                    <p class="mb-0">Accepted your connection</p>
                                                    <small class="text-muted">12hr ago</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                                                    <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                            <div class="d-flex">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar">
                                                        <img src="${contextPath}/frontend/assets/img/avatars/2.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="mb-1">New Message ✉️</h6>
                                                    <p class="mb-0">You have new message from Natalie</p>
                                                    <small class="text-muted">1h ago</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                                                    <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                            <div class="d-flex">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar">
                                                        <span class="avatar-initial rounded-circle bg-label-success"><i class="bx bx-cart"></i></span>
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="mb-1">Whoo! You have new order 🛒 </h6>
                                                    <p class="mb-0">ACME Inc. made new order $1,154</p>
                                                    <small class="text-muted">1 day ago</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                                                    <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                            <div class="d-flex">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar">
                                                        <img src="${contextPath}/frontend/assets/img/avatars/9.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="mb-1">Application has been approved 🚀 </h6>
                                                    <p class="mb-0">Your ABC project application has been approved.</p>
                                                    <small class="text-muted">2 days ago</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                                                    <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                            <div class="d-flex">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar">
                                                        <span class="avatar-initial rounded-circle bg-label-success"><i class="bx bx-pie-chart-alt"></i></span>
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="mb-1">Monthly report is generated</h6>
                                                    <p class="mb-0">July monthly financial report is generated </p>
                                                    <small class="text-muted">3 days ago</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                                                    <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                            <div class="d-flex">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar">
                                                        <img src="../../assets/img/avatars/5.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="mb-1">Send connection request</h6>
                                                    <p class="mb-0">Peter sent you connection request</p>
                                                    <small class="text-muted">4 days ago</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                                                    <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                            <div class="d-flex">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar">
                                                        <img src="../../assets/img/avatars/6.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="mb-1">New message from Jane</h6>
                                                    <p class="mb-0">Your have new message from Jane</p>
                                                    <small class="text-muted">5 days ago</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                                                    <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                            <div class="d-flex">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar">
                                                        <span class="avatar-initial rounded-circle bg-label-warning"><i class="bx bx-error"></i></span>
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="mb-1">CPU is running high</h6>
                                                    <p class="mb-0">CPU Utilization Percent is currently at 88.63%,</p>
                                                    <small class="text-muted">5 days ago</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <a href="javascript:void(0)" class="dropdown-notifications-read"><span class="badge badge-dot"></span></a>
                                                    <a href="javascript:void(0)" class="dropdown-notifications-archive"><span class="bx bx-x"></span></a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></li>
                                <li class="dropdown-menu-footer border-top p-3">
                                    <button class="btn btn-primary text-uppercase w-100">view all notifications</button>
                                </li>
                            </ul>
                        </li>
                        <!--/ Notification -->
                        <!-- User -->
                        <li class="nav-item navbar-dropdown dropdown-user dropdown">
                            <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                <div class="avatar avatar-online">
                                    <img src="../../assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                                </div>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li>
                                    <a class="dropdown-item" href="pages-account-settings-account.html">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar avatar-online">
                                                    <img src="../../assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                                                </div>
                                            </div>
                                            <div class="flex-grow-1">
                                                <span class="fw-medium d-block">John Doe</span>
                                                <small class="text-muted">Admin</small>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-profile-user.html">
                                        <i class="bx bx-user me-2"></i>
                                        <span class="align-middle">My Profile</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-account-settings-account.html">
                                        <i class="bx bx-cog me-2"></i>
                                        <span class="align-middle">Settings</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-account-settings-billing.html">
                  <span class="d-flex align-items-center align-middle">
                    <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                    <span class="flex-grow-1 align-middle">Billing</span>
                    <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                  </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-faq.html">
                                        <i class="bx bx-help-circle me-2"></i>
                                        <span class="align-middle">FAQ</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-pricing.html">
                                        <i class="bx bx-dollar me-2"></i>
                                        <span class="align-middle">Pricing</span>
                                    </a>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="auth-login-cover.html" target="_blank">
                                        <i class="bx bx-power-off me-2"></i>
                                        <span class="align-middle">Log Out</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!--/ User -->


                    </ul>
                </div>


                <!-- Search Small Screens -->
                <div class="navbar-search-wrapper search-input-wrapper  d-none">
                    <span class="twitter-typeahead" style="position: relative; display: inline-block;"><input type="text" class="form-control search-input container-xxl border-0 tt-input" placeholder="Search..." aria-label="Search..." autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top;"><pre aria-hidden="true" style="position: absolute; visibility: hidden; white-space: pre; font-family: &quot;Public Sans&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-alternates: normal; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-position: normal; font-variant-emoji: normal; font-weight: 400; word-spacing: 0px; letter-spacing: 0px; text-indent: 0px; text-rendering: optimizelegibility; text-transform: none;"></pre><div class="tt-menu navbar-search-suggestion ps" style="position: absolute; top: 100%; left: 0px; z-index: 100; display: none;"><div class="tt-dataset tt-dataset-pages"></div><div class="tt-dataset tt-dataset-files"></div><div class="tt-dataset tt-dataset-members"></div><div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div></span>
                    <i class="bx bx-x bx-sm search-toggler cursor-pointer"></i>
                </div>


            </nav>



            <!-- / Navbar -->



            <!-- Content wrapper -->
            <div class="content-wrapper">

                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">


                    <div class="card app-calendar-wrapper">
                        <div class="row g-0">
                            <!-- Calendar Sidebar -->
                            <div class="col app-calendar-sidebar" id="app-calendar-sidebar">
                                <div class="border-bottom p-4 my-sm-0 mb-3">
                                    <div class="d-grid">
                                        <button class="btn btn-primary btn-toggle-sidebar" data-bs-toggle="offcanvas" data-bs-target="#addEventSidebar" aria-controls="addEventSidebar">
                                            <i class="bx bx-plus me-1"></i>
                                            <span class="align-middle">Add Event</span>
                                        </button>
                                    </div>
                                </div>
                                <div class="p-4">
                                    <!-- inline calendar (flatpicker) -->
                                    <div class="ms-n2">
                                        <div class="inline-calendar flatpickr-input" readonly="readonly"></div><div class="flatpickr-calendar animate inline arrowTop" tabindex="-1"><div class="flatpickr-months"><span class="flatpickr-prev-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M5.207 8.471l7.146 7.147-0.707 0.707-7.853-7.854 7.854-7.853 0.707 0.707-7.147 7.146z"></path></svg></span><div class="flatpickr-month"><div class="flatpickr-current-month"><span class="cur-month">June </span><div class="numInputWrapper"><input class="numInput cur-year" type="number" tabindex="-1" aria-label="Year"><span class="arrowUp"></span><span class="arrowDown"></span></div></div></div><span class="flatpickr-next-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M13.207 8.472l-7.854 7.854-0.707-0.707 7.146-7.146-7.146-7.148 0.707-0.707 7.854 7.854z"></path></svg></span></div><div class="flatpickr-innerContainer"><div class="flatpickr-rContainer"><div class="flatpickr-weekdays"><div class="flatpickr-weekdaycontainer">
      <span class="flatpickr-weekday">
        Sun</span><span class="flatpickr-weekday">Mon</span><span class="flatpickr-weekday">Tue</span><span class="flatpickr-weekday">Wed</span><span class="flatpickr-weekday">Thu</span><span class="flatpickr-weekday">Fri</span><span class="flatpickr-weekday">Sat
      </span>
                                    </div></div><div class="flatpickr-days" tabindex="-1"><div class="dayContainer"><span class="flatpickr-day prevMonthDay" aria-label="May 26, 2024" tabindex="-1">26</span><span class="flatpickr-day prevMonthDay" aria-label="May 27, 2024" tabindex="-1">27</span><span class="flatpickr-day prevMonthDay" aria-label="May 28, 2024" tabindex="-1">28</span><span class="flatpickr-day prevMonthDay" aria-label="May 29, 2024" tabindex="-1">29</span><span class="flatpickr-day prevMonthDay" aria-label="May 30, 2024" tabindex="-1">30</span><span class="flatpickr-day prevMonthDay" aria-label="May 31, 2024" tabindex="-1">31</span><span class="flatpickr-day" aria-label="June 1, 2024" tabindex="-1">1</span><span class="flatpickr-day" aria-label="June 2, 2024" tabindex="-1">2</span><span class="flatpickr-day today" aria-label="June 3, 2024" aria-current="date" tabindex="-1">3</span><span class="flatpickr-day" aria-label="June 4, 2024" tabindex="-1">4</span><span class="flatpickr-day" aria-label="June 5, 2024" tabindex="-1">5</span><span class="flatpickr-day" aria-label="June 6, 2024" tabindex="-1">6</span><span class="flatpickr-day" aria-label="June 7, 2024" tabindex="-1">7</span><span class="flatpickr-day" aria-label="June 8, 2024" tabindex="-1">8</span><span class="flatpickr-day" aria-label="June 9, 2024" tabindex="-1">9</span><span class="flatpickr-day" aria-label="June 10, 2024" tabindex="-1">10</span><span class="flatpickr-day" aria-label="June 11, 2024" tabindex="-1">11</span><span class="flatpickr-day" aria-label="June 12, 2024" tabindex="-1">12</span><span class="flatpickr-day" aria-label="June 13, 2024" tabindex="-1">13</span><span class="flatpickr-day" aria-label="June 14, 2024" tabindex="-1">14</span><span class="flatpickr-day" aria-label="June 15, 2024" tabindex="-1">15</span><span class="flatpickr-day" aria-label="June 16, 2024" tabindex="-1">16</span><span class="flatpickr-day" aria-label="June 17, 2024" tabindex="-1">17</span><span class="flatpickr-day" aria-label="June 18, 2024" tabindex="-1">18</span><span class="flatpickr-day" aria-label="June 19, 2024" tabindex="-1">19</span><span class="flatpickr-day" aria-label="June 20, 2024" tabindex="-1">20</span><span class="flatpickr-day" aria-label="June 21, 2024" tabindex="-1">21</span><span class="flatpickr-day" aria-label="June 22, 2024" tabindex="-1">22</span><span class="flatpickr-day" aria-label="June 23, 2024" tabindex="-1">23</span><span class="flatpickr-day" aria-label="June 24, 2024" tabindex="-1">24</span><span class="flatpickr-day" aria-label="June 25, 2024" tabindex="-1">25</span><span class="flatpickr-day" aria-label="June 26, 2024" tabindex="-1">26</span><span class="flatpickr-day" aria-label="June 27, 2024" tabindex="-1">27</span><span class="flatpickr-day" aria-label="June 28, 2024" tabindex="-1">28</span><span class="flatpickr-day" aria-label="June 29, 2024" tabindex="-1">29</span><span class="flatpickr-day" aria-label="June 30, 2024" tabindex="-1">30</span><span class="flatpickr-day nextMonthDay" aria-label="July 1, 2024" tabindex="-1">1</span><span class="flatpickr-day nextMonthDay" aria-label="July 2, 2024" tabindex="-1">2</span><span class="flatpickr-day nextMonthDay" aria-label="July 3, 2024" tabindex="-1">3</span><span class="flatpickr-day nextMonthDay" aria-label="July 4, 2024" tabindex="-1">4</span><span class="flatpickr-day nextMonthDay" aria-label="July 5, 2024" tabindex="-1">5</span><span class="flatpickr-day nextMonthDay" aria-label="July 6, 2024" tabindex="-1">6</span></div></div></div></div></div>
                                    </div>

                                    <hr class="container-m-nx my-4">

                                    <!-- Filter -->
                                    <div class="mb-4">
                                        <small class="text-small text-muted text-uppercase align-middle">Filter</small>
                                    </div>

                                    <div class="form-check mb-2">
                                        <input class="form-check-input select-all" type="checkbox" id="selectAll" data-value="all" checked="">
                                        <label class="form-check-label" for="selectAll">View All</label>
                                    </div>

                                    <div class="app-calendar-events-filter">
                                        <div class="form-check form-check-danger mb-2">
                                            <input class="form-check-input input-filter" type="checkbox" id="select-personal" data-value="personal" checked="">
                                            <label class="form-check-label" for="select-personal">Personal</label>
                                        </div>
                                        <div class="form-check mb-2">
                                            <input class="form-check-input input-filter" type="checkbox" id="select-business" data-value="business" checked="">
                                            <label class="form-check-label" for="select-business">Business</label>
                                        </div>
                                        <div class="form-check form-check-warning mb-2">
                                            <input class="form-check-input input-filter" type="checkbox" id="select-family" data-value="family" checked="">
                                            <label class="form-check-label" for="select-family">Family</label>
                                        </div>
                                        <div class="form-check form-check-success mb-2">
                                            <input class="form-check-input input-filter" type="checkbox" id="select-holiday" data-value="holiday" checked="">
                                            <label class="form-check-label" for="select-holiday">Holiday</label>
                                        </div>
                                        <div class="form-check form-check-info">
                                            <input class="form-check-input input-filter" type="checkbox" id="select-etc" data-value="etc" checked="">
                                            <label class="form-check-label" for="select-etc">ETC</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /Calendar Sidebar -->

                            <!-- Calendar & Modal -->
                            <div class="col app-calendar-content">
                                <div class="card shadow-none border-0">
                                    <div class="card-body pb-0">
                                        <!-- FullCalendar -->
                                        <div id="calendar" class="fc fc-media-screen fc-direction-ltr fc-theme-standard"><div class="fc-header-toolbar fc-toolbar "><div class="fc-toolbar-chunk"><div class="fc-button-group"><button type="button" title="Sidebar" aria-pressed="false" class="fc-sidebarToggle-button fc-button d-lg-none d-inline-block ps-0" data-bs-toggle="sidebar" data-overlay="" data-target="#app-calendar-sidebar"><i class="bx bx-menu bx-sm text-heading"></i></button><button type="button" aria-pressed="false" class="fc--button fc-button fc-button-primary"></button></div><div class="fc-button-group"><button type="button" title="Previous month" aria-pressed="false" class="fc-prev-button fc-button fc-button-primary"><span class="fc-icon fc-icon-chevron-left" role="img"></span></button><button type="button" title="Next month" aria-pressed="false" class="fc-next-button fc-button fc-button-primary"><span class="fc-icon fc-icon-chevron-right" role="img"></span></button><button type="button" aria-pressed="false" class="fc--button fc-button fc-button-primary"></button></div><h2 class="fc-toolbar-title" id="fc-dom-1">June 2024</h2></div><div class="fc-toolbar-chunk"></div><div class="fc-toolbar-chunk"><div class="fc-button-group"><button type="button" title="month view" aria-pressed="true" class="fc-dayGridMonth-button fc-button fc-button-primary fc-button-active">month</button><button type="button" title="week view" aria-pressed="false" class="fc-timeGridWeek-button fc-button fc-button-primary">week</button><button type="button" title="day view" aria-pressed="false" class="fc-timeGridDay-button fc-button fc-button-primary">day</button><button type="button" title="list view" aria-pressed="false" class="fc-listMonth-button fc-button fc-button-primary">list</button></div></div></div><div aria-labelledby="fc-dom-1" class="fc-view-harness fc-view-harness-active" style="height: 405.925926px;"><div class="fc-dayGridMonth-view fc-view fc-daygrid"><table role="grid" class="fc-scrollgrid  fc-scrollgrid-liquid"><thead role="rowgroup"><tr role="presentation" class="fc-scrollgrid-section fc-scrollgrid-section-header "><th role="presentation"><div class="fc-scroller-harness"><div class="fc-scroller" style="overflow: hidden;"><table role="presentation" class="fc-col-header " style="width: 548px;"><colgroup></colgroup><thead role="presentation"><tr role="row"><th role="columnheader" class="fc-col-header-cell fc-day fc-day-sun"><div class="fc-scrollgrid-sync-inner"><a aria-label="Sunday" class="fc-col-header-cell-cushion">Sun</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-mon"><div class="fc-scrollgrid-sync-inner"><a aria-label="Monday" class="fc-col-header-cell-cushion">Mon</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-tue"><div class="fc-scrollgrid-sync-inner"><a aria-label="Tuesday" class="fc-col-header-cell-cushion">Tue</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-wed"><div class="fc-scrollgrid-sync-inner"><a aria-label="Wednesday" class="fc-col-header-cell-cushion">Wed</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-thu"><div class="fc-scrollgrid-sync-inner"><a aria-label="Thursday" class="fc-col-header-cell-cushion">Thu</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-fri"><div class="fc-scrollgrid-sync-inner"><a aria-label="Friday" class="fc-col-header-cell-cushion">Fri</a></div></th><th role="columnheader" class="fc-col-header-cell fc-day fc-day-sat"><div class="fc-scrollgrid-sync-inner"><a aria-label="Saturday" class="fc-col-header-cell-cushion">Sat</a></div></th></tr></thead></table></div></div></th></tr></thead><tbody role="rowgroup"><tr role="presentation" class="fc-scrollgrid-section fc-scrollgrid-section-body  fc-scrollgrid-section-liquid"><td role="presentation"><div class="fc-scroller-harness fc-scroller-harness-liquid"><div class="fc-scroller fc-scroller-liquid-absolute" style="overflow: hidden auto;"><div class="fc-daygrid-body fc-daygrid-body-unbalanced " style="width: 548px;"><table role="presentation" class="fc-scrollgrid-sync-table" style="width: 548px; height: 622px;"><colgroup></colgroup><tbody role="presentation"><tr role="row"><td aria-labelledby="fc-dom-2" role="gridcell" data-date="2024-05-26" class="fc-day fc-day-sun fc-day-past fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to May 26, 2024" data-navlink="" tabindex="0" id="fc-dom-2" class="fc-daygrid-day-number">26</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-4" role="gridcell" data-date="2024-05-27" class="fc-day fc-day-mon fc-day-past fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to May 27, 2024" data-navlink="" tabindex="0" id="fc-dom-4" class="fc-daygrid-day-number">27</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-6" role="gridcell" data-date="2024-05-28" class="fc-day fc-day-tue fc-day-past fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to May 28, 2024" data-navlink="" tabindex="0" id="fc-dom-6" class="fc-daygrid-day-number">28</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-8" role="gridcell" data-date="2024-05-29" class="fc-day fc-day-wed fc-day-past fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to May 29, 2024" data-navlink="" tabindex="0" id="fc-dom-8" class="fc-daygrid-day-number">29</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-10" role="gridcell" data-date="2024-05-30" class="fc-day fc-day-thu fc-day-past fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to May 30, 2024" data-navlink="" tabindex="0" id="fc-dom-10" class="fc-daygrid-day-number">30</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-12" role="gridcell" data-date="2024-05-31" class="fc-day fc-day-fri fc-day-past fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to May 31, 2024" data-navlink="" tabindex="0" id="fc-dom-12" class="fc-daygrid-day-number">31</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-14" role="gridcell" data-date="2024-06-01" class="fc-day fc-day-sat fc-day-past fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 1, 2024" data-navlink="" tabindex="0" id="fc-dom-14" class="fc-daygrid-day-number">1</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr><tr role="row"><td aria-labelledby="fc-dom-16" role="gridcell" data-date="2024-06-02" class="fc-day fc-day-sun fc-day-past fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 2, 2024" data-navlink="" tabindex="0" id="fc-dom-16" class="fc-daygrid-day-number">2</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-18" role="gridcell" data-date="2024-06-03" class="fc-day fc-day-mon fc-day-today fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 3, 2024" data-navlink="" tabindex="0" id="fc-dom-18" class="fc-daygrid-day-number">3</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="top: 0px; left: 0px; right: -78.28125px;"><a tabindex="0" class="fc-event fc-event-draggable fc-event-start fc-event-end fc-event-today fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event-primary"><div class="fc-event-main"><div class="fc-event-main-frame"><div class="fc-event-time">4:13p</div><div class="fc-event-title-container"><div class="fc-event-title fc-sticky">Design Review</div></div></div></div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 32px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-20" role="gridcell" data-date="2024-06-04" class="fc-day fc-day-tue fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 4, 2024" data-navlink="" tabindex="0" id="fc-dom-20" class="fc-daygrid-day-number">4</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 32px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-22" role="gridcell" data-date="2024-06-05" class="fc-day fc-day-wed fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 5, 2024" data-navlink="" tabindex="0" id="fc-dom-22" class="fc-daygrid-day-number">5</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-24" role="gridcell" data-date="2024-06-06" class="fc-day fc-day-thu fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 6, 2024" data-navlink="" tabindex="0" id="fc-dom-24" class="fc-daygrid-day-number">6</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-26" role="gridcell" data-date="2024-06-07" class="fc-day fc-day-fri fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 7, 2024" data-navlink="" tabindex="0" id="fc-dom-26" class="fc-daygrid-day-number">7</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-28" role="gridcell" data-date="2024-06-08" class="fc-day fc-day-sat fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 8, 2024" data-navlink="" tabindex="0" id="fc-dom-28" class="fc-daygrid-day-number">8</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr><tr role="row"><td aria-labelledby="fc-dom-30" role="gridcell" data-date="2024-06-09" class="fc-day fc-day-sun fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 9, 2024" data-navlink="" tabindex="0" id="fc-dom-30" class="fc-daygrid-day-number">9</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-32" role="gridcell" data-date="2024-06-10" class="fc-day fc-day-mon fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 10, 2024" data-navlink="" tabindex="0" id="fc-dom-32" class="fc-daygrid-day-number">10</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-34" role="gridcell" data-date="2024-06-11" class="fc-day fc-day-tue fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 11, 2024" data-navlink="" tabindex="0" id="fc-dom-34" class="fc-daygrid-day-number">11</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-36" role="gridcell" data-date="2024-06-12" class="fc-day fc-day-wed fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 12, 2024" data-navlink="" tabindex="0" id="fc-dom-36" class="fc-daygrid-day-number">12</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-38" role="gridcell" data-date="2024-06-13" class="fc-day fc-day-thu fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 13, 2024" data-navlink="" tabindex="0" id="fc-dom-38" class="fc-daygrid-day-number">13</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-40" role="gridcell" data-date="2024-06-14" class="fc-day fc-day-fri fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 14, 2024" data-navlink="" tabindex="0" id="fc-dom-40" class="fc-daygrid-day-number">14</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-42" role="gridcell" data-date="2024-06-15" class="fc-day fc-day-sat fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 15, 2024" data-navlink="" tabindex="0" id="fc-dom-42" class="fc-daygrid-day-number">15</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr><tr role="row"><td aria-labelledby="fc-dom-44" role="gridcell" data-date="2024-06-16" class="fc-day fc-day-sun fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 16, 2024" data-navlink="" tabindex="0" id="fc-dom-44" class="fc-daygrid-day-number">16</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-46" role="gridcell" data-date="2024-06-17" class="fc-day fc-day-mon fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 17, 2024" data-navlink="" tabindex="0" id="fc-dom-46" class="fc-daygrid-day-number">17</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a tabindex="0" class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-daygrid-event fc-daygrid-dot-event fc-event-warning"><div class="fc-daygrid-event-dot"></div><div class="fc-event-time">12a</div><div class="fc-event-title">Dinner</div></a></div><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a tabindex="0" class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event-info"><div class="fc-event-main"><div class="fc-event-main-frame"><div class="fc-event-title-container"><div class="fc-event-title fc-sticky">Dart Game?</div></div></div></div><div class="fc-event-resizer fc-event-resizer-start"></div><div class="fc-event-resizer fc-event-resizer-end"></div></a></div><div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a tabindex="0" class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event-danger"><div class="fc-event-main"><div class="fc-event-main-frame"><div class="fc-event-title-container"><div class="fc-event-title fc-sticky">Meditation</div></div></div></div><div class="fc-event-resizer fc-event-resizer-start"></div><div class="fc-event-resizer fc-event-resizer-end"></div></a></div><div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a tabindex="0" class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event-primary"><div class="fc-event-main"><div class="fc-event-main-frame"><div class="fc-event-title-container"><div class="fc-event-title fc-sticky">Product Review</div></div></div></div><div class="fc-event-resizer fc-event-resizer-start"></div><div class="fc-event-resizer fc-event-resizer-end"></div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"><a tabindex="0" title="Show 2 more events" aria-expanded="false" aria-controls="" class="fc-daygrid-more-link fc-more-link">+2 more</a></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-48" role="gridcell" data-date="2024-06-18" class="fc-day fc-day-tue fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 18, 2024" data-navlink="" tabindex="0" id="fc-dom-48" class="fc-daygrid-day-number">18</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-50" role="gridcell" data-date="2024-06-19" class="fc-day fc-day-wed fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 19, 2024" data-navlink="" tabindex="0" id="fc-dom-50" class="fc-daygrid-day-number">19</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a tabindex="0" class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-daygrid-event fc-daygrid-dot-event fc-event-danger"><div class="fc-daygrid-event-dot"></div><div class="fc-event-time">12a</div><div class="fc-event-title">Doctor's Appointment</div></a></div><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a tabindex="0" class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event-primary"><div class="fc-event-main"><div class="fc-event-main-frame"><div class="fc-event-title-container"><div class="fc-event-title fc-sticky">Meeting With Client</div></div></div></div><div class="fc-event-resizer fc-event-resizer-start"></div><div class="fc-event-resizer fc-event-resizer-end"></div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-52" role="gridcell" data-date="2024-06-20" class="fc-day fc-day-thu fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 20, 2024" data-navlink="" tabindex="0" id="fc-dom-52" class="fc-daygrid-day-number">20</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-54" role="gridcell" data-date="2024-06-21" class="fc-day fc-day-fri fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 21, 2024" data-navlink="" tabindex="0" id="fc-dom-54" class="fc-daygrid-day-number">21</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="top: 0px; left: 0px; right: -78.296875px;"><a tabindex="0" class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event-success"><div class="fc-event-main"><div class="fc-event-main-frame"><div class="fc-event-title-container"><div class="fc-event-title fc-sticky">Family Trip</div></div></div></div><div class="fc-event-resizer fc-event-resizer-start"></div><div class="fc-event-resizer fc-event-resizer-end"></div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 32px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-56" role="gridcell" data-date="2024-06-22" class="fc-day fc-day-sat fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 22, 2024" data-navlink="" tabindex="0" id="fc-dom-56" class="fc-daygrid-day-number">22</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 32px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr><tr role="row"><td aria-labelledby="fc-dom-58" role="gridcell" data-date="2024-06-23" class="fc-day fc-day-sun fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 23, 2024" data-navlink="" tabindex="0" id="fc-dom-58" class="fc-daygrid-day-number">23</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-60" role="gridcell" data-date="2024-06-24" class="fc-day fc-day-mon fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 24, 2024" data-navlink="" tabindex="0" id="fc-dom-60" class="fc-daygrid-day-number">24</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-62" role="gridcell" data-date="2024-06-25" class="fc-day fc-day-tue fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 25, 2024" data-navlink="" tabindex="0" id="fc-dom-62" class="fc-daygrid-day-number">25</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-64" role="gridcell" data-date="2024-06-26" class="fc-day fc-day-wed fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 26, 2024" data-navlink="" tabindex="0" id="fc-dom-64" class="fc-daygrid-day-number">26</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-66" role="gridcell" data-date="2024-06-27" class="fc-day fc-day-thu fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 27, 2024" data-navlink="" tabindex="0" id="fc-dom-66" class="fc-daygrid-day-number">27</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-68" role="gridcell" data-date="2024-06-28" class="fc-day fc-day-fri fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 28, 2024" data-navlink="" tabindex="0" id="fc-dom-68" class="fc-daygrid-day-number">28</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-70" role="gridcell" data-date="2024-06-29" class="fc-day fc-day-sat fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 29, 2024" data-navlink="" tabindex="0" id="fc-dom-70" class="fc-daygrid-day-number">29</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr><tr role="row"><td aria-labelledby="fc-dom-72" role="gridcell" data-date="2024-06-30" class="fc-day fc-day-sun fc-day-future fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to June 30, 2024" data-navlink="" tabindex="0" id="fc-dom-72" class="fc-daygrid-day-number">30</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-74" role="gridcell" data-date="2024-07-01" class="fc-day fc-day-mon fc-day-future fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to July 1, 2024" data-navlink="" tabindex="0" id="fc-dom-74" class="fc-daygrid-day-number">1</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a tabindex="0" class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-future fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event-primary"><div class="fc-event-main"><div class="fc-event-main-frame"><div class="fc-event-title-container"><div class="fc-event-title fc-sticky">Monthly Meeting</div></div></div></div><div class="fc-event-resizer fc-event-resizer-start"></div><div class="fc-event-resizer fc-event-resizer-end"></div></a></div><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-76" role="gridcell" data-date="2024-07-02" class="fc-day fc-day-tue fc-day-future fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to July 2, 2024" data-navlink="" tabindex="0" id="fc-dom-76" class="fc-daygrid-day-number">2</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-78" role="gridcell" data-date="2024-07-03" class="fc-day fc-day-wed fc-day-future fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to July 3, 2024" data-navlink="" tabindex="0" id="fc-dom-78" class="fc-daygrid-day-number">3</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-80" role="gridcell" data-date="2024-07-04" class="fc-day fc-day-thu fc-day-future fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to July 4, 2024" data-navlink="" tabindex="0" id="fc-dom-80" class="fc-daygrid-day-number">4</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-82" role="gridcell" data-date="2024-07-05" class="fc-day fc-day-fri fc-day-future fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to July 5, 2024" data-navlink="" tabindex="0" id="fc-dom-82" class="fc-daygrid-day-number">5</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td><td aria-labelledby="fc-dom-84" role="gridcell" data-date="2024-07-06" class="fc-day fc-day-sat fc-day-future fc-day-other fc-daygrid-day"><div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"><div class="fc-daygrid-day-top"><a title="Go to July 6, 2024" data-navlink="" tabindex="0" id="fc-dom-84" class="fc-daygrid-day-number">6</a></div><div class="fc-daygrid-day-events"><div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div></div><div class="fc-daygrid-day-bg"></div></div></td></tr></tbody></table></div></div></div></td></tr></tbody></table></div></div></div>
                                    </div>
                                </div>
                                <div class="app-overlay"></div>
                                <!-- FullCalendar Offcanvas -->
                                <div class="offcanvas offcanvas-end event-sidebar" tabindex="-1" id="addEventSidebar" aria-labelledby="addEventSidebarLabel">
                                    <div class="offcanvas-header border-bottom">
                                        <h5 class="offcanvas-title mb-2" id="addEventSidebarLabel">Add Event</h5>
                                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                                    </div>
                                    <div class="offcanvas-body">
                                        <form class="event-form pt-0 fv-plugins-bootstrap5 fv-plugins-framework" id="eventForm" onsubmit="return false" novalidate="novalidate">
                                            <div class="mb-3 fv-plugins-icon-container">
                                                <label class="form-label" for="eventTitle">Title</label>
                                                <input type="text" class="form-control" id="eventTitle" name="eventTitle" placeholder="Event Title">
                                                <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div></div>
                                            <div class="mb-3">
                                                <label class="form-label" for="eventLabel">Label</label>
                                                <div class="position-relative"><select class="select2 select-event-label form-select select2-hidden-accessible" id="eventLabel" name="eventLabel" data-select2-id="eventLabel" tabindex="-1" aria-hidden="true">
                                                    <option data-label="primary" value="Business" selected="" data-select2-id="2">Business</option>
                                                    <option data-label="danger" value="Personal">Personal</option>
                                                    <option data-label="warning" value="Family">Family</option>
                                                    <option data-label="success" value="Holiday">Holiday</option>
                                                    <option data-label="info" value="ETC">ETC</option>
                                                </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 352px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-eventLabel-container"><span class="select2-selection__rendered" id="select2-eventLabel-container" role="textbox" aria-readonly="true" title="Business"><span class="badge badge-dot bg-primary me-2"> </span>Business</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
                                            </div>
                                            <div class="mb-3 fv-plugins-icon-container">
                                                <label class="form-label" for="eventStartDate">Start Date</label>
                                                <input type="text" class="form-control flatpickr-input" id="eventStartDate" name="eventStartDate" placeholder="Start Date" readonly="readonly">
                                                <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div></div>
                                            <div class="mb-3 fv-plugins-icon-container">
                                                <label class="form-label" for="eventEndDate">End Date</label>
                                                <input type="text" class="form-control flatpickr-input" id="eventEndDate" name="eventEndDate" placeholder="End Date" readonly="readonly">
                                                <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div></div>
                                            <div class="mb-3">
                                                <label class="switch">
                                                    <input type="checkbox" class="switch-input allDay-switch">
                                                    <span class="switch-toggle-slider">
                  <span class="switch-on"></span>
                  <span class="switch-off"></span>
                </span>
                                                    <span class="switch-label">All Day</span>
                                                </label>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label" for="eventURL">Event URL</label>
                                                <input type="url" class="form-control" id="eventURL" name="eventURL" placeholder="https://www.google.com">
                                            </div>
                                            <div class="mb-3 select2-primary">
                                                <label class="form-label" for="eventGuests">Add Guests</label>
                                                <div class="position-relative"><select class="select2 select-event-guests form-select select2-hidden-accessible" id="eventGuests" name="eventGuests" multiple="" data-select2-id="eventGuests" tabindex="-1" aria-hidden="true">
                                                    <option data-avatar="1.png" value="Jane Foster">Jane Foster</option>
                                                    <option data-avatar="3.png" value="Donna Frank">Donna Frank</option>
                                                    <option data-avatar="5.png" value="Gabrielle Robertson">Gabrielle Robertson</option>
                                                    <option data-avatar="7.png" value="Lori Spears">Lori Spears</option>
                                                    <option data-avatar="9.png" value="Sandy Vega">Sandy Vega</option>
                                                    <option data-avatar="11.png" value="Cheryl May">Cheryl May</option>
                                                </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="3" style="width: 352px;"><span class="selection"><span class="select2-selection select2-selection--multiple" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="-1" aria-disabled="false"><ul class="select2-selection__rendered"><li class="select2-search select2-search--inline"><input class="select2-search__field" type="search" tabindex="0" autocomplete="off" autocorrect="off" autocapitalize="none" spellcheck="false" role="searchbox" aria-autocomplete="list" placeholder="Select value" style="width: 338px;"></li></ul></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label" for="eventLocation">Location</label>
                                                <input type="text" class="form-control" id="eventLocation" name="eventLocation" placeholder="Enter Location">
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label" for="eventDescription">Description</label>
                                                <textarea class="form-control" name="eventDescription" id="eventDescription"></textarea>
                                            </div>
                                            <div class="mb-3 d-flex justify-content-sm-between justify-content-start my-4">
                                                <div>
                                                    <button type="submit" class="btn btn-primary btn-add-event me-sm-3 me-1">Add</button>
                                                    <button type="reset" class="btn btn-label-secondary btn-cancel me-sm-0 me-1" data-bs-dismiss="offcanvas">Cancel</button>
                                                </div>
                                                <div><button class="btn btn-label-danger btn-delete-event d-none">Delete</button></div>
                                            </div>
                                            <input type="hidden"></form>
                                    </div>
                                </div>
                            </div>
                            <!-- /Calendar & Modal -->
                        </div>
                    </div>

                </div>
                <!-- / Content -->




                <!-- Footer -->
                <footer class="content-footer footer bg-footer-theme">
                    <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                        <div class="mb-2 mb-md-0">
                            © <script>
                            document.write(new Date().getFullYear())

                        </script>2024, made with ❤️ by <a href="https://themeselection.com" target="_blank" class="footer-link fw-medium">ThemeSelection</a>
                        </div>
                        <div class="d-none d-lg-inline-block">

                            <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                            <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                            <a href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/" target="_blank" class="footer-link me-4">Documentation</a>


                            <a href="https://themeselection.com/support/" target="_blank" class="footer-link d-none d-sm-inline-block">Support</a>

                        </div>
                    </div>
                </footer>
                <!-- / Footer -->


                <div class="content-backdrop fade"></div>
            </div>
            <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
    </div>



    <!-- Overlay -->
    <div class="layout-overlay layout-menu-toggle"></div>


    <!-- Drag Target Area To SlideIn Menu On Small Screens -->
    <div class="drag-target" style="touch-action: pan-y; -webkit-user-select: none; -webkit-user-drag: none;"></div>

</div>
<!-- / Layout wrapper -->


<div class="buy-now">
    <a href="https://themeselection.com/item/sneat-dashboard-pro-bootstrap/" target="_blank" class="btn btn-danger btn-buy-now">Buy Now</a>
</div>




<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->

<script src="${contextPath}/frontend/assets/vendor/libs/jquery/jquery.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/popper/popper.js"></script>
<script src="${contextPath}/frontend/assets/vendor/js/bootstrap.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/hammer/hammer.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/i18n/i18n.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/typeahead-js/typeahead.js"></script>
<script src="${contextPath}/frontend/assets/vendor/js/menu.js"></script>

<!-- endbuild -->

<!-- Vendors JS -->
<script src="${contextPath}/frontend/assets/vendor/libs/fullcalendar/fullcalendar.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/@form-validation/popular.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/@form-validation/bootstrap5.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/@form-validation/auto-focus.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/select2/select2.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/moment/moment.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/flatpickr/flatpickr.js"></script>

<!-- Main JS -->
<script src="${contextPath}/frontend/assets/js/main.js"></script>


<!-- Page JS -->
<script src="${contextPath}/frontend/assets/js/app-calendar-events.js"></script>
<script src="${contextPath}/frontend/assets/js/app-calendar.js"></script>







<div id="pocket-extension-root"><div class="pocket-egasyq"></div></div><div id="pocket-extension-styles"><style data-emotion="pocket"></style></div><div class="flatpickr-calendar hasTime animate arrowTop arrowLeft rightMost" tabindex="-1" style="top: 320px; left: auto; right: -376px;"><div class="flatpickr-months"><span class="flatpickr-prev-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M5.207 8.471l7.146 7.147-0.707 0.707-7.853-7.854 7.854-7.853 0.707 0.707-7.147 7.146z"></path></svg></span><div class="flatpickr-month"><div class="flatpickr-current-month"><select class="flatpickr-monthDropdown-months" aria-label="Month" tabindex="-1"><option class="flatpickr-monthDropdown-month" value="0" tabindex="-1">January</option><option class="flatpickr-monthDropdown-month" value="1" tabindex="-1">February</option><option class="flatpickr-monthDropdown-month" value="2" tabindex="-1">March</option><option class="flatpickr-monthDropdown-month" value="3" tabindex="-1">April</option><option class="flatpickr-monthDropdown-month" value="4" tabindex="-1">May</option><option class="flatpickr-monthDropdown-month" value="5" tabindex="-1">June</option><option class="flatpickr-monthDropdown-month" value="6" tabindex="-1">July</option><option class="flatpickr-monthDropdown-month" value="7" tabindex="-1">August</option><option class="flatpickr-monthDropdown-month" value="8" tabindex="-1">September</option><option class="flatpickr-monthDropdown-month" value="9" tabindex="-1">October</option><option class="flatpickr-monthDropdown-month" value="10" tabindex="-1">November</option><option class="flatpickr-monthDropdown-month" value="11" tabindex="-1">December</option></select><div class="numInputWrapper"><input class="numInput cur-year" type="number" tabindex="-1" aria-label="Year"><span class="arrowUp"></span><span class="arrowDown"></span></div></div></div><span class="flatpickr-next-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M13.207 8.472l-7.854 7.854-0.707-0.707 7.146-7.146-7.146-7.148 0.707-0.707 7.854 7.854z"></path></svg></span></div><div class="flatpickr-innerContainer"><div class="flatpickr-rContainer"><div class="flatpickr-weekdays"><div class="flatpickr-weekdaycontainer">
      <span class="flatpickr-weekday">
        Sun</span><span class="flatpickr-weekday">Mon</span><span class="flatpickr-weekday">Tue</span><span class="flatpickr-weekday">Wed</span><span class="flatpickr-weekday">Thu</span><span class="flatpickr-weekday">Fri</span><span class="flatpickr-weekday">Sat
      </span>
</div></div><div class="flatpickr-days" tabindex="-1"><div class="dayContainer"><span class="flatpickr-day prevMonthDay" aria-label="May 26, 2024" tabindex="-1">26</span><span class="flatpickr-day prevMonthDay" aria-label="May 27, 2024" tabindex="-1">27</span><span class="flatpickr-day prevMonthDay" aria-label="May 28, 2024" tabindex="-1">28</span><span class="flatpickr-day prevMonthDay" aria-label="May 29, 2024" tabindex="-1">29</span><span class="flatpickr-day prevMonthDay" aria-label="May 30, 2024" tabindex="-1">30</span><span class="flatpickr-day prevMonthDay" aria-label="May 31, 2024" tabindex="-1">31</span><span class="flatpickr-day" aria-label="June 1, 2024" tabindex="-1">1</span><span class="flatpickr-day" aria-label="June 2, 2024" tabindex="-1">2</span><span class="flatpickr-day today" aria-label="June 3, 2024" aria-current="date" tabindex="-1">3</span><span class="flatpickr-day" aria-label="June 4, 2024" tabindex="-1">4</span><span class="flatpickr-day" aria-label="June 5, 2024" tabindex="-1">5</span><span class="flatpickr-day" aria-label="June 6, 2024" tabindex="-1">6</span><span class="flatpickr-day" aria-label="June 7, 2024" tabindex="-1">7</span><span class="flatpickr-day" aria-label="June 8, 2024" tabindex="-1">8</span><span class="flatpickr-day" aria-label="June 9, 2024" tabindex="-1">9</span><span class="flatpickr-day" aria-label="June 10, 2024" tabindex="-1">10</span><span class="flatpickr-day" aria-label="June 11, 2024" tabindex="-1">11</span><span class="flatpickr-day" aria-label="June 12, 2024" tabindex="-1">12</span><span class="flatpickr-day" aria-label="June 13, 2024" tabindex="-1">13</span><span class="flatpickr-day" aria-label="June 14, 2024" tabindex="-1">14</span><span class="flatpickr-day" aria-label="June 15, 2024" tabindex="-1">15</span><span class="flatpickr-day" aria-label="June 16, 2024" tabindex="-1">16</span><span class="flatpickr-day" aria-label="June 17, 2024" tabindex="-1">17</span><span class="flatpickr-day" aria-label="June 18, 2024" tabindex="-1">18</span><span class="flatpickr-day" aria-label="June 19, 2024" tabindex="-1">19</span><span class="flatpickr-day" aria-label="June 20, 2024" tabindex="-1">20</span><span class="flatpickr-day" aria-label="June 21, 2024" tabindex="-1">21</span><span class="flatpickr-day" aria-label="June 22, 2024" tabindex="-1">22</span><span class="flatpickr-day" aria-label="June 23, 2024" tabindex="-1">23</span><span class="flatpickr-day" aria-label="June 24, 2024" tabindex="-1">24</span><span class="flatpickr-day" aria-label="June 25, 2024" tabindex="-1">25</span><span class="flatpickr-day" aria-label="June 26, 2024" tabindex="-1">26</span><span class="flatpickr-day" aria-label="June 27, 2024" tabindex="-1">27</span><span class="flatpickr-day" aria-label="June 28, 2024" tabindex="-1">28</span><span class="flatpickr-day" aria-label="June 29, 2024" tabindex="-1">29</span><span class="flatpickr-day" aria-label="June 30, 2024" tabindex="-1">30</span><span class="flatpickr-day nextMonthDay" aria-label="July 1, 2024" tabindex="-1">1</span><span class="flatpickr-day nextMonthDay" aria-label="July 2, 2024" tabindex="-1">2</span><span class="flatpickr-day nextMonthDay" aria-label="July 3, 2024" tabindex="-1">3</span><span class="flatpickr-day nextMonthDay" aria-label="July 4, 2024" tabindex="-1">4</span><span class="flatpickr-day nextMonthDay" aria-label="July 5, 2024" tabindex="-1">5</span><span class="flatpickr-day nextMonthDay" aria-label="July 6, 2024" tabindex="-1">6</span></div></div></div></div><div class="flatpickr-time" tabindex="-1"><div class="numInputWrapper"><input class="numInput flatpickr-hour" type="number" aria-label="Hour" tabindex="-1" step="1" min="1" max="12" maxlength="2"><span class="arrowUp"></span><span class="arrowDown"></span></div><span class="flatpickr-time-separator">:</span><div class="numInputWrapper"><input class="numInput flatpickr-minute" type="number" aria-label="Minute" tabindex="-1" step="5" min="0" max="59" maxlength="2"><span class="arrowUp"></span><span class="arrowDown"></span></div><span class="flatpickr-am-pm" title="Click to toggle" tabindex="-1">PM</span></div></div><div class="flatpickr-calendar hasTime animate arrowTop arrowLeft rightMost" tabindex="-1" style="top: 403px; left: auto; right: -376px;"><div class="flatpickr-months"><span class="flatpickr-prev-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M5.207 8.471l7.146 7.147-0.707 0.707-7.853-7.854 7.854-7.853 0.707 0.707-7.147 7.146z"></path></svg></span><div class="flatpickr-month"><div class="flatpickr-current-month"><select class="flatpickr-monthDropdown-months" aria-label="Month" tabindex="-1"><option class="flatpickr-monthDropdown-month" value="0" tabindex="-1">January</option><option class="flatpickr-monthDropdown-month" value="1" tabindex="-1">February</option><option class="flatpickr-monthDropdown-month" value="2" tabindex="-1">March</option><option class="flatpickr-monthDropdown-month" value="3" tabindex="-1">April</option><option class="flatpickr-monthDropdown-month" value="4" tabindex="-1">May</option><option class="flatpickr-monthDropdown-month" value="5" tabindex="-1">June</option><option class="flatpickr-monthDropdown-month" value="6" tabindex="-1">July</option><option class="flatpickr-monthDropdown-month" value="7" tabindex="-1">August</option><option class="flatpickr-monthDropdown-month" value="8" tabindex="-1">September</option><option class="flatpickr-monthDropdown-month" value="9" tabindex="-1">October</option><option class="flatpickr-monthDropdown-month" value="10" tabindex="-1">November</option><option class="flatpickr-monthDropdown-month" value="11" tabindex="-1">December</option></select><div class="numInputWrapper"><input class="numInput cur-year" type="number" tabindex="-1" aria-label="Year"><span class="arrowUp"></span><span class="arrowDown"></span></div></div></div><span class="flatpickr-next-month"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 17 17"><g></g><path d="M13.207 8.472l-7.854 7.854-0.707-0.707 7.146-7.146-7.146-7.148 0.707-0.707 7.854 7.854z"></path></svg></span></div><div class="flatpickr-innerContainer"><div class="flatpickr-rContainer"><div class="flatpickr-weekdays"><div class="flatpickr-weekdaycontainer">
      <span class="flatpickr-weekday">
        Sun</span><span class="flatpickr-weekday">Mon</span><span class="flatpickr-weekday">Tue</span><span class="flatpickr-weekday">Wed</span><span class="flatpickr-weekday">Thu</span><span class="flatpickr-weekday">Fri</span><span class="flatpickr-weekday">Sat
      </span>
</div></div><div class="flatpickr-days" tabindex="-1"><div class="dayContainer"><span class="flatpickr-day prevMonthDay" aria-label="May 26, 2024" tabindex="-1">26</span><span class="flatpickr-day prevMonthDay" aria-label="May 27, 2024" tabindex="-1">27</span><span class="flatpickr-day prevMonthDay" aria-label="May 28, 2024" tabindex="-1">28</span><span class="flatpickr-day prevMonthDay" aria-label="May 29, 2024" tabindex="-1">29</span><span class="flatpickr-day prevMonthDay" aria-label="May 30, 2024" tabindex="-1">30</span><span class="flatpickr-day prevMonthDay" aria-label="May 31, 2024" tabindex="-1">31</span><span class="flatpickr-day" aria-label="June 1, 2024" tabindex="-1">1</span><span class="flatpickr-day" aria-label="June 2, 2024" tabindex="-1">2</span><span class="flatpickr-day today" aria-label="June 3, 2024" aria-current="date" tabindex="-1">3</span><span class="flatpickr-day" aria-label="June 4, 2024" tabindex="-1">4</span><span class="flatpickr-day" aria-label="June 5, 2024" tabindex="-1">5</span><span class="flatpickr-day" aria-label="June 6, 2024" tabindex="-1">6</span><span class="flatpickr-day" aria-label="June 7, 2024" tabindex="-1">7</span><span class="flatpickr-day" aria-label="June 8, 2024" tabindex="-1">8</span><span class="flatpickr-day" aria-label="June 9, 2024" tabindex="-1">9</span><span class="flatpickr-day" aria-label="June 10, 2024" tabindex="-1">10</span><span class="flatpickr-day" aria-label="June 11, 2024" tabindex="-1">11</span><span class="flatpickr-day" aria-label="June 12, 2024" tabindex="-1">12</span><span class="flatpickr-day" aria-label="June 13, 2024" tabindex="-1">13</span><span class="flatpickr-day" aria-label="June 14, 2024" tabindex="-1">14</span><span class="flatpickr-day" aria-label="June 15, 2024" tabindex="-1">15</span><span class="flatpickr-day" aria-label="June 16, 2024" tabindex="-1">16</span><span class="flatpickr-day" aria-label="June 17, 2024" tabindex="-1">17</span><span class="flatpickr-day" aria-label="June 18, 2024" tabindex="-1">18</span><span class="flatpickr-day" aria-label="June 19, 2024" tabindex="-1">19</span><span class="flatpickr-day" aria-label="June 20, 2024" tabindex="-1">20</span><span class="flatpickr-day" aria-label="June 21, 2024" tabindex="-1">21</span><span class="flatpickr-day" aria-label="June 22, 2024" tabindex="-1">22</span><span class="flatpickr-day" aria-label="June 23, 2024" tabindex="-1">23</span><span class="flatpickr-day" aria-label="June 24, 2024" tabindex="-1">24</span><span class="flatpickr-day" aria-label="June 25, 2024" tabindex="-1">25</span><span class="flatpickr-day" aria-label="June 26, 2024" tabindex="-1">26</span><span class="flatpickr-day" aria-label="June 27, 2024" tabindex="-1">27</span><span class="flatpickr-day" aria-label="June 28, 2024" tabindex="-1">28</span><span class="flatpickr-day" aria-label="June 29, 2024" tabindex="-1">29</span><span class="flatpickr-day" aria-label="June 30, 2024" tabindex="-1">30</span><span class="flatpickr-day nextMonthDay" aria-label="July 1, 2024" tabindex="-1">1</span><span class="flatpickr-day nextMonthDay" aria-label="July 2, 2024" tabindex="-1">2</span><span class="flatpickr-day nextMonthDay" aria-label="July 3, 2024" tabindex="-1">3</span><span class="flatpickr-day nextMonthDay" aria-label="July 4, 2024" tabindex="-1">4</span><span class="flatpickr-day nextMonthDay" aria-label="July 5, 2024" tabindex="-1">5</span><span class="flatpickr-day nextMonthDay" aria-label="July 6, 2024" tabindex="-1">6</span></div></div></div></div><div class="flatpickr-time" tabindex="-1"><div class="numInputWrapper"><input class="numInput flatpickr-hour" type="number" aria-label="Hour" tabindex="-1" step="1" min="1" max="12" maxlength="2"><span class="arrowUp"></span><span class="arrowDown"></span></div><span class="flatpickr-time-separator">:</span><div class="numInputWrapper"><input class="numInput flatpickr-minute" type="number" aria-label="Minute" tabindex="-1" step="5" min="0" max="59" maxlength="2"><span class="arrowUp"></span><span class="arrowDown"></span></div><span class="flatpickr-am-pm" title="Click to toggle" tabindex="-1">PM</span></div></div><div id="template-customizer" class="invert-bg-white" style="visibility: visible"> <a href="javascript:void(0)" class="template-customizer-open-btn" tabindex="-1"></a> <div class="p-4 m-0 lh-1 border-bottom template-customizer-header position-relative py-3"> <h4 class="template-customizer-t-panel_header mb-2">Template Customizer</h4> <p class="template-customizer-t-panel_sub_header mb-0">Customize and preview in real time</p> <div class="d-flex align-items-center gap-2 position-absolute end-0 top-0 mt-4 me-3"> <a href="javascript:void(0)" class="template-customizer-reset-btn text-body" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Reset Customizer"><i class="bx bx-refresh fs-4"></i><span class="badge rounded-pill bg-danger badge-dot badge-notifications d-none"></span></a> <a href="javascript:void(0)" class="template-customizer-close-btn fw-light text-body" tabindex="-1"><i class="bx bx-x fs-4"></i></a> </div> </div> <div class="template-customizer-inner pt-4"> <div class="template-customizer-theming"> <h5 class="m-0 px-4 py-4 lh-1 d-block"> <span class="template-customizer-t-theming_header bg-label-primary rounded-1 py-1 px-2 fs-big">Theming</span> </h5> <div class="m-0 px-4 pb-3 pt-1 template-customizer-style w-100"> <label for="customizerStyle" class="form-label d-block template-customizer-t-style_label">Style (Mode)</label> <div class="row px-1 template-customizer-styles-options"><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0 checked">
        <label class="form-check-label custom-option-content p-0" for="customRadioIconlight">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/light.svg" alt="Light" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="customRadioIcon" class="form-check-input d-none" type="radio" value="light" id="customRadioIconlight" checked="checked">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="customRadioIconlight">Light</label>
</div><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0">
        <label class="form-check-label custom-option-content p-0" for="customRadioIcondark">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/dark.svg" alt="Dark" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="customRadioIcon" class="form-check-input d-none" type="radio" value="dark" id="customRadioIcondark">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="customRadioIcondark">Dark</label>
</div><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0">
        <label class="form-check-label custom-option-content p-0" for="customRadioIconsystem">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/system.svg" alt="System" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="customRadioIcon" class="form-check-input d-none" type="radio" value="system" id="customRadioIconsystem">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="customRadioIconsystem">System</label>
</div></div> </div> <div class="m-0 px-4 pt-3 template-customizer-themes w-100"> <label for="customizerTheme" class="form-label template-customizer-t-theme_label">Themes</label> <div class="row px-1 template-customizer-themes-options"><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0 checked">
        <label class="form-check-label custom-option-content p-0" for="themeRadiostheme-default">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/default.svg" alt="Default" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="themeRadios" class="form-check-input d-none" type="radio" value="theme-default" id="themeRadiostheme-default" checked="checked">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="themeRadiostheme-default">Default</label>
</div><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0">
        <label class="form-check-label custom-option-content p-0" for="themeRadiostheme-bordered">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend//assets/img/customizer/border.svg" alt="Bordered" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="themeRadios" class="form-check-input d-none" type="radio" value="theme-bordered" id="themeRadiostheme-bordered">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="themeRadiostheme-bordered">Bordered</label>
</div><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0">
        <label class="form-check-label custom-option-content p-0" for="themeRadiostheme-semi-dark">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/semi-dark.svg" alt="Semi Dark" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="themeRadios" class="form-check-input d-none" type="radio" value="theme-semi-dark" id="themeRadiostheme-semi-dark">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="themeRadiostheme-semi-dark">Semi Dark</label>
</div></div> </div> </div> <div class="template-customizer-layout"> <hr class="m-0 px-4 my-4"> <h5 class="m-0 px-4 pb-4 pt-2 d-block"> <span class="template-customizer-t-layout_header bg-label-primary rounded-1 py-1 px-2 fs-big">Layout</span> </h5> <div class="m-0 px-4 pb-3 d-block template-customizer-layouts"> <label for="customizerStyle" class="form-label d-block template-customizer-t-layout_label">Menu (Navigation)</label> <div class="row px-1 template-customizer-layouts-options"> <div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0 checked">
        <label class="form-check-label custom-option-content p-0" for="layoutsRadiosexpanded">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/expanded.svg" alt="Expanded" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="layoutsRadios" class="form-check-input d-none" type="radio" value="expanded" id="layoutsRadiosexpanded" checked="checked">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="layoutsRadiosexpanded">Expanded</label>
</div><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0">
        <label class="form-check-label custom-option-content p-0" for="layoutsRadioscollapsed">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/collapsed.svg" alt="Collapsed" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="layoutsRadios" class="form-check-input d-none" type="radio" value="collapsed" id="layoutsRadioscollapsed">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="layoutsRadioscollapsed">Collapsed</label>
</div></div> </div>  <div class="m-0 px-4 pb-3 template-customizer-layoutNavbarOptions w-100"> <label for="customizerNavbar" class="form-label template-customizer-t-layout_navbar_label">Navbar Type</label> <div class="row px-1 template-customizer-navbar-options"><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0 checked">
        <label class="form-check-label custom-option-content p-0" for="navbarOptionRadiossticky">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/sticky.svg" alt="Sticky" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="navbarOptionRadios" class="form-check-input d-none" type="radio" value="sticky" id="navbarOptionRadiossticky" checked="checked">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="navbarOptionRadiossticky">Sticky</label>
</div><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0">
        <label class="form-check-label custom-option-content p-0" for="navbarOptionRadiosstatic">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/static.svg" alt="Static" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="navbarOptionRadios" class="form-check-input d-none" type="radio" value="static" id="navbarOptionRadiosstatic">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="navbarOptionRadiosstatic">Static</label>
</div><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0">
        <label class="form-check-label custom-option-content p-0" for="navbarOptionRadioshidden">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/hidden.svg" alt="Hidden" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="navbarOptionRadios" class="form-check-input d-none" type="radio" value="hidden" id="navbarOptionRadioshidden">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="navbarOptionRadioshidden">Hidden</label>
</div></div> </div> <div class="m-0 px-4 pb-3 template-customizer-content w-100"> <label for="customizerContent" class="form-label template-customizer-t-content_label">Content</label> <div class="row px-1 template-customizer-content-options"><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0 checked">
        <label class="form-check-label custom-option-content p-0" for="contentRadioIconcompact">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/compact.svg" alt="Compact" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="contentRadioIcon" class="form-check-input d-none" type="radio" value="compact" id="contentRadioIconcompact" checked="checked">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="contentRadioIconcompact">Compact</label>
</div><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0">
        <label class="form-check-label custom-option-content p-0" for="contentRadioIconwide">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/wide.svg" alt="Wide" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="contentRadioIcon" class="form-check-input d-none" type="radio" value="wide" id="contentRadioIconwide">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="contentRadioIconwide">Wide</label>
</div></div> </div> <div class="m-0 px-4 pb-3 template-customizer-directions w-100"> <label for="customizerDirection" class="form-label template-customizer-t-direction_label">Direction</label> <div class="row px-1 template-customizer-directions-options"><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0 checked">
        <label class="form-check-label custom-option-content p-0" for="directionRadioIconltr">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/ltr.svg" alt="Left to Right (En)" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="directionRadioIcon" class="form-check-input d-none" type="radio" value="ltr" id="directionRadioIconltr" checked="checked">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="directionRadioIconltr">Left to Right (En)</label>
</div><div class="col-4 px-2">
    <div class="form-check custom-option custom-option-icon mb-0">
        <label class="form-check-label custom-option-content p-0" for="directionRadioIconrtl">
          <span class="custom-option-body mb-0">
            <img src="${contextPath}/frontend/assets/img/customizer/rtl.svg" alt="Right to Left (Ar)" class="img-fluid scaleX-n1-rtl">
          </span>
            <input name="directionRadioIcon" class="form-check-input d-none" type="radio" value="rtl" id="directionRadioIconrtl">
        </label>
    </div>
    <label class="form-check-label small text-nowrap" for="directionRadioIconrtl">Right to Left (Ar)</label>
</div></div> </div> </div> </div> </div><script type="text/javascript" id="">console.log("TS:GTM Worked");</script>
<script type="text/javascript" id="">(function(b,c,d){var a=b.createElement("script");a.type="text/javascript";a.src="https://a.omappapi.com/app/js/api.min.js";a.async=!0;a.dataset.user=c;a.dataset.account=d;b.getElementsByTagName("head")[0].appendChild(a)})(document,252882,269977);</script>
<div id="om-mmosgju0tkru8ajiwhig-holder"><style data-styled="true" data-styled-version="5.3.11">.kGODbI{background:linear-gradient(45deg,#ffbc39 18%,#e35f00 100%) !important;border-bottom-left-radius:30px !important;border-bottom-right-radius:30px !important;border-bottom-width:1px !important;border-color:rgba(0,0,0,.35) !important;border-left-width:1px !important;border-right-width:1px !important;border-style:none !important;border-top-left-radius:30px !important;border-top-right-radius:30px !important;border-top-width:1px !important;box-shadow:none !important;color:#ffffff !important;font-family:Arial,sans-serif !important;font-size:18px !important;font-weight:700 !important;-webkit-letter-spacing:0px !important;-moz-letter-spacing:0px !important;-ms-letter-spacing:0px !important;letter-spacing:0px !important;line-height:1 !important;margin-bottom:0px !important;margin-left:0px !important;margin-right:0px !important;margin-top:0px !important;max-width:100% !important;padding-bottom:14px !important;padding-left:18px !important;padding-right:18px !important;padding-top:14px !important;text-transform:none !important;-webkit-text-decoration:none !important;text-decoration:none !important;font-style:normal !important;width:100% !important;cursor:pointer;}/*!sc*/
.kGODbI.withIcon{display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-ms-flex-direction:row;-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;}/*!sc*/
.kGODbI.withIcon:focus,.kGODbI.withIcon:hover,.kGODbI.withIcon.is-editing-hover{-ms-flex-direction:row;-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;}/*!sc*/
.kGODbI .dowell-yes-icon--Zharpqe0B8OIeFf2Hstx{color:#ffffff !important;margin-right:NaNpx !important;}/*!sc*/
.kGODbI .dowell-hover-yes-icon--Zharpqe0B8OIeFf2Hstx{display:none !important;color:#ffffff !important;margin-right:NaNpx !important;}/*!sc*/
.kGODbI:focus,.kGODbI:hover,.kGODbI.is-editing-hover{background:linear-gradient(45deg,rgba(255,188,57,0.9) 18%,rgba(227,95,0,0.9) 100%) !important;box-shadow:none !important;color:#ffffff !important;font-family:Arial,sans-serif !important;font-size:18px !important;font-weight:700 !important;-webkit-letter-spacing:0px !important;-moz-letter-spacing:0px !important;-ms-letter-spacing:0px !important;letter-spacing:0px !important;line-height:1 !important;text-transform:none !important;-webkit-text-decoration:none !important;text-decoration:none !important;font-style:normal !important;border-bottom-left-radius:30px !important;border-bottom-right-radius:30px !important;border-bottom-width:1px !important;border-color:rgba(0,0,0,.35) !important;border-left-width:1px !important;border-right-width:1px !important;border-style:none !important;border-top-left-radius:30px !important;border-top-right-radius:30px !important;border-top-width:1px !important;}/*!sc*/
.kGODbI:focus .dowell-hover-yes-icon--Zharpqe0B8OIeFf2Hstx,.kGODbI:hover .dowell-hover-yes-icon--Zharpqe0B8OIeFf2Hstx,.kGODbI.is-editing-hover .dowell-hover-yes-icon--Zharpqe0B8OIeFf2Hstx{display:inline-block !important;}/*!sc*/
.kGODbI:focus .dowell-yes-icon--Zharpqe0B8OIeFf2Hstx,.kGODbI:hover .dowell-yes-icon--Zharpqe0B8OIeFf2Hstx,.kGODbI.is-editing-hover .dowell-yes-icon--Zharpqe0B8OIeFf2Hstx{display:none !important;}/*!sc*/
.kINyyS{background:transparent !important;border-bottom-left-radius:0px !important;border-bottom-right-radius:0px !important;border-bottom-width:0px !important;border-color:rgba(0,0,0,.35) !important;border-left-width:0px !important;border-right-width:0px !important;border-style:solid !important;border-top-left-radius:0px !important;border-top-right-radius:0px !important;border-top-width:0px !important;box-shadow:0px 0px 0px 0px #ffffff !important;color:#696983 !important;font-family:Verdana,sans-serif !important;font-size:14px !important;font-weight:400 !important;-webkit-letter-spacing:0 !important;-moz-letter-spacing:0 !important;-ms-letter-spacing:0 !important;letter-spacing:0 !important;line-height:1 !important;margin-bottom:0px !important;margin-left:0px !important;margin-right:0px !important;margin-top:0px !important;max-width:100% !important;padding-bottom:8px !important;padding-left:12px !important;padding-right:12px !important;padding-top:8px !important;text-transform:none !important;-webkit-text-decoration:none !important;text-decoration:none !important;font-style:normal !important;width:100% !important;cursor:pointer;}/*!sc*/
.kINyyS.withIcon{display:-webkit-inline-box;display:-webkit-inline-flex;display:-ms-inline-flexbox;display:inline-flex;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-ms-flex-direction:row;-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;}/*!sc*/
.kINyyS.withIcon:focus,.kINyyS.withIcon:hover,.kINyyS.withIcon.is-editing-hover{-ms-flex-direction:row;-webkit-flex-direction:row;-ms-flex-direction:row;flex-direction:row;}/*!sc*/
.kINyyS .dowell-no-icon--Zharpqe0B8OIeFf2Hstx{color:#696983 !important;margin-right:NaNpx !important;}/*!sc*/
.kINyyS .dowell-hover-no-icon--Zharpqe0B8OIeFf2Hstx{display:none !important;color:#ffffff !important;margin-right:NaNpx !important;}/*!sc*/
.kINyyS:focus,.kINyyS:hover,.kINyyS.is-editing-hover{background:transparent !important;}/*!sc*/
.kINyyS:focus .dowell-hover-no-icon--Zharpqe0B8OIeFf2Hstx,.kINyyS:hover .dowell-hover-no-icon--Zharpqe0B8OIeFf2Hstx,.kINyyS.is-editing-hover .dowell-hover-no-icon--Zharpqe0B8OIeFf2Hstx{display:inline-block !important;}/*!sc*/
.kINyyS:focus .dowell-no-icon--Zharpqe0B8OIeFf2Hstx,.kINyyS:hover .dowell-no-icon--Zharpqe0B8OIeFf2Hstx,.kINyyS.is-editing-hover .dowell-no-icon--Zharpqe0B8OIeFf2Hstx{display:inline-block !important;}/*!sc*/
data-styled.g1[id="StyledIconButtonElement-sc-114x20d-0"]{content:"kGODbI,kINyyS,"}/*!sc*/
.gmsXlw{background:#ffffff;}/*!sc*/
.iHarVC{background:rgba(255,255,255,0);}/*!sc*/
.hVluvJ{background:transparent;}/*!sc*/
.kSVaIS{background:linear-gradient(62deg,rgba(105,105,131,0.1) 0%,rgba(142,142,165,0.1) 100%);}/*!sc*/
data-styled.g2[id="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0"]{content:"gmsXlw,brbwAg,iHarVC,hVluvJ,kSVaIS,"}/*!sc*/
.bdDEKG .ModalV2__Content--header{-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:end;-webkit-justify-content:flex-end;-ms-flex-pack:end;justify-content:flex-end;line-height:1;padding:10px 10px 10px 20px;width:100%;}/*!sc*/
.bdDEKG .ModalV2__Content--header-close{color:#9fb5da;cursor:pointer;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;padding:10px;}/*!sc*/
.bdDEKG .ModalV2__Content--content{height:100%;overflow:auto;padding:0 50px 50px;width:100%;}/*!sc*/
.bdDEKG .ModalV2__Content{background-color:#fff;border-radius:4px;border:none;box-shadow:0 0 18px 6px rgba(35,48,70,0.25);display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;max-width:650px;outline:none;overflow:auto;width:100%;}/*!sc*/
.bdDEKG .ModalV2__Content p{line-height:1.4;}/*!sc*/
.bdDEKG .ModalV2__Content p a{color:#0d82df;font-weight:bold;-webkit-text-decoration:underline;text-decoration:underline;}/*!sc*/
.bdDEKG .ModalV2__Overlay{-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;background-color:rgba(255,255,255,0.8);bottom:0;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-webkit-justify-content:center;-ms-flex-pack:center;justify-content:center;left:0;position:fixed;right:0;top:0;z-index:1010;}/*!sc*/
data-styled.g79[id="ModalV2__StyledModal-sc-1yn120z-0"]{content:"bdDEKG,"}/*!sc*/
.paETm *{box-sizing:border-box;}/*!sc*/
.paETm .ModalV2__Content--header{height:60px;padding:20px 40px;-webkit-box-pack:justify;-webkit-justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between;}/*!sc*/
.paETm .ModalV2__Content--header-content{font-size:20px;font-weight:700;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;}/*!sc*/
.paETm .ModalV2__Content--header-content svg{margin-right:8px;}/*!sc*/
.paETm .ModalV2__Content--header-close{background-color:transparent;border:none;padding:0px;}/*!sc*/
.paETm .ModalV2__Content--header-close svg{width:14px;height:14px;}/*!sc*/
.paETm .ModalV2__Content--content{padding:20px 40px;}/*!sc*/
.paETm .ModalV2__Content{max-width:570px;max-height:80%;}/*!sc*/
.gNQvvM *{box-sizing:border-box;}/*!sc*/
.gNQvvM .ModalV2__Content--header{height:60px;padding:20px 40px;-webkit-box-pack:justify;-webkit-justify-content:space-between;-ms-flex-pack:justify;justify-content:space-between;}/*!sc*/
.gNQvvM .ModalV2__Content--header-content{font-size:20px;font-weight:700;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;}/*!sc*/
.gNQvvM .ModalV2__Content--header-content svg{margin-right:8px;}/*!sc*/
.gNQvvM .ModalV2__Content--header-close{background-color:transparent;border:none;padding:0px;}/*!sc*/
.gNQvvM .ModalV2__Content--header-close svg{width:14px;height:14px;}/*!sc*/
.gNQvvM .ModalV2__Content--content{padding:20px 40px;}/*!sc*/
.gNQvvM .ModalV2__Content{max-width:800px;max-height:80%;}/*!sc*/
data-styled.g80[id="Modal__StyledModal-sc-1vmqztf-0"]{content:"paETm,gNQvvM,"}/*!sc*/
.fkgMeR *{box-sizing:border-box;}/*!sc*/
.fkgMeR .ModalV2__Content--header{height:40px;padding:20px 20px 10px 20px;-webkit-box-pack:end;-webkit-justify-content:flex-end;-ms-flex-pack:end;justify-content:flex-end;}/*!sc*/
.fkgMeR .ModalV2__Content--header-close{background-color:transparent;border:none;padding:0px;}/*!sc*/
.fkgMeR .ModalV2__Content--header-close svg{width:14px;height:14px;}/*!sc*/
.fkgMeR .ModalV2__Content--content{padding:0 60px 40px 60px;}/*!sc*/
.fkgMeR .ModalV2__Content{max-height:80%;max-width:570px;min-width:500px;width:570px;}/*!sc*/
.daFbDN *{box-sizing:border-box;}/*!sc*/
.daFbDN .ModalV2__Content--header{height:40px;padding:20px 20px 10px 20px;-webkit-box-pack:end;-webkit-justify-content:flex-end;-ms-flex-pack:end;justify-content:flex-end;}/*!sc*/
.daFbDN .ModalV2__Content--header-close{background-color:transparent;border:none;padding:0px;}/*!sc*/
.daFbDN .ModalV2__Content--header-close svg{width:14px;height:14px;}/*!sc*/
.daFbDN .ModalV2__Content--content{padding:0 60px 40px 60px;}/*!sc*/
.daFbDN .ModalV2__Content{max-height:80%;max-width:800px;min-width:500px;width:800px;}/*!sc*/
data-styled.g81[id="WhiteModal__StyledModal-sc-147xomf-0"]{content:"fkgMeR,daFbDN,"}/*!sc*/
.blxvXh{position:absolute !important;cursor:pointer !important;z-index:1110 !important;border:none !important;background-color:rgba(255,255,255,0.45) !important;padding-top:5px !important;padding-right:5px !important;padding-bottom:5px !important;padding-left:5px !important;margin-top:25px !important;margin-right:25px !important;margin-bottom:0px !important;margin-left:0px !important;color:#ffb905 !important;border-radius:100% !important;box-shadow:0px 0px 0px 0px #33333 !important;min-width:auto !important;}/*!sc*/
.blxvXh:hover,.blxvXh.is-editing-hover{border:none !important;background-color:rgba(255,255,255,0.85) !important;color:#6e66ed !important;}/*!sc*/
.blxvXh svg{fill:inherit !important;}/*!sc*/
data-styled.g382[id="CloseButton__ButtonElement-sc-79mh24-0"]{content:"blxvXh,"}/*!sc*/
.gWmuIY{position:relative;}/*!sc*/
.gWmuIY .Row__content{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;}/*!sc*/
data-styled.g593[id="Row__StyledRow-sc-3p43ya-0"]{content:"gWmuIY,"}/*!sc*/
</style></div><div class="dowell-campaign Campaign CampaignType--slide Campaign--css" id="om-mmosgju0tkru8ajiwhig" style="border: 0px; float: none; letter-spacing: normal; outline: currentcolor; text-decoration: none; text-indent: 0px; text-shadow: none; text-transform: none; visibility: visible; line-height: 1; font-family: Arial, sans-serif; box-shadow: none; -webkit-font-smoothing: antialiased; appearance: none; max-width: 350px; background: none; width: 100%; position: fixed; right: 20px; height: auto; z-index: 777777777; display: block; bottom: 0px; transition: bottom 0.3s ease 0s;"><div id="om-mmosgju0tkru8ajiwhig-yesno" class="dowell-c-canvas Campaign__canvas" style="display: block;"><div class="dowell-c-wrapper Campaign__innerWrapper Slide--open" style="position:relative;display:block"><button class="CloseButton__ButtonElement-sc-79mh24-0 blxvXh dowell-CloseButton dowell-close dowell-ClosePosition--top-right" style="top:-15px;right:-15px;bottom:auto;left:auto" title="Close"><svg height="30" version="1.1" width="30" xmlns="http://www.w3.org/2000/svg" style="display:block;height:18px;width:18px" role="img" viewBox="0 0 320 512"><path d="M207.6 256l107.72-107.72c6.23-6.23 6.23-16.34 0-22.58l-25.03-25.03c-6.23-6.23-16.34-6.23-22.58 0L160 208.4 52.28 100.68c-6.23-6.23-16.34-6.23-22.58 0L4.68 125.7c-6.23 6.23-6.23 16.34 0 22.58L112.4 256 4.68 363.72c-6.23 6.23-6.23 16.34 0 22.58l25.03 25.03c6.23 6.23 16.34 6.23 22.58 0L160 303.6l107.72 107.72c6.23 6.23 16.34 6.23 22.58 0l25.03-25.03c6.23-6.23 6.23-16.34 0-22.58L207.6 256z" fill="currentColor"></path></svg></button><div style="border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-color:#b1bacb;border-style:none;border-top-left-radius:20px;border-top-right-radius:20px;border-bottom-right-radius:20px;border-bottom-left-radius:20px;box-shadow:0px 10px 30px 0px rgba(0, 0, 0, 0.5);position:relative;z-index:2" class="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0 gmsXlw dowell-c-alpha Campaign__alphaLayer"><div class="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0 brbwAg dowell-c-bravo Campaign__bravoLayer"><div class="dowell-c-content Campaign__content" style="position:relative;display:block;min-height:20px;clear:both;padding-top:0.0001em;padding-right:0.0001em;padding-left:0.0001em;padding-bottom:0.0001em;background:none"><style id="om-mmosgju0tkru8ajiwhig-ResetCSS" type="text/css">html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas applet,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas object,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas div:not(.Campaign__content):not(.Row__content):not(.Column__content):not(.Element__content):not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas span:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas iframe,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas h1:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas h2:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas h3:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas h4:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas h5:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas h6:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas p,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas blockquote,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas pre,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas a:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas abbr,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas acronym,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas address,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas big,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas cite,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas code,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas del,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas dfn,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas em,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas img,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas ins,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas kbd,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas q,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas s,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas samp,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas small,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas strike,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas strong,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas sub,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas sup,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas tt,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas var,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas b,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas u,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas center,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas dl,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas dt,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas dd,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas ol:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas ul:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas li:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas fieldset,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas form:not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas label:not(.ignore-reset):not([class^="wpforms-"]),html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas legend,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas table,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas caption,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas tbody,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas tfoot,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas thead,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas tr,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas th,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas td,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas article,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas aside,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas canvas,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas details,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas embed,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas figure,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas figcaption,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas footer,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas header,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas hgroup,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas menu,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas nav,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas output,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas ruby,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas section,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas summary,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas time,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas mark,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas audio,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas video,html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas i:not(.fa):not([class^="wpforms-"]){margin: 0;padding: 0;border: 0;font-size: 100%;font: inherit;vertical-align: baseline;}html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas div.Campaign__content, html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas div.Row__content, html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas div.Column__content, html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas div.Element__content {margin: 0;border: 0;font-size: 100%;font: inherit;vertical-align: baseline;}</style><style id="om-mmosgju0tkru8ajiwhig-CampaignCSS" type="text/css">
    html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas *:not(.ignore-reset):not([class^="wpforms-"]) {box-sizing:border-box;}
    html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas .Element__content {min-height: 30px;}
    html div#om-mmosgju0tkru8ajiwhig .dowell-c-canvas button:not(.ignore-reset):not([class^="wpforms-"]) {width: auto;}

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper input:not([type="submit"]):not(.ignore-reset):not([class^="wpforms-"]),
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper select:not(.ignore-reset):not([class^="wpforms-"]),
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper textarea:not(.ignore-reset):not([class^="wpforms-"]) {
        background-color: #fff;
        width: 100%;
        height: auto;
        border: 1px solid;
        padding: 10px 6px;
        overflow: hidden;
        margin: 0;
        vertical-align: middle;
        font-style: normal;
        width: 100%;
        line-height: 1.5;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper textarea:not(.ignore-reset):not([class^="wpforms-"]) {
        height: 60px;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper textarea:not(.ignore-reset):not([class^="wpforms-"]),
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper input:not(.ignore-reset):not([class^="wpforms-"]) {
        overflow: hidden;
        -webkit-appearance: none;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper input[type=submit]:not(.ignore-reset):not([class^="wpforms-"]),
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper button:not(.ignore-reset):not([class^="wpforms-"]) {
        cursor: pointer;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper input[type=checkbox]:not(.ignore-reset):not([class^="wpforms-"]),
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper input[type=radio]:not(.ignore-reset):not([class^="wpforms-"]) {
        width: auto !important;
        outline: invert none medium;
        padding: 0;
        margin: 0;
        height: auto !important;
        box-shadow: none;
        -webkit-box-shadow: none;
        -moz-box-shadow: none;
        display: inline;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper input[type=checkbox]:not(.ignore-reset):not([class^="wpforms-"]) {
        -webkit-appearance: checkbox;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper input[type=radio]:not(.ignore-reset):not([class^="wpforms-"]) {
        -webkit-appearance: radio;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper strong:not(.ignore-reset):not([class^="wpforms-"]) {
        font-weight: bolder;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper em:not(.ignore-reset):not([class^="wpforms-"]) {
        font-style: italic;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper ul:not(.ignore-reset):not([class^="wpforms-"]) {
        list-style-type: disc;
        margin: 1em 0 1em 1.5em;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper ol:not(.ignore-reset):not([class^="wpforms-"]) {
        list-style: decimal;
        margin: 1em 0 1em 1.5em;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper sup:not(.ignore-reset):not([class^="wpforms-"]) {
        top: -0.5em;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper sub:not(.ignore-reset):not([class^="wpforms-"]) {
        bottom: -0.5em;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper sub:not(.ignore-reset):not([class^="wpforms-"]),
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper sup:not(.ignore-reset):not([class^="wpforms-"]) {
        font-size: 75%;
        line-height: 0;
        position: relative;
        vertical-align: baseline;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper p:not(.ignore-reset):not([class^="wpforms-"]) {
        margin: 0 0 5px;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper p:first-of-type:not(.ignore-reset):not([class^="wpforms-"]) {
        margin-top: 0;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-FieldsElement--wrapper p:last-of-type:not(.ignore-reset):not([class^="wpforms-"]) {
        margin-bottom: 0;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content strong:not(.ignore-reset):not([class^="wpforms-"]) {
        font-weight: bolder;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content em:not(.ignore-reset):not([class^="wpforms-"]) {
        font-style: italic;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content ul:not(.ignore-reset):not([class^="wpforms-"]) {
        list-style-type: disc;
        margin: 1em 0 1em 1.5em;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content ol:not(.ignore-reset):not([class^="wpforms-"]) {
        list-style: decimal;
        margin: 1em 0 1em 1.5em;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content sup:not(.ignore-reset):not([class^="wpforms-"]) {
        top: -0.5em;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content sub:not(.ignore-reset):not([class^="wpforms-"]) {
        bottom: -0.5em;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content sub:not(.ignore-reset):not([class^="wpforms-"]),
    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content sup:not(.ignore-reset):not([class^="wpforms-"]) {
        font-size: 75%;
        line-height: 0;
        position: relative;
        vertical-align: baseline;
    }

    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content p:not(.ignore-reset):not([class^="wpforms-"]) {
        margin: 0 0 5px;
        font-weight: inherit !important;

        letter-spacing: inherit !important;
        text-transform: inherit !important;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content span.fr-emoticon:not(.ignore-reset):not([class^="wpforms-"]) {
        vertical-align: middle !important;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content p:first-of-type:not(.ignore-reset):not([class^="wpforms-"]) {
        margin-top: 0;
    }
    html div#om-mmosgju0tkru8ajiwhig .dowell-TextElement--content p:last-of-type:not(.ignore-reset):not([class^="wpforms-"]) {
        margin-bottom: 0;
    }

    @media screen and (min-width: 1px) and (max-width: 768px) {

        html div#om-mmosgju0tkru8ajiwhig .dowell-ClosePosition--top-right { right: 0 !important }
        html div#om-mmosgju0tkru8ajiwhig .dowell-ClosePosition--top-left { left: 0 !important }
        html div#om-mmosgju0tkru8ajiwhig .dowell-ClosePosition--bottom-right { right: 0 !important }
        html div#om-mmosgju0tkru8ajiwhig .dowell-ClosePosition--bottom-left { left: 0 !important }

        html div#om-mmosgju0tkru8ajiwhig .Row .Row__content,
        html div#om-mmosgju0tkru8ajiwhig .om-row .Row__content {
            flex-direction: column;
        }

        html div#om-mmosgju0tkru8ajiwhig .Row .Row__content .Column,
        html div#om-mmosgju0tkru8ajiwhig .om-row .Row__content .om-column {
            width: 100% !important;
        }

        html div#om-mmosgju0tkru8ajiwhig .FieldsElement--horizontal button {
            width: 100% !important;
        }

    }

    @media screen and (min-width: 1px) and (max-width: 428px) {

        html div#om-mmosgju0tkru8ajiwhig.Campaign--css.CampaignType--slide {
            right: auto !important;
            max-width: 100% !important;
        }

    }
</style><style id="om-mmosgju0tkru8ajiwhig-CustomCSS" type="text/css">html div#om-mmosgju0tkru8ajiwhig .dowell-CloseButton{
    top: -18px !important;
    right: -18px !important;
}
html div#om-mmosgju0tkru8ajiwhig .dowell-CloseButton svg{
    height: 16px !important;
    width: 16px !important;
}

html div#om-mmosgju0tkru8ajiwhig.dowell-campaign{
    bottom: 20px !important;
}</style><div class="Row__StyledRow-sc-3p43ya-0 gWmuIY dowell-row dowell-row-1 Row om-row"><div class="dowell-row-content Row__content"><div style="display:flex;width:100%;flex-direction:inherit;align-items:flex-start;border-style:solid;border-color:#000000;border-top-left-radius:0%;border-top-right-radius:0%;border-bottom-right-radius:0%;border-bottom-left-radius:0%;border-top-width:0;border-right-width:0;border-bottom-width:0;border-left-width:0;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;box-shadow:0px 0px 0px 0px #ffffff;max-width:100%;z-index:0" class="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0 iHarVC dowell-row-inner"><div class="dowell-column dowell-col-1 Column om-column" style="display:inline-block;width:100%"><div class="dowell-col-content Column__content" style="height:100%"><div style="align-items:flex-start;border-style:solid;border-color:#000000;border-top-left-radius:0%;border-top-right-radius:0%;border-bottom-right-radius:0%;border-bottom-left-radius:0%;border-top-width:0;border-right-width:0;border-bottom-width:0;border-left-width:0;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;box-shadow:0px 0px 0px 0px #ffffff;max-width:100%;z-index:0;height:100%" class="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0 hVluvJ dowell-col-inner"><div class="dowell-element dowell-ele-1 Element om-element"><div class="dowell-ele-content Element__content"><div id="dowell-ImageElement--wrapper--RnI1hExRsQa8XUfReuY1" class="dowell-imge-wrapper dowell-ImageElement--wrapper " style="border-top-left-radius:0px;border-top-right-radius:0px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;border-top-width:0;border-right-width:0;border-bottom-width:0;border-left-width:0;padding-top:0px;padding-right:0px;padding-bottom:5px;padding-left:0px;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;background:transparent;border-style:solid;border-color:#000000;box-shadow:0px 0px 0px 0px #ffffff;width:auto;max-width:100%;position:relative;z-index:0;overflow:visible;text-align:center;font-size:0"><div class="dowell-imge-content dowell-ImageElement--content"><a class="om-trigger-conversion" href=" https://themeselection.com/item/celebration-big-bundle-sale/" target="_blank"><img alt="ThemeSelection Big Bundle " src="https://a.omappapi.com/users/9656320a258c/images/af66040bbac41717396579-summer-big-bundle-blog-sidebar-banner.png?width=700" style="max-width:100%;height:auto;display:inline;border-top-left-radius:20px;border-top-right-radius:20px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;border-style:solid;border-color:#ffffff;box-shadow:0px 0px 0px 0px #ffffff;opacity:1;width:100%" width="350" height="296" srcset="https://a.omappapi.com/users/9656320a258c/images/af66040bbac41717396579-summer-big-bundle-blog-sidebar-banner.png?width=350 1x, https://a.omappapi.com/users/9656320a258c/images/af66040bbac41717396579-summer-big-bundle-blog-sidebar-banner.png?width=525 1.5x, https://a.omappapi.com/users/9656320a258c/images/af66040bbac41717396579-summer-big-bundle-blog-sidebar-banner.png?width=700 2x, https://a.omappapi.com/users/9656320a258c/images/af66040bbac41717396579-summer-big-bundle-blog-sidebar-banner.png?width=1050 3x"></a></div></div></div></div><div class="dowell-element dowell-ele-2 Element om-element"><div class="dowell-ele-content Element__content"><div class="dowell-cde-wrapper dowell-CountdownElement--wrapper " id="dowell-CountdownElement--wrapper--OHvOLHCDzX8UPcq8FGXK" style="border-top-left-radius:0%;border-top-right-radius:0%;border-bottom-right-radius:0%;border-bottom-left-radius:0%;border-top-width:0;border-right-width:0;border-bottom-width:0;border-left-width:0;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:10px;margin-right:0px;margin-bottom:0px;margin-left:0px;background:transparent;border-style:solid;border-color:#000000;box-shadow:0px 0px 0px 0px #ffffff;width:auto;max-width:100%;position:relative;z-index:0;text-align:center"><div id="dowell-CountdownElement--OHvOLHCDzX8UPcq8FGXK" class="dowell-cde-content dowell-CountdownElement--content" data-omcd-time="1718377200" data-omcd-type="static" data-omcd-id="OHvOLHCDzX8UPcq8FGXK" data-omcd-local="true"><div style="border-top-left-radius:300px;border-top-right-radius:300px;border-bottom-right-radius:300px;border-bottom-left-radius:300px;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:12px;padding-right:14px;padding-bottom:12px;padding-left:13px;margin-top:0px;margin-right:5px;margin-bottom:0px;margin-left:5px;border-style:solid;border-color:#000000;box-shadow:none;width:auto;max-width:100%;min-width:60px;display:inline-block;text-align:center;z-index:0" class="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0 kSVaIS dowell-days"><span class="number-string number-days" style="color:#f2901e;font-family:Verdana, sans-serif;font-weight:600;font-size:26px;text-transform:none;text-decoration:none;line-height:1.1;letter-spacing:0px;font-style:normal"><span class="char" aria-hidden="true" style="display:inline-block;text-align:center;min-width:0px;">1</span><span class="char" aria-hidden="true" style="display:inline-block;text-align:center;min-width:0px;">0</span></span><div class="unit-days" style="color:#696983;font-family:Verdana, sans-serif;font-weight:500;font-size:10px;text-transform:none;text-decoration:none;line-height:1;letter-spacing:0;font-style:normal" dir="auto">Day</div></div><div style="border-top-left-radius:300px;border-top-right-radius:300px;border-bottom-right-radius:300px;border-bottom-left-radius:300px;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:12px;padding-right:14px;padding-bottom:12px;padding-left:13px;margin-top:0px;margin-right:5px;margin-bottom:0px;margin-left:5px;border-style:solid;border-color:#000000;box-shadow:none;width:auto;max-width:100%;min-width:60px;display:inline-block;text-align:center;z-index:0" class="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0 kSVaIS dowell-hours"><span class="number-string number-hours" style="color:#f2901e;font-family:Verdana, sans-serif;font-weight:600;font-size:26px;text-transform:none;text-decoration:none;line-height:1.1;letter-spacing:0px;font-style:normal"><span class="char" aria-hidden="true" style="display:inline-block;text-align:center;min-width:0px;">2</span><span class="char" aria-hidden="true" style="display:inline-block;text-align:center;min-width:0px;">2</span></span><div class="unit-hours" style="color:#696983;font-family:Verdana, sans-serif;font-weight:500;font-size:10px;text-transform:none;text-decoration:none;line-height:1;letter-spacing:0;font-style:normal" dir="auto">Hr</div></div><div style="border-top-left-radius:300px;border-top-right-radius:300px;border-bottom-right-radius:300px;border-bottom-left-radius:300px;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:12px;padding-right:14px;padding-bottom:12px;padding-left:13px;margin-top:0px;margin-right:5px;margin-bottom:0px;margin-left:5px;border-style:solid;border-color:#000000;box-shadow:none;width:auto;max-width:100%;min-width:60px;display:inline-block;text-align:center;z-index:0" class="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0 kSVaIS dowell-minutes"><span class="number-string number-minutes" style="color:#f2901e;font-family:Verdana, sans-serif;font-weight:600;font-size:26px;text-transform:none;text-decoration:none;line-height:1.1;letter-spacing:0px;font-style:normal"><span class="char" aria-hidden="true" style="display:inline-block;text-align:center;min-width:0px;">4</span><span class="char" aria-hidden="true" style="display:inline-block;text-align:center;min-width:0px;">4</span></span><div class="unit-minutes" style="color:#696983;font-family:Verdana, sans-serif;font-weight:500;font-size:10px;text-transform:none;text-decoration:none;line-height:1;letter-spacing:0;font-style:normal" dir="auto">Min</div></div><div style="border-top-left-radius:300px;border-top-right-radius:300px;border-bottom-right-radius:300px;border-bottom-left-radius:300px;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:12px;padding-right:14px;padding-bottom:12px;padding-left:13px;margin-top:0px;margin-right:5px;margin-bottom:0px;margin-left:5px;border-style:solid;border-color:#000000;box-shadow:none;width:auto;max-width:100%;min-width:60px;display:inline-block;text-align:center;z-index:0" class="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0 kSVaIS dowell-seconds"><span class="number-string number-seconds" style="color:#f2901e;font-family:Verdana, sans-serif;font-weight:600;font-size:26px;text-transform:none;text-decoration:none;line-height:1.1;letter-spacing:0px;font-style:normal"><span class="char" aria-hidden="true" style="display:inline-block;text-align:center;min-width:0px;">2</span><span class="char" aria-hidden="true" style="display:inline-block;text-align:center;min-width:0px;">5</span></span><div class="unit-seconds" style="color:#696983;font-family:Verdana, sans-serif;font-weight:500;font-size:10px;text-transform:none;text-decoration:none;line-height:1;letter-spacing:0;font-style:normal" dir="auto">Sec</div></div></div></div></div></div></div></div></div></div></div></div><div class="Row__StyledRow-sc-3p43ya-0 gWmuIY dowell-row dowell-row-2 Row om-row"><div class="dowell-row-content Row__content"><div style="display:flex;width:100%;flex-direction:inherit;align-items:flex-start;border-style:solid;border-color:#000000;border-top-left-radius:0%;border-top-right-radius:0%;border-bottom-right-radius:0%;border-bottom-left-radius:0%;border-top-width:0;border-right-width:0;border-bottom-width:0;border-left-width:0;padding-top:0px;padding-right:20px;padding-bottom:20px;padding-left:20px;margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;box-shadow:0px 0px 0px 0px #ffffff;max-width:100%;z-index:0" class="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0 hVluvJ dowell-row-inner"><div class="dowell-column dowell-col-1 Column om-column" style="display:inline-block;width:100%"><div class="dowell-col-content Column__content" style="height:100%"><div style="align-items:flex-start;border-style:solid;border-color:#000000;border-top-left-radius:0%;border-top-right-radius:0%;border-bottom-right-radius:0%;border-bottom-left-radius:0%;border-top-width:0;border-right-width:0;border-bottom-width:0;border-left-width:0;padding-top:0;padding-right:0;padding-bottom:0;padding-left:0;margin-top:0;margin-right:0;margin-bottom:0;margin-left:0;box-shadow:0px 0px 0px 0px #ffffff;max-width:100%;z-index:0;height:100%" class="StyledBackgroundWrapper__BackgroundWrapper-sc-4136c0-0 hVluvJ dowell-col-inner"><div class="dowell-element dowell-ele-1 Element om-element"><div class="dowell-ele-content Element__content"><div class="dowell-te-wrapper dowell-TextElement--wrapper " id="dowell-TextElement--wrapper--tdk7VHMWaVqAUCJPK0ky" style="border-top-left-radius:0%;border-top-right-radius:0%;border-bottom-right-radius:0%;border-bottom-left-radius:0%;border-top-width:0px;border-right-width:0px;border-bottom-width:0px;border-left-width:0px;padding-top:6px;padding-right:0px;padding-bottom:6px;padding-left:0px;margin-top:6px;margin-right:0px;margin-bottom:6px;margin-left:0px;background:transparent;border-style:solid;border-color:#000000;box-shadow:0px 0px 0px 0px #ffffff;width:auto;max-width:100%;position:relative;z-index:0"><div class="dowell-te-content dowell-TextElement--content" style="overflow-wrap:break-word;color:#000000;font-family:Montserrat;font-weight:400;font-size:16px;text-transform:none;text-decoration:none;line-height:1;letter-spacing:0;font-style:normal;text-align:left"><p style="text-align: center; line-height: 1.4;"><span style="font-family: Verdana, sans-serif; font-size: 16px; letter-spacing: 0px; font-weight: 500; color: rgb(0, 0, 0);">Purchase bundle at almost the <strong>same price</strong> as a single product</span></p></div></div></div></div><div class="dowell-element dowell-ele-2 Element om-element"><div class="dowell-ele-content Element__content"><div class="dowell-yne-wrapper dowell-YesNoElement--wrapper " id="dowell-YesButtonElement--wrapper--Zharpqe0B8OIeFf2Hstx" style="border-top-left-radius:0%;border-top-right-radius:0%;border-bottom-right-radius:0%;border-bottom-left-radius:0%;border-top-width:0;border-right-width:0;border-bottom-width:0;border-left-width:0;padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;background:transparent;border-style:solid;border-color:#000000;box-shadow:0px 0px 0px 0px #ffffff;width:auto;max-width:100%;position:relative;z-index:0"><div class="dowell-yne-content dowell-YesNoElement--content"><div class="dowell-be-wrapper dowell-ButtonElement--wrapper" style="text-align:center"><div class="dowell-be-content dowell-ButtonElement--content"><button id="dowell-YesButtonElement--Zharpqe0B8OIeFf2Hstx" name="dowell-yesbutton--Zharpqe0B8OIeFf2Hstx" class="StyledIconButtonElement-sc-114x20d-0 kGODbI dowell-YesNo--Yes" title="Yes! I Want Big Bundle 🚀" value="Yes! I Want Big Bundle 🚀" aria-live="polite" type="button">Yes! I Want Big Bundle 🚀</button></div></div><div class="dowell-be-wrapper dowell-ButtonElement--wrapper" style="text-align:center"><div class="dowell-be-content dowell-ButtonElement--content"><button id="dowell-NoButtonElement--Zharpqe0B8OIeFf2Hstx" name="dowell-nobutton--Zharpqe0B8OIeFf2Hstx" class="StyledIconButtonElement-sc-114x20d-0 kINyyS dowell-YesNo--No" title="No thanks I don't want to save" value="No thanks I don't want to save" aria-live="polite" type="button">No thanks I don't want to save</button></div></div></div></div></div></div></div></div></div></div></div></div><div id="om-mmosgju0tkru8ajiwhig-CustomJS" style="display:none"></div></div></div></div></div><div class="dowell-slide-closed Slide--closed" style="border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-left-width:1px;border-top-left-radius:3px;border-top-right-radius:3px;border-bottom-right-radius:3px;border-bottom-left-radius:3px;padding-top:5px;padding-right:5px;padding-left:5px;padding-bottom:5px;background:#ffffff;border-color:#b1bacb;border-style:solid;cursor:pointer;user-select:none;font-size:16px;font-style:normal;font-weight:400;font-family:Open Sans;line-height:1.4;letter-spacing:0;text-transform:none;text-decoration:none;color:#60656f;display:none;position:relative;z-index:2"><div class="closed-title" style="position:relative;flex:2">Learn more about us!</div><div class="closed-icon" style="padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;display:block"><svg height="30" version="1.1" width="30" xmlns="http://www.w3.org/2000/svg" style="display:block;fill:#60656f;height:22px;width:22px" role="img" viewBox="0 0 384 512"><path d="M368 224H224V80c0-8.84-7.16-16-16-16h-32c-8.84 0-16 7.16-16 16v144H16c-8.84 0-16 7.16-16 16v32c0 8.84 7.16 16 16 16h144v144c0 8.84 7.16 16 16 16h32c8.84 0 16-7.16 16-16V288h144c8.84 0 16-7.16 16-16v-32c0-8.84-7.16-16-16-16z" fill="#60656f"></path></svg></div></div></div></div></body></html>