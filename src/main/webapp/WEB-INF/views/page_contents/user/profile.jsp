<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">

        <div class="row">
            <div class="col-md-12">

                <div class="card mb-4">
                    <h5 class="card-header">나의 프로필</h5>
                    <!-- Account -->
                    <div class="card-body">
                        <div class="d-flex align-items-start align-items-sm-center gap-4">
                            <img
                                    src="${contextPath}${sessionScope.user.avatar}"
                                    alt="user-avatar"
                                    class="d-block rounded"
                                    height="100"
                                    width="100"
                                    id="uploadedAvatar"
                            />
                            <input type="hidden" name="userid" id="hiddenUserId" value="${sessionScope.user.userid}">
                            <div class="button-wrapper">
                                <label for="files" class="btn btn-primary me-2 mb-4" tabindex="0">
                                    <span class="d-none d-sm-block">Upload new photo</span>
                                    <i class="bx bx-upload d-block d-sm-none"></i>
                                    <input
                                            type="file"
                                            name="files"
                                            id="files"
                                            class="account-file-input"
                                            hidden
                                            accept="image/png, image/jpeg"
                                            onchange="onFileUpload();"
                                    />
                                </label>
                                <script>
                                    const onFileUpload = () => {
                                        var formData = new FormData();
                                        formData.append('profilePhoto', $('#files')[0].files[0]);
                                        formData.append('userid', $('#hiddenUserId').val());
                                        console.log("file upload ...ing")
                                        $.ajax({
                                            enctype: 'multipart/form-data',
                                            processData: false,
                                            contentType: false,
                                            type: 'POST',
                                            url: '${contextPath}/user/editProfilePhoto',
                                            data: formData,
                                            dataType: 'json',
                                            success: (resData) => {
                                                if(resData.isRegisterPhoto === true) {
                                                    alert('Profile change sucess!');
                                                    location.href = '${contextPath}/user/profile';
                                                }
                                            },
                                            error: (jqXHR) => {
                                                alert(jqXHR.statusText + '(' + jqXHR.status + ')');
                                            }
                                        });
                                    }
                                </script>
                                <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
                                    <i class="bx bx-reset d-block d-sm-none"></i>
                                    <span class="d-none d-sm-block">Reset</span>
                                </button>

                                <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size of 800K</p>
                            </div>
                        </div>
                    </div>
                    <hr class="my-0" />
                    <div class="card-body">
                        <form id="formAccountSettings" method="POST" onsubmit="return false">
                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label for="name" class="form-label">이름</label>
                                    <input
                                            class="form-control"
                                            type="text"
                                            id="name"
                                            name="name"
                                            value="${sessionScope.user.name}"
                                            autofocus
                                    />
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="username" class="form-label">닉네임</label>
                                    <input class="form-control" type="text" name="username" id="username" value="${sessionScope.user.username}" />
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="email" class="form-label">E-mail</label>
                                    <input
                                            class="form-control"
                                            type="text"
                                            id="email"
                                            name="email"
                                            value="${sessionScope.user.email}"
                                            placeholder="${sessionScope.user.email}"
                                    />
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="center" class="form-label">유치원</label>
                                    <input
                                            type="text"
                                            class="form-control"
                                            id="center"
                                            name="center"
                                            value="${sessionScope.user.centerid}"
                                    />
                                </div>
                                <div class="col-12 col-md-6">
                                    <label class="form-label" for="phoneNo">연락처</label>
                                    <input type="text" id="phoneNo" name="phoneNo" class="form-control"
                                           value="${sessionScope.user.phoneNo}"/>
                                </div>
                                <div class="col-12 col-md-6">
                                    <label for="birthday" class="form-label">생일</label>
                                    <input type="date" id="birthday" name="birthday" placeholder="2020/00/00"
                                           class="form-control">
                                </div>

                                <br>
                                <br>
                                <br>
                                <!------------------ADDRESS--------------->
                                <label for="zonecode" class="form-label">집 주소</label>
                                <div class="input-container">
                                    <div class="address-input-group">
                                        <div class="mb-3 address-container">

                                            <input type="text" class="form-control" id="zonecode" name="zipcode"
                                                   onclick="execDaumPostcode()" placeholder="우편번호" readonly>

                                        </div>
                                        <div class="mb-3 address-container">
                                            <input type="button" class="form-control " onclick="execDaumPostcode()"
                                                   value="우편번호 찾기">
                                        </div>
                                    </div>
                                    <div class="input-container">

                                    </div>
                                </div>
                                <div class="mb-3 address-input-group" style="margin-bottom: 5% !important;">
                                    <input type="text" class="form-control address-input" id="address" name="address"
                                           placeholder="주소" readonly>
                                    <input type="text" class="form-control address-input" id="detailAddress"
                                           name="detailAddress" placeholder="상세주소">
                                    <input type="text" class="form-control address-input" id="extraAddress"
                                           name="extraAddress"
                                           placeholder="참고항목">

                                </div>
                                <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"/>
                                <script>
                                    function execDaumPostcode() {
                                        new daum.Postcode({
                                            oncomplete: function (data) {
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
                                                if (data.userSelectedType === 'R') {
                                                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                                                        extraAddr += data.bname;
                                                    }
                                                    // 건물명이 있고, 공동주택일 경우 추가한다.
                                                    if (data.buildingName !== '' && data.apartment === 'Y') {
                                                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                                    }
                                                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                                    if (extraAddr !== '') {
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
                                <!------------------/ADDRESS/--------------->

                                <%--                            <div class="d-flex mb-3">--%>
                                <%--                                <div class="flex-grow-1 row">--%>
                                <%--                                    <div class="col-9">--%>
                                <%--                                        <h6 class="mb-0">유치원을 다니는 중인가요?</h6>--%>
                                <%--                                        <small class="text-muted">현재 유치원을 등록했다면 선택해주세요</small>--%>
                                <%--                                    </div>--%>
                                <%--                                    <div class="col-3 text-end">--%>
                                <%--                                        <div class="form-check form-switch">--%>
                                <%--                                            <input id="re-class" name="class" class="form-check-input float-end"--%>
                                <%--                                                   type="checkbox" role="switch">--%>
                                <%--                                        </div>--%>
                                <%--                                    </div>--%>
                                <%--                                </div>--%>
                                <%--                            </div>--%>

                                <!---------_CLASSES----->
                                <%--                            <div id="re-classInput" class="" data-select2-id="46" style="">--%>

                                <%--                                <label for="re-select2Primary" class="form-label">현재등록한 반을 선택해주세요</label>--%>
                                <%--                                <div class="select2-primary" data-select2-id="45">--%>
                                <%--                                    <div class="position-relative" data-select2-id="44">--%>
                                <%--                                        <div class="position-relative" data-select2-id="6">--%>
                                <%--                                            <div class="position-relative" data-select2-id="5">--%>
                                <%--                                                <select--%>
                                <%--                                                        id="re-select2Primary"--%>
                                <%--                                                        class="select2 form-select select2-hidden-accessible"--%>
                                <%--                                                        multiple="multiple"--%>
                                <%--                                                        tabindex="-1" name="registeredClasses" aria-hidden="true"--%>
                                <%--                                                        onchange="fnSelectArray(this)" data-select2-id="re-select2Primary">--%>
                                <%--                                                    <option value="1" data-select2-id="11">월</option>--%>
                                <%--                                                    <option value="2" data-select2-id="12">화</option>--%>
                                <%--                                                    <option value="3" data-select2-id="13">수</option>--%>
                                <%--                                                    <option value="4" data-select2-id="14">목</option>--%>
                                <%--                                                    <option value="5" data-select2-id="15">금</option>--%>
                                <%--                                                    <option value="6" data-select2-id="16">토</option>--%>
                                <%--                                                    <option value="7" data-select2-id="17">일</option>--%>
                                <%--                                                </select>--%>
                                <%--                                            </div>--%>
                                <%--                                        </div>--%>
                                <%--                                    </div>--%>
                                <%--                                </div>--%>
                                <div class="col-12 text-center">
                                    <button type="button" id="modalBtn"
                                            class="btn btn-primary me-sm-3 me-1 modal-submit-btn">
                                        Submit
                                    </button>
                                    <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="modal"
                                            aria-label="Close">Cancel
                                    </button>
                                </div>
                            </div>
                        </form>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- / Content -->
