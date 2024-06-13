<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/plyr/plyr.css" />

<!-- Page CSS -->

<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/css/pages/app-academy.css" />



<div class="content-wrapper">

    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">



        <h4 class="py-3 mb-4"><span class="text-muted fw-light">Academy/</span> My Courses</h4>

        <div class="app-academy">
            <div class="card p-0 mb-4">
                <div class="card-body d-flex flex-column flex-md-row justify-content-between p-0 pt-4">
                    <div class="app-academy-md-25 card-body py-0">
                        <img src="${contextPath}/frontend/assets/img/illustrations/bulb-light.png" class="img-fluid app-academy-img-height scaleX-n1-rtl" alt="Bulb in hand" data-app-light-img="illustrations/bulb-light.png" data-app-dark-img="illustrations/bulb-dark.png" height="90">
                    </div>
                    <div class="app-academy-md-50 card-body d-flex align-items-md-center flex-column text-md-center">
                        <h3 class="card-title mb-4 lh-sm px-md-5 text-center">
                            Education, talents, and career opportunities.
                            <span class="text-primary fw-medium text-nowrap">All in one place</span>.
                        </h3>
                        <p class="mb-4">
                            Grow your skill with the most reliable online courses and certifications in marketing, information technology,
                            programming, and data science.
                        </p>
                        <div class="d-flex align-items-center justify-content-between app-academy-md-80">
                            <input type="search" placeholder="Find your course" class="form-control me-2">
                            <button type="submit" class="btn btn-primary btn-icon"><i class="bx bx-search"></i></button>
                        </div>
                    </div>
                    <div class="app-academy-md-25 d-flex align-items-end justify-content-end">
                        <img src="${contextPath}/frontend/assets/img/illustrations/pencil-rocket.png" alt="pencil rocket" height="188" class="scaleX-n1-rtl">
                    </div>
                </div>
            </div>

            <div class="card mb-4">
                <div class="card-header d-flex flex-wrap justify-content-between gap-3">
                    <div class="card-title mb-0 me-1">
                        <h5 class="mb-1">My Courses</h5>
                        <p class="text-muted mb-0">Total 6 course you have purchased</p>
                    </div>
                    <div class="d-flex justify-content-md-end align-items-center gap-3 flex-wrap">
                        <div class="position-relative"><select id="select2_course_select" class="select2 form-select select2-hidden-accessible" data-placeholder="All Courses" data-select2-id="select2_course_select" tabindex="-1" aria-hidden="true">
                            <option value="" data-select2-id="2">All Courses</option>
                            <option value="all courses">All Courses</option>
                            <option value="ui/ux">UI/UX</option>
                            <option value="seo">SEO</option>
                            <option value="web">Web</option>
                            <option value="music">Music</option>
                            <option value="painting">Painting</option>
                        </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 127px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false" aria-labelledby="select2-select2_course_select-container"><span class="select2-selection__rendered w-px-150" id="select2-select2_course_select-container" role="textbox" aria-readonly="true"><span class="select2-selection__placeholder">All Courses</span></span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span></div>

                        <label class="switch">
                            <input type="checkbox" class="switch-input">
                            <span class="switch-toggle-slider">
            <span class="switch-on"></span>
            <span class="switch-off"></span>
          </span>
                            <span class="switch-label text-nowrap mb-0">Hide completed</span>
                        </label>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row gy-4 mb-4">
                        <div class="col-sm-6 col-lg-4">
                            <div class="card p-2 h-100 shadow-none border">
                                <div class="rounded-2 text-center mb-3">
                                    <a href="app-academy-course-details.html"><img class="img-fluid" src="${contextPath}/frontend/assets/img/pages/app-academy-tutor-1.png" alt="tutor image 1"></a>
                                </div>
                                <div class="card-body p-3 pt-2">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <span class="badge bg-label-primary">Web</span>
                                        <h6 class="d-flex align-items-center justify-content-center gap-1 mb-0">
                                            4.4 <span class="text-warning"><i class="bx bxs-star me-1"></i></span><span class="text-muted">(1.23k)</span>
                                        </h6>
                                    </div>
                                    <a href="app-academy-course-details.html" class="h5">Basics of Angular</a>
                                    <p class="mt-2">Introductory course for Angular and framework basics in web development.</p>
                                    <p class="d-flex align-items-center"><i class="bx bx-time-five me-2"></i>30 minutes</p>
                                    <div class="progress mb-4" style="height: 8px">
                                        <div class="progress-bar w-75" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="d-flex flex-column flex-md-row gap-2 text-nowrap pe-xl-3 pe-xxl-0">
                                        <a class="app-academy-md-50 btn btn-label-secondary me-md-2 d-flex align-items-center" href="app-academy-course-details.html">
                                            <i class="bx bx-sync align-middle me-2 "></i><span>Start Over</span>
                                        </a>
                                        <a class="app-academy-md-50 btn btn-label-primary d-flex align-items-center" href="app-academy-course-details.html">
                                            <span class="me-2">Continue</span><i class="bx bx-chevron-right lh-1 scaleX-n1-rtl"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="card p-2 h-100 shadow-none border">
                                <div class="rounded-2 text-center mb-3">
                                    <a href="app-academy-course-details.html"><img class="img-fluid" src="${contextPath}/frontend/assets/img/pages/app-academy-tutor-2.png" alt="tutor image 2"></a>
                                </div>
                                <div class="card-body p-3 pt-2">
                                    <div class="d-flex justify-content-between align-items-center mb-3 pe-xl-3 pe-xxl-0">
                                        <span class="badge bg-label-danger">UI/UX</span>
                                        <h6 class="d-flex align-items-center justify-content-center gap-1 mb-0">
                                            4.2 <span class="text-warning"><i class="bx bxs-star me-1"></i></span><span class="text-muted"> (424)</span>
                                        </h6>
                                    </div>
                                    <a class="h5" href="app-academy-course-details.html">Figma &amp; More</a>
                                    <p class="mt-2">Introductory course for design and framework basics in web development.</p>
                                    <p class="d-flex align-items-center"><i class="bx bx-time-five me-2"></i>16 hours</p>
                                    <div class="progress mb-4" style="height: 8px">
                                        <div class="progress-bar w-25" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="d-flex flex-column flex-md-row gap-2 text-nowrap">
                                        <a class="app-academy-md-50 btn btn-label-secondary me-md-2 d-flex align-items-center" href="app-academy-course-details.html">
                                            <i class="bx bx-sync align-middle me-2 "></i><span>Start Over</span>
                                        </a>
                                        <a class="app-academy-md-50 btn btn-label-primary d-flex align-items-center" href="app-academy-course-details.html">
                                            <span class="me-2">Continue</span><i class="bx bx-chevron-right lh-1 scaleX-n1-rtl"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="card p-2 h-100 shadow-none border">
                                <div class="rounded-2 text-center mb-3">
                                    <a href="app-academy-course-details.html"><img class="img-fluid" src="${contextPath}/frontend/assets/img/pages/app-academy-tutor-3.png" alt="tutor image 3"></a>
                                </div>
                                <div class="card-body p-3 pt-2">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <span class="badge bg-label-success">SEO</span>
                                        <h6 class="d-flex align-items-center justify-content-center gap-1 mb-0">
                                            5 <span class="text-warning"><i class="bx bxs-star me-1"></i></span><span class="text-muted"> (12)</span>
                                        </h6>
                                    </div>
                                    <a class="h5" href="app-academy-course-details.html">Keyword Research</a>
                                    <p class="mt-2">Keyword suggestion tool provides comprehensive details &amp; keyword suggestions.</p>
                                    <p class="d-flex align-items-center"><i class="bx bx-time-five me-2"></i>7 hours</p>
                                    <div class="progress mb-4" style="height: 8px">
                                        <div class="progress-bar w-50" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="d-flex flex-column flex-md-row gap-2 text-nowrap pe-xl-3 pe-xxl-0">
                                        <a class="app-academy-md-50 btn btn-label-secondary me-md-2 d-flex align-items-center" href="app-academy-course-details.html">
                                            <i class="bx bx-sync align-middle me-2 "></i><span>Start Over</span>
                                        </a>
                                        <a class="app-academy-md-50 btn btn-label-primary d-flex align-items-center" href="app-academy-course-details.html">
                                            <span class="me-2">Continue</span><i class="bx bx-chevron-right lh-1 scaleX-n1-rtl"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="card p-2 h-100 shadow-none border">
                                <div class="rounded-2 text-center mb-3">
                                    <a href="app-academy-course-details.html"><img class="img-fluid" src="${contextPath}/frontend/assets/img/pages/app-academy-tutor-4.png" alt="tutor image 4"></a>
                                </div>
                                <div class="card-body p-3 pt-2">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <span class="badge bg-label-info">Music</span>
                                        <h6 class="d-flex align-items-center justify-content-center gap-1 mb-0">
                                            3.8 <span class="text-warning"><i class="bx bxs-star me-1"></i></span><span class="text-muted"> (634)</span>
                                        </h6>
                                    </div>
                                    <a class="h5" href="app-academy-course-details.html">Basics to Advanced</a>
                                    <p class="mt-2">20 more lessons like this about music production, writing, mixing, mastering</p>
                                    <p class="d-flex align-items-center"><i class="bx bx-time-five me-2"></i>30 minutes</p>
                                    <div class="progress mb-4" style="height: 8px">
                                        <div class="progress-bar w-75" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="d-flex flex-column flex-md-row gap-2 text-nowrap pe-xl-3 pe-xxl-0">
                                        <a class="app-academy-md-50 btn btn-label-secondary me-md-2 d-flex align-items-center" href="app-academy-course-details.html">
                                            <i class="bx bx-sync align-middle me-2 "></i><span>Start Over</span>
                                        </a>
                                        <a class="app-academy-md-50 btn btn-label-primary d-flex align-items-center" href="app-academy-course-details.html">
                                            <span class="me-2">Continue</span><i class="bx bx-chevron-right lh-1 scaleX-n1-rtl"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="card p-2 h-100 shadow-none border">
                                <div class="rounded-2 text-center mb-3">
                                    <a href="app-academy-course-details.html"><img class="img-fluid" src="${contextPath}/frontend/assets/img/pages/app-academy-tutor-5.png" alt="tutor image 5"></a>
                                </div>
                                <div class="card-body p-3 pt-2">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <span class="badge bg-label-warning">Painting</span>
                                        <h6 class="d-flex align-items-center justify-content-center gap-1 mb-0">
                                            4.7 <span class="text-warning"><i class="bx bxs-star me-1"></i></span><span class="text-muted"> (34)</span>
                                        </h6>
                                    </div>
                                    <a class="h5" href="app-academy-course-details.html">Art &amp; Drawing</a>
                                    <p class="mt-2">Easy-to-follow video &amp; guides show you how to draw animals, people &amp; more.</p>
                                    <p class="d-flex align-items-center text-success"><i class="bx bx-check-double me-2"></i>Completed</p>
                                    <div class="progress mb-4" style="height: 8px">
                                        <div class="progress-bar w-100" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <a class="w-100 btn btn-label-primary" href="app-academy-course-details.html"><i class="bx bx-sync me-2"></i>Start Over</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="card p-2 h-100 shadow-none border">
                                <div class="rounded-2 text-center mb-3">
                                    <a href="app-academy-course-details.html"><img class="img-fluid" src="${contextPath}/frontend/assets/img/pages/app-academy-tutor-6.png" alt="tutor image 6"></a>
                                </div>
                                <div class="card-body p-3 pt-2">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <span class="badge bg-label-danger">UI/UX</span>
                                        <h6 class="d-flex align-items-center justify-content-center gap-1 mb-0">
                                            3.6 <span class="text-warning"><i class="bx bxs-star me-1"></i></span><span class="text-muted"> (2.5k)</span>
                                        </h6>
                                    </div>
                                    <a class="h5" href="app-academy-course-details.html">Basics Fundamentals</a>
                                    <p class="mt-2">This guide will help you develop a systematic approach user interface.</p>
                                    <p class="d-flex align-items-center"><i class="bx bx-time-five me-2"></i>16 hours</p>
                                    <div class="progress mb-4" style="height: 8px">
                                        <div class="progress-bar w-25" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <div class="d-flex flex-column flex-md-row gap-2 text-nowrap pe-xl-3 pe-xxl-0">
                                        <a class="app-academy-md-50 btn btn-label-secondary me-md-2 d-flex align-items-center" href="app-academy-course-details.html">
                                            <i class="bx bx-sync align-middle me-2 "></i><span>Start Over</span>
                                        </a>
                                        <a class="app-academy-md-50 btn btn-label-primary d-flex align-items-center" href="app-academy-course-details.html">
                                            <span class="me-2">Continue</span><i class="bx bx-chevron-right lh-1 scaleX-n1-rtl"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <nav aria-label="Page navigation" class="d-flex align-items-center justify-content-center">
                        <ul class="pagination">
                            <li class="page-item prev">
                                <a class="page-link" href="javascript:void(0);"><i class="tf-icon bx bx-chevron-left"></i></a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="javascript:void(0);">1</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="javascript:void(0);">2</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="javascript:void(0);">3</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="javascript:void(0);">4</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="javascript:void(0);">5</a>
                            </li>
                            <li class="page-item next">
                                <a class="page-link" href="javascript:void(0);"><i class="tf-icon bx bx-chevron-right"></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

            <div class="row gy-4 mb-4">
                <div class="col-lg-6">
                    <div class="card bg-label-primary h-100">
                        <div class="card-body d-flex justify-content-between flex-wrap-reverse">
                            <div class="mb-0 w-100 app-academy-sm-60 d-flex flex-column justify-content-between text-center text-sm-start">
                                <div class="card-title">
                                    <h4 class="text-primary mb-2">Earn a Certificate</h4>
                                    <p class="text-body w-sm-80 app-academy-xl-100">
                                        Get the right professional certificate program for you.
                                    </p>
                                </div>
                                <div class="mb-0"><button class="btn btn-primary">View Programs</button></div>
                            </div>
                            <div class="w-100 app-academy-sm-40 d-flex justify-content-center justify-content-sm-end h-px-150 mb-3 mb-sm-0">
                                <img class="img-fluid scaleX-n1-rtl" src="${contextPath}/frontend/assets/img/illustrations/boy-app-academy.png" alt="boy illustration">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card bg-label-danger h-100">
                        <div class="card-body d-flex justify-content-between flex-wrap-reverse">
                            <div class="mb-0 w-100 app-academy-sm-60 d-flex flex-column justify-content-between text-center text-sm-start">
                                <div class="card-title">
                                    <h4 class="text-danger mb-2">Best Rated Courses</h4>
                                    <p class="text-body app-academy-sm-60 app-academy-xl-100">
                                        Enroll now in the most popular and best rated courses.
                                    </p>
                                </div>
                                <div class="mb-0"><button class="btn btn-danger">View Courses</button></div>
                            </div>
                            <div class="w-100 app-academy-sm-40 d-flex justify-content-center justify-content-sm-end h-px-150 mb-3 mb-sm-0">
                                <img class="img-fluid scaleX-n1-rtl" src="${contextPath}/frontend/assets/img/illustrations/girl-app-academy.png" alt="girl illustration">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-body row gy-4">
                    <div class="col-sm-12 col-lg-4 text-center pt-md-5 px-3">
                        <span class="badge bg-label-primary rounded-3 mb-3"><i class="bx bx-gift bx-md"></i></span>
                        <h3 class="card-title mb-4">Today's Free Courses</h3>
                        <p class="card-text mb-4">
                            We offers 284 Free Online courses from top tutors and companies to help you start or advance your career
                            skills. Learn online for free and fast today!
                        </p>
                        <button class="btn btn-primary">Get premium courses</button>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="card h-100 shadow-none border">
                            <div class="p-2 pb-0">
                                <div class="plyr plyr--full-ui plyr--video plyr--html5 plyr--fullscreen-enabled plyr--paused plyr--stopped plyr--pip-supported plyr--airplay-supported plyr__poster-enabled" style="border-radius: 4px;"><div class="plyr__controls"><button class="plyr__controls__item plyr__control" type="button" data-plyr="play" aria-pressed="false" aria-label="Play"><svg class="icon--pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-pause"></use></svg><svg class="icon--not-pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-play"></use></svg><span class="label--pressed plyr__sr-only">Pause</span><span class="label--not-pressed plyr__sr-only">Play</span></button><div class="plyr__controls__item plyr__progress__container"><div class="plyr__progress"><input data-plyr="seek" type="range" min="0" max="100" step="0.01" value="0" autocomplete="off" role="slider" aria-label="Seek" aria-valuemin="0" aria-valuemax="183.08133333333333" aria-valuenow="0" id="plyr-seek-9941" aria-valuetext="00:00 of 00:00" style="--value: 0%;"><progress class="plyr__progress__buffer" min="0" max="100" value="6.3507293661833355" role="progressbar" aria-hidden="true">% buffered</progress><span class="plyr__tooltip">00:00</span></div></div><div class="plyr__controls__item plyr__time--current plyr__time" aria-label="Current time" role="timer">03:03</div><div class="plyr__controls__item plyr__volume"><button type="button" class="plyr__control" data-plyr="mute" aria-pressed="false"><svg class="icon--pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-muted"></use></svg><svg class="icon--not-pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-volume"></use></svg><span class="label--pressed plyr__sr-only">Unmute</span><span class="label--not-pressed plyr__sr-only">Mute</span></button><input data-plyr="volume" type="range" min="0" max="1" step="0.05" value="1" autocomplete="off" role="slider" aria-label="Volume" aria-valuemin="0" aria-valuemax="100" aria-valuenow="100" id="plyr-volume-9941" aria-valuetext="100.0%" style="--value: 100%;"></div><button class="plyr__controls__item plyr__control" type="button" data-plyr="captions" aria-pressed="false"><svg class="icon--pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-captions-on"></use></svg><svg class="icon--not-pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-captions-off"></use></svg><span class="label--pressed plyr__sr-only">Disable captions</span><span class="label--not-pressed plyr__sr-only">Enable captions</span></button><div class="plyr__controls__item plyr__menu"><button aria-haspopup="true" aria-controls="plyr-settings-9941" aria-expanded="false" type="button" class="plyr__control" data-plyr="settings" aria-pressed="false"><svg aria-hidden="true" focusable="false"><use xlink:href="#plyr-settings"></use></svg><span class="plyr__sr-only">Settings</span></button><div class="plyr__menu__container" id="plyr-settings-9941" hidden=""><div><div id="plyr-settings-9941-home"><div role="menu"><button data-plyr="settings" type="button" class="plyr__control plyr__control--forward" role="menuitem" aria-haspopup="true" hidden=""><span>Captions<span class="plyr__menu__value">Disabled</span></span></button><button data-plyr="settings" type="button" class="plyr__control plyr__control--forward" role="menuitem" aria-haspopup="true" hidden=""><span>Quality<span class="plyr__menu__value">0</span></span></button><button data-plyr="settings" type="button" class="plyr__control plyr__control--forward" role="menuitem" aria-haspopup="true"><span>Speed<span class="plyr__menu__value">Normal</span></span></button></div></div><div id="plyr-settings-9941-captions" hidden=""><button type="button" class="plyr__control plyr__control--back"><span aria-hidden="true">Captions</span><span class="plyr__sr-only">Go back to previous menu</span></button><div role="menu"></div></div><div id="plyr-settings-9941-quality" hidden=""><button type="button" class="plyr__control plyr__control--back"><span aria-hidden="true">Quality</span><span class="plyr__sr-only">Go back to previous menu</span></button><div role="menu"></div></div><div id="plyr-settings-9941-speed" hidden=""><button type="button" class="plyr__control plyr__control--back"><span aria-hidden="true">Speed</span><span class="plyr__sr-only">Go back to previous menu</span></button><div role="menu"><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="0.5"><span>0.5×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="0.75"><span>0.75×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="true" value="1"><span>Normal</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="1.25"><span>1.25×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="1.5"><span>1.5×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="1.75"><span>1.75×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="2"><span>2×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="4"><span>4×</span></button></div></div></div></div></div><button class="plyr__controls__item plyr__control" type="button" data-plyr="pip" aria-pressed="false"><svg aria-hidden="true" focusable="false"><use xlink:href="#plyr-pip"></use></svg><span class="plyr__sr-only">PIP</span></button><button class="plyr__controls__item plyr__control" type="button" data-plyr="airplay" aria-pressed="false"><svg aria-hidden="true" focusable="false"><use xlink:href="#plyr-airplay"></use></svg><span class="plyr__sr-only">AirPlay</span></button><button class="plyr__controls__item plyr__control" type="button" data-plyr="fullscreen" aria-pressed="false"><svg class="icon--pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-exit-fullscreen"></use></svg><svg class="icon--not-pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-enter-fullscreen"></use></svg><span class="label--pressed plyr__sr-only">Exit fullscreen</span><span class="label--not-pressed plyr__sr-only">Enter fullscreen</span></button></div><div class="plyr__video-wrapper"><video poster="https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-HD.jpg" id="guitar-video-player" playsinline="" data-poster="https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-HD.jpg">
                                    <source src="https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-576p.mp4" type="video/mp4">
                                </video><div class="plyr__poster" style="display: none; background-image: url(&quot;https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-HD.jpg&quot;);"></div></div><div class="plyr__captions" dir="auto"></div><button type="button" class="plyr__control plyr__control--overlaid" data-plyr="play" aria-pressed="false" aria-label="Play"><svg aria-hidden="true" focusable="false"><use xlink:href="#plyr-play"></use></svg><span class="plyr__sr-only">Play</span></button></div>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Your First Singing Lesson</h5>
                                <p class="card-text">
                                    In the same way as any other artistic domain, singing lends itself perfectly to self-teaching.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="card h-100 shadow-none border">
                            <div class="p-2 pb-0">
                                <div class="plyr plyr--full-ui plyr--video plyr--html5 plyr--fullscreen-enabled plyr--paused plyr--stopped plyr--pip-supported plyr--airplay-supported plyr__poster-enabled" style="border-radius: 4px;"><div class="plyr__controls"><button class="plyr__controls__item plyr__control" type="button" data-plyr="play" aria-pressed="false" aria-label="Play"><svg class="icon--pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-pause"></use></svg><svg class="icon--not-pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-play"></use></svg><span class="label--pressed plyr__sr-only">Pause</span><span class="label--not-pressed plyr__sr-only">Play</span></button><div class="plyr__controls__item plyr__progress__container"><div class="plyr__progress"><input data-plyr="seek" type="range" min="0" max="100" step="0.01" value="0" autocomplete="off" role="slider" aria-label="Seek" aria-valuemin="0" aria-valuemax="183.08133333333333" aria-valuenow="0" id="plyr-seek-6522" aria-valuetext="00:00 of 00:00" style="--value: 0%;"><progress class="plyr__progress__buffer" min="0" max="100" value="6.385686507271814" role="progressbar" aria-hidden="true">% buffered</progress><span class="plyr__tooltip">00:00</span></div></div><div class="plyr__controls__item plyr__time--current plyr__time" aria-label="Current time" role="timer">03:03</div><div class="plyr__controls__item plyr__volume"><button type="button" class="plyr__control" data-plyr="mute" aria-pressed="false"><svg class="icon--pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-muted"></use></svg><svg class="icon--not-pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-volume"></use></svg><span class="label--pressed plyr__sr-only">Unmute</span><span class="label--not-pressed plyr__sr-only">Mute</span></button><input data-plyr="volume" type="range" min="0" max="1" step="0.05" value="1" autocomplete="off" role="slider" aria-label="Volume" aria-valuemin="0" aria-valuemax="100" aria-valuenow="100" id="plyr-volume-6522" aria-valuetext="100.0%" style="--value: 100%;"></div><button class="plyr__controls__item plyr__control" type="button" data-plyr="captions" aria-pressed="false"><svg class="icon--pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-captions-on"></use></svg><svg class="icon--not-pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-captions-off"></use></svg><span class="label--pressed plyr__sr-only">Disable captions</span><span class="label--not-pressed plyr__sr-only">Enable captions</span></button><div class="plyr__controls__item plyr__menu"><button aria-haspopup="true" aria-controls="plyr-settings-6522" aria-expanded="false" type="button" class="plyr__control" data-plyr="settings" aria-pressed="false"><svg aria-hidden="true" focusable="false"><use xlink:href="#plyr-settings"></use></svg><span class="plyr__sr-only">Settings</span></button><div class="plyr__menu__container" id="plyr-settings-6522" hidden=""><div><div id="plyr-settings-6522-home"><div role="menu"><button data-plyr="settings" type="button" class="plyr__control plyr__control--forward" role="menuitem" aria-haspopup="true" hidden=""><span>Captions<span class="plyr__menu__value">Disabled</span></span></button><button data-plyr="settings" type="button" class="plyr__control plyr__control--forward" role="menuitem" aria-haspopup="true" hidden=""><span>Quality<span class="plyr__menu__value">0</span></span></button><button data-plyr="settings" type="button" class="plyr__control plyr__control--forward" role="menuitem" aria-haspopup="true"><span>Speed<span class="plyr__menu__value">Normal</span></span></button></div></div><div id="plyr-settings-6522-captions" hidden=""><button type="button" class="plyr__control plyr__control--back"><span aria-hidden="true">Captions</span><span class="plyr__sr-only">Go back to previous menu</span></button><div role="menu"></div></div><div id="plyr-settings-6522-quality" hidden=""><button type="button" class="plyr__control plyr__control--back"><span aria-hidden="true">Quality</span><span class="plyr__sr-only">Go back to previous menu</span></button><div role="menu"></div></div><div id="plyr-settings-6522-speed" hidden=""><button type="button" class="plyr__control plyr__control--back"><span aria-hidden="true">Speed</span><span class="plyr__sr-only">Go back to previous menu</span></button><div role="menu"><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="0.5"><span>0.5×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="0.75"><span>0.75×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="true" value="1"><span>Normal</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="1.25"><span>1.25×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="1.5"><span>1.5×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="1.75"><span>1.75×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="2"><span>2×</span></button><button data-plyr="speed" type="button" role="menuitemradio" class="plyr__control" aria-checked="false" value="4"><span>4×</span></button></div></div></div></div></div><button class="plyr__controls__item plyr__control" type="button" data-plyr="pip" aria-pressed="false"><svg aria-hidden="true" focusable="false"><use xlink:href="#plyr-pip"></use></svg><span class="plyr__sr-only">PIP</span></button><button class="plyr__controls__item plyr__control" type="button" data-plyr="airplay" aria-pressed="false"><svg aria-hidden="true" focusable="false"><use xlink:href="#plyr-airplay"></use></svg><span class="plyr__sr-only">AirPlay</span></button><button class="plyr__controls__item plyr__control" type="button" data-plyr="fullscreen" aria-pressed="false"><svg class="icon--pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-exit-fullscreen"></use></svg><svg class="icon--not-pressed" aria-hidden="true" focusable="false"><use xlink:href="#plyr-enter-fullscreen"></use></svg><span class="label--pressed plyr__sr-only">Exit fullscreen</span><span class="label--not-pressed plyr__sr-only">Enter fullscreen</span></button></div><div class="plyr__video-wrapper"><video poster="https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-HD.jpg" id="guitar-video-player-2" playsinline="" data-poster="https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-HD.jpg">
                                    <source src="https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-576p.mp4" type="video/mp4">
                                </video><div class="plyr__poster" style="display: none; background-image: url(&quot;https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-HD.jpg&quot;);"></div></div><div class="plyr__captions" dir="auto"></div><button type="button" class="plyr__control plyr__control--overlaid" data-plyr="play" aria-pressed="false" aria-label="Play"><svg aria-hidden="true" focusable="false"><use xlink:href="#plyr-play"></use></svg><span class="plyr__sr-only">Play</span></button></div>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Guitar for Beginners</h5>
                                <p class="card-text">
                                    The Fender Acoustic Guitar is the best choice for both beginners and professionals offering a great sound.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
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
<script src="${contextPath}/frontend/assets/js/app-access-roles.js"></script>
<script src="${contextPath}/frontend/assets/js/modal-add-role.js"></script>

<script src="${contextPath}/frontend/assets/js/app-academy-course.js"></script>
<script src="${contextPath}/frontend/assets/vendor/libs/plyr/plyr.js"></script>