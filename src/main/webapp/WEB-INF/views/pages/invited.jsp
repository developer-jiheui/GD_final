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
                <!-- Register -->
                <div class="card" style="min-width: 400px">
                    <div class="card-body" style="padding: 8% 10%;">
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
                        <h4 class="mb-2"></h4>
                        <p class="mb-4">초대코드가 있으신가요?❣️</p>

                        <form id="formAuthentication" class="mb-3" action="${contextPath}/user/finalSignUp"
                              method="POST">
<%--                            <div class="mb-3">--%>
<%--                                <label for="invitationCode" class="form-label">초대코드</label>--%>
<%--                                <input--%>
<%--                                        type="text"--%>
<%--                                        class="form-control"--%>
<%--                                        id="invitationCode"--%>
<%--                                        name="invitationCode"--%>
<%--                                        placeholder="초대코드를 입력해주세요"--%>
<%--                                        autofocus--%>
<%--                                />--%>





<%--                            </div>--%>
                                        <label for="invitationCode" class="form-label">초대코드</label>
                            <div class="mb-3">
                                <div class="input-container">
                                    <div class="address-input-group" style="display: inline-flex;">

                                        <div class="mb-3" style="width: 70%">
                                            <input type="text"
                                                   class="form-control"
                                                   id="invitationCode"
                                                   name="invitationCode"
                                                   placeholder="초대코드를 입력해주세요"
                                                   autofocus>
                                            <div class="error-msg form-label-sm" id="msg-code"></div>
                                        </div>
                                        <div class="mb-3" style="width: 5%"></div>
                                        <button id="btn-code" type="button"
                                                class="btn btn-icon btn-primary btn-square">
                                            인증하기
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <br><br>
                            <div class="mb-3">
                                <p>초대코드가 없으시다면 <br> 가입하시고자하는 유치원을 찾아 선택해주세요️</p>

                                <label for="centerList" class="form-label">유치원 이름</label>
                                <input class="form-control" list="datalistOptions" id="centerList" name="centerName"
                                       placeholder="Type to search...">
                                <input id="center-id" name="centerId" type="hidden" display="none"/>
                                <datalist id="datalistOptions">
                                </datalist>
                            </div>

                            <div class="mb-3">
                                <button class="btn btn-primary d-grid w-100" id="btnFinalRegister" type="submit">승인받기</button>
                            </div>
                        </form>

                        <script>
                            const fnCheckInviteCode =()=>{
                                $('#btn-code').on('click', (e)=>{

                                    let inputCode = $('#invitationCode').val();
                                    alert(inputCode);
                                    let invitationCodeReg = /^[a-zA-Z0-9]{6,}$/
                                    let msgCode = $('#msg-code');
                                    if(!invitationCodeReg.test(inputCode)){
                                        msgCode.text('초대코드 형식이 올바르지 않습니다')
                                    }
                                    else{
                                        $.ajax({
                                            // 요청
                                            type: 'GET',
                                            url: '${contextPath}/user/checkInviteCode',
                                            data: 'inviteid='+inputCode,
                                            dataType: 'json',
                                            success: (resData) => {
                                                if(resData.validCode){
                                                    msgCode.text('인증되셨습니다');
                                                }else{
                                                    msgCode.text('사용 불가능한 코드입니다');
                                                }
                                            },
                                            error: (jqXHR, textStatus, errorThrown) => {
                                                console.error('Error fetching center Detail:', textStatus, errorThrown);
                                                alert(jqXHR.statusText + '(' + jqXHR.status + ')');
                                            }
                                        });
                                    }
                                })
                            }


                            const fnGetCenterList = (e) => {
                                $.ajax({
                                    // 요청
                                    type: 'GET',
                                    url: '${contextPath}/user/centerList',
                                    dataType: 'json',
                                    success: (resData) => {

                                        $.each(resData.centerList, (i, center) => {
                                            let centerId = center.centerid;
                                            let centerName = center.centerName;
                                            let centerAddress = center.centerAddress;
                                            let centerLogo = center.logo;

                                            let str = '';
                                            str += '<option data-center-id='+centerId+' class="center-option" value="' + centerName + '">' + centerName + '</option>';

                                            $('#datalistOptions').append(str);

                                            // $(document).on('click', '.edit-modal', function (event) {
                                            //
                                            //
                                            // });
                                        });
                                    },
                                    error: (jqXHR, textStatus, errorThrown) => {
                                        console.error('Error fetching center Detail:', textStatus, errorThrown);
                                        alert(jqXHR.statusText + '(' + jqXHR.status + ')');
                                    }
                                });

                            }


                            $("#centerList").on('input', function () {
                                var val = this.value;
                                if($('#datalistOptions option').filter(function(){
                                    return this.value.toUpperCase() === val.toUpperCase();
                                }).length) {
                                    alert(this + this.value);
                                    let result =  $('#datalistOptions option').filter(function () { return $(this).html() == val; });

                                    console.log("printing Start");
                                    console.log($(this).val())
                                    $(this).val(val);
                                    console.log($(this).val())
                                    $('#center-id').val(result.data('center-id'));
                                    console.log($('#center-id').val())


                                }

                                // let result =  $('#datalistOptions option').filter(function () { return $(this).html() == val; });
                                // console.log("result")
                                // console.log(result.data('center-id'))
                                // console.log(result);
                            });

                            fnCheckInviteCode();
                            fnGetCenterList();
                        </script>


                        <p class="text-center">
                            <span>Already have an account?</span>
                            <a href="${contextPath}/pages/login">
                                <span>Sign in instead</span>
                            </a>
                        </p>
                    </div>
                </div>
                <!-- /Register -->
            </div>
        </div>
    </div>
</div>
<!-- / Content -->
<!--------VALIDATION & TAB--------->
<jsp:include page="/WEB-INF/views/layout/newFooter.jsp"/>
