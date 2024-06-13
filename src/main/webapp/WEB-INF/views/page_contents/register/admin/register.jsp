<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<body>
<!-- Content -->
<div id="register">
    <div class="container-xxl" style="max-width:min-content;">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Register -->
                <div class="card" style="min-width: 500px; min-height: 500px">
                    <div class="card-body" style="padding: 8% 10%;">
                        <!-- Logo -->
                        <div class="app-brand justify-content-center big-brand">
                            <span class="app-brand-link gap-2">
                  <span class="app-brand-logo demo">
                                  <img src="${contextPath}/frontend/assets/img/favicon/favicon.ico" style="height: 30px; width: 30px;">

                  </span>
                                <span class="app-brand-text demo text-body fw-bolder big-brand-text">MUMMOO</span>
                            </span>
                        </div>
                        <!-- /Logo -->
                        <h4 class="mb-2">환영합니다 ${sessionScope.user.name} 원장님❣️</h4>
                        <p class="mb-4">유치원의 기본 정보를 입력해주세요!</p>

                        <form id="formDaycare" class="mb-3" action="${contextPath}/admin/register" method="POST">
                            <label for="zonecode" class="form-label">유치원 주소</label>
                            <div class="input-container">
                                <div class="address-input-group">
                                    <div class="mb-3 address-container">

                                        <input type="text"  class="form-control" id="zonecode" name="zipcode" onclick="execDaumPostcode()" placeholder="우편번호" readonly>

                                    </div>
                                    <div class="mb-3 address-container">

                                        <input type="button" class="form-control " onclick="execDaumPostcode()" value="우편번호 찾기"><br>

                                    </div>
                                </div>
                                <div class ="input-container">

                                </div>
                            </div>
                            <div class="mb-3 address-input-group" style="margin-bottom: 5% !important;">
                                <input type="text"  class="form-control address-input" id="address" name="address" placeholder="주소" readonly>
                                <input type="text" class="form-control address-input" id="detailAddress" name="detailAddress" placeholder="상세주소">
                                <input type="text" class="form-control address-input" id="extraAddress" name="extraAddress" placeholder="참고항목">

                            </div>

                            <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                            <script>
                                function execDaumPostcode() {
                                    new daum.Postcode({
                                        oncomplete: function(data) {
                                            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                                            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                            var addr = ''; // 주소 변수
                                            var extraAddr = ''; // 참고항목 변수
                                            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                                addr = data.roadAddress;
                                            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                                addr = data.jibunAddress;
                                            }
                                            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                            if(data.userSelectedType === 'R'){
                                                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                                    extraAddr += data.bname;
                                                }
                                                // 건물명이 있고, 공동주택일 경우 추가한다.
                                                if(data.buildingName !== '' && data.apartment === 'Y'){
                                                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                                }
                                                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                                if(extraAddr !== ''){
                                                    extraAddr = ' (' + extraAddr + ')';
                                                }
                                                // 조합된 참고항목을 해당 필드에 넣는다.
                                                document.getElementById('extraAddress').value = extraAddr;
                                            } else {
                                                document.getElementById('extraAddress').value = '';
                                            }
                                            // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                            document.getElementById('zonecode').value = data.zonecode;
                                            document.getElementById('address').value = addr;
                                            // 커서를 상세주소 필드로 이동한다.
                                            document.getElementById('detailAddress').focus();
                                        }
                                    }).open();
                                }
                            </script>



                            <div class="mb-3">
                                <label for="center" class="form-label">유치원 이름</label>

                                <input
                                        type="text"
                                        class="form-control"
                                        id="center"
                                        name="center"
                                        placeholder="유치원 이름을 입력해주세요"
                                        autofocus1
                                />
                            </div>
                            <div class="mb-3">
                                <label for="dean_name" class="form-label">원장님 이름</label>
                                <input type="text" class="form-control" id="dean_name" name="dean_name" placeholder="${sessionScope.user.name}" readonly />
                            </div>
                            <div class="mb-3">
                                <label for="phoneNo" class="form-label">유치원 전화번호</label>
                                <input type="text" class="form-control" id="phoneNo" name="phoneNo" placeholder="010-0000-0000" />
                            </div>

                            <button id="admin-submit" type="button" class="btn btn-primary d-grid w-100 btn-signup">다음 단계로 </button>
                        </form>

                        <script>
                            document.getElementById("admin-submit").addEventListener('click',()=>{
                                document.getElementById("formDaycare").submit();
                            })
                        </script>

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





