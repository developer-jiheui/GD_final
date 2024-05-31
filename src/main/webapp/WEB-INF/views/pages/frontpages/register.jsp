<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<jsp:include page="/WEB-INF/views/layout/header.jsp"/>
<body>
<!-- Content -->
<div id="register">
    <div class="container-xxl" style="max-width:min-content;">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
            </div>
            <!-- Register -->
            <div class="card" style="min-width: 450px; max-height: 680px; min-height: 650px">
                <div class="card-body" style="padding: 8% 10%;">
                    <!--TAB-->
                    <div class="row">
                        <div class="">
                            <div class="nav-align-top mv-4">
                                <ul class="nav nav-pills mb-3" role="tablist" style="justify-content: end !important;">
                                    <li class="nav-item nav-tab-size">
                                        <span id="nav-tab1" class="nav-link nav-btn active">1</span>
                                    </li>
                                    <li class="nav-item nav-tab">
                                        <span id="nav-tab2" class="nav-link nav-btn">2</span>
                                    </li>
                                    <li class="nav-item nav-tab">
                                        <span id="nav-tab3" class="nav-link nav-btn">3</span>
                                    </li>
                                    <li class="nav-item nav-tab">
                                        <span id="nav-tab4" class="nav-link nav-btn">4</span>
                                    </li>
                                </ul>
                                <!-- Logo -->
                                <div class="app-brand justify-content-center big-brand">
                                    <a href="${contextPath}/pages/home" class="app-brand-link gap-2">
                                      <span class="app-brand-logo demo">
                                                      <img src="${contextPath}/frontend/assets/img/favicon/favicon.ico"
                                                           style="height: 30px; width: 30px;">

                                      </span>
                                        <span class="app-brand-text demo text-body fw-bolder big-brand-text">MUMMOO</span>
                                    </a>
                                </div>
                                <!-- /Logo -->
                                <div class="tab-content register">
                                    <%------------------------------FIRST TAB--%>

                                    <div class="tab-pane fade show active" id="tab1" role="tabpanel">
                                        <h5>
                                            서비스 약관에 동의해주세요
                                        </h5>
                                        <br>
                                        <div class="mb-3">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="terms-conditions"
                                                       name="terms"/>
                                                <label class="form-check-label" for="terms-conditions">
                                                    <a href="javascript:void(0);">모두 동의합니다</a>
                                                </label>
                                            </div>
                                        </div>
                                        <hr class="in-card border-light ">
                                        <div class="mb-3">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="terms-condition0"
                                                       name="terms"/>
                                                <label class="form-check-label" for="terms-condition0">
                                                    I agree to
                                                    <a href="javascript:void(0);">privacy policy & terms</a>
                                                </label>
                                            </div>
                                        </div>
                                        <hr class="in-card border-light ">
                                        <div class="mb-3">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="terms-conditions1"
                                                       name="terms"/>
                                                <label class="form-check-label" for="terms-conditions1">
                                                    I agree to
                                                    <a href="javascript:void(0);">privacy policy & terms</a>
                                                </label>
                                            </div>
                                        </div>
                                        <hr class="in-card border-light ">
                                        <div class="mb-3">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="terms-conditions2"
                                                       name="terms"/>
                                                <label class="form-check-label" for="terms-conditions2">
                                                    I agree to
                                                    <a href="javascript:void(0);">privacy policy & terms</a>
                                                </label>
                                            </div>
                                        </div>
                                        <hr class="in-card border-light ">
                                        <div class="mb-3">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="terms-conditions3"
                                                       name="terms"/>
                                                <label class="form-check-label" for="terms-conditions3">
                                                    I agree to
                                                    <a href="javascript:void(0);">privacy policy & terms</a>
                                                </label>
                                            </div>
                                        </div>
                                        <hr class="in-card border-light ">
                                        <!------Button---->
                                        <div class="btn-container" role="tablist">
                                            <a class="btn btn-primary d-grid" style="width: 35%"
                                               href="${contextPath}/pages/login"
                                            >이전
                                            </a>
                                            <div style="width: 15%"></div>
                                            <button id="btn1" class="btn btn-primary d-grid btn-next" style="width: 50%"
                                                    type="button"
                                            >다음
                                            </button>
                                        </div>
                                    </div>

                                    <%------------------------------SECOND TAB--%>
                                    <div class="tab-pane fade" id="tab2" role="tabpanel">
                                        <h4 class="mv-2">기본 정보 입력️</h4>
                                        <p class="mb-4">본인의 이름과 휴대전화번호 및 이메일을 모두 정확히 입력해주세요</p>
                                        <div class="mb-3">
                                            <label for="name" class="form-label">이름</label>
                                            <input
                                                    type="text"
                                                    class="form-control"
                                                    id="name"
                                                    name="name"
                                                    placeholder="이름"
                                                    autofocus
                                            />
                                            <div class="error-msg form-label-sm" id="msg-name"></div>

                                        </div>
                                        <div class="mb-3">

                                            <label class="form-label" for="phone">Phone Number</label>
                                            <div class="input-group input-group-merge">
                                                <span class="input-group-text">대한민국 (+82)</span>
                                                <input type="text" id="phone" name="phone"
                                                       class="form-control" placeholder="010-1234-5678">
                                            </div>
                                            <div class="error-msg form-label-sm" id="msg-phoneNum"></div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="email" class="form-label">이메일</label>
                                            <input type="text" class="form-control" id="email" name="email"
                                                   placeholder="Enter your email"/>
                                            <div class="error-msg form-label-sm" id="msg-email"></div>
                                        </div>

                                        <div class="btn-container" role="tablist">
                                            <button class="btn btn-primary d-grid btn-before" style="width: 35%"
                                                    type="button"
                                            >이전
                                            </button>
                                            <div style="width: 15%"></div>
                                            <button id="btn2" class="btn btn-primary d-grid btn-next " style="width: 50%"
                                                    type="button"
                                            >다음
                                            </button>
                                        </div>
                                    </div>
                                    <%------------------------------THIRD TAB --%>
                                    <div class="tab-pane fade" id="tab3" role="tabpanel">
                                        <h4 class="mb-2">인증번호 입력️</h4>
                                        <p class="mb-4">입력한 이메일로 인증번호를 전송하였습니다</p>
                                        <br>
                                        <br>
                                        <h4 id="inpEmailPrint" style="color: #696cff">👉</h4>
                                        <br>
                                        <div class="mb-3">
                                            <div class="input-container">
                                                <div class="address-input-group" style="display: inline-flex;">
                                                    <div class="mb-3" style="width: 70%">
                                                        <input type="text" id="code" name="code" class="form-control"
                                                               placeholder="인증번호는 10분동안 유효합니다">
                                                    </div>
                                                    <div class="mb-3" style="width: 5%"></div>
                                                    <button id="btn-code" type="button"
                                                            class="btn btn-icon btn-primary btn-square">
                                                        인증하기
                                                    </button>
                                                </div>
                                            </div>

                                            <%--                                            <input--%>
                                            <%--                                                    type="text"--%>
                                            <%--                                                    class="form-control"--%>
                                            <%--                                                    id="code"--%>
                                            <%--                                                    name="code"--%>
                                            <%--                                                    placeholder="인증번호는 10분동안 유효합니다"--%>
                                            <%--                                                    autofocus--%>
                                            <%--                                            />--%>
                                        </div>
                                        <br>
                                        <br>
                                        <div class="btn-container" role="tablist">
                                            <button class="btn btn-primary d-grid btn-before" style="width: 35%"
                                                    type="button"
                                            >이전
                                            </button>
                                            <div style="width: 15%"></div>
                                            <button id="btn3" class="btn btn-primary d-grid btn-next " style="width: 50%"
                                                    type="button"
                                            >다음
                                            </button>
                                        </div>
                                    </div>

                                    <%-------------------------------FORTH TAB --%>
                                    <div class="tab-pane fade" id="tab4" role="tabpanel">
                                        <h4 class="mb-2">환영합니다❣️</h4>
                                        <p class="mb-4">멈무에 로그인 시 사용할 아이디와 비밀번호를 입력해주세요</p>

                                        <form id="ss" class="mb-3" action="user/register" method="POST">
                                            <label for="username" class="form-label">아이디</label>
                                            <div class="address-input-group" style="display: inline-flex;">
                                                <div class="mb-3" style="width: 60%">
                                                <input
                                                        type="text"
                                                        class="form-control"
                                                        id="username"
                                                        name="username"
                                                        placeholder="Enter your username"
                                                        autofocus

                                                /><div class="error-msg form-label-sm" id="msg-username"></div>
                                                </div>
                                                <div class="mb-3" style="width: 5%"></div>
                                                <button id="btn-username" type="button"
                                                        class="btn btn-icon btn-primary btn-square">
                                                    중복확인
                                                </button>
                                            </div>


                                            <div class="mb-3 form-password-toggle">
                                                <label class="form-label" for="pw">비밀번호</label>
                                                <div class="input-group input-group-merge">
                                                    <input
                                                            type="password"
                                                            id="pw"
                                                            class="form-control"
                                                            name="pw"
                                                            placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                                            aria-describedby="password"
                                                    />
                                                    <span class="input-group-text cursor-pointer"><i
                                                            class="bx bx-hide"></i></span>
                                                </div>
                                                <div class="error-msg form-label-sm" id="msg-pw"></div>

                                            </div>
                                            <div class="mb-3 form-password-toggle">
                                                <label class="form-label" for="pw2">비밀번호 재입력</label>
                                                <div class="input-group input-group-merge">
                                                    <input
                                                            type="password"
                                                            id="pw2"
                                                            class="form-control"
                                                            name="pw2"
                                                            placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                                            aria-describedby="password"
                                                    />
                                                    <span class="input-group-text cursor-pointer"><i
                                                            class="bx bx-hide"></i></span>
                                                </div>
                                                <div class="error-msg form-label-sm" id="msg-pw2"></div>

                                            </div>
                                            <br>
                                            <div class="btn-container" role="tablist">
                                                <button class="btn btn-primary d-grid btn-before" style="width: 35%"
                                                        type="button"
                                                >이전
                                                </button>
                                                <div style="width: 15%"></div>
                                                <button id="btn-register-user" class="btn btn-primary d-grid"
                                                        style="width: 50%"
                                                        type="button"
                                                >가입하기
                                                </button>
                                                <%--                                                <a href="${contextPath}/pages/start" type="button"--%>
                                                <%--                                                   class="btn btn-primary d-grid" style="width: 50%">다음</a>--%>
                                            </div>

                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <p class="text-center">
                            <span>Already have an account?</span>
                            <a href="${contextPath}/pages/login">
                                <span>Sign in instead</span>
                            </a>
                        </p>
                    </div>
                </div>
                <!-- Register Card -->
            </div>
        </div>
    </div>
</div>

<!--------VALIDATION & TAB--------->
<script src="${contextPath}/resources/assets/js/signup.js"></script>


<jsp:include page="../../layout/src_footer.jsp"/>