<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"/>
<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/typeahead-js/typeahead.css"/>
<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/flatpickr/flatpickr.css"/>


<body>



    <%--    <script>--%>
    <%--        function fnDogDetail(dogId){--%>
    <%--            // editModal.ar;--%>
    <%--            // alert(editModal.style.display);--%>

    <%--            location.href= "${contextPath}/dogDetail?dogId="+dogId;--%>
    <%--            &lt;%&ndash;$.ajax({&ndash;%&gt;--%>
    <%--            &lt;%&ndash;    // 요청&ndash;%&gt;--%>
    <%--            &lt;%&ndash;    type: 'GET',&ndash;%&gt;--%>
    <%--            &lt;%&ndash;    url: '${contextPath}/user/dogDetail',&ndash;%&gt;--%>
    <%--            &lt;%&ndash;    data: 'dogId=' + dogId,&ndash;%&gt;--%>

    <%--            &lt;%&ndash;    success: (resData) => {&ndash;%&gt;--%>
    <%--            &lt;%&ndash;        console.log("====resData====")&ndash;%&gt;--%>
    <%--            &lt;%&ndash;        console.log(resData)&ndash;%&gt;--%>
    <%--            &lt;%&ndash;        &ndash;%&gt;--%>
    <%--            &lt;%&ndash;        &lt;%&ndash;alert("dogDetail : " + "${dogDetail}")&ndash;%&gt;&ndash;%&gt;--%>
    <%--            &lt;%&ndash;    },&ndash;%&gt;--%>
    <%--            &lt;%&ndash;    error: (jqXHR) => {&ndash;%&gt;--%>
    <%--            &lt;%&ndash;        alert(jqXHR.statusText + '(' + jqXHR.status + ')');&ndash;%&gt;--%>
    <%--            &lt;%&ndash;    }&ndash;%&gt;--%>
    <%--            &lt;%&ndash;})&ndash;%&gt;--%>
    <%--        }--%>
    <%--    </script>--%>

    <!--/EDIT DOG Modal -->
<%--    <div class="modal fade" id="editDog">--%>
<%--        <div class="modal-dialog modal-lg modal-simple modal-edit-user">--%>
<%--            <div class="modal-content p-3 p-md-5">--%>
<%--                <div class="modal-body">--%>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

                    <form id="editDogForm" class="row g-3"
                          enctype="multipart/form-data"
                          action="${pageContext.request.contextPath}/user/editDog"
                          method="POST"
                    >
                        <div class="text-center mb-4">
                            <h3>Edit User Information</h3>
                            <p>Updating user details will receive a privacy audit.</p>
                            <!-------------AVATAR-------------->
                            <div class="row">
                                <div class="text-center">
                                    <div class="d-flex align-items-start align-items-sm-center">
                                        <div class="col-md-6">
                                            <div class="img-container" style="margin-left:-35px">
                                                <input type="hidden" name="dogId" value="${dogDetail.dogId}">
                                                <div class="align-center">
                                                    <%--                            @TODO CHANGE THE SETTING FOR THE IMAGE--%>
                                                    <img
                                                            src="${dogDetail.avatar}"
                                                            alt="user-avatar"
                                                            class="d-block rounded"
                                                            style="height:150px; margin-bottom: 1rem"
                                                            id="avatar"
                                                    />
                                                </div>
                                                <div class="align-center">
                                                    <div class="col-12 col-md-9 fv-plugins-icon-container">
                                                        <label class="form-label"
                                                               for="modalDogName2">강아지 이름</label>
                                                        <input type="text" id="modalDogName2"
                                                               name="modalDogName"
                                                               class="form-control"
                                                               value="${dogDetail.name}">
                                                        <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="button-wrapper col-md-6">
                                            <label for="files2" class="btn btn-primary me-2 mb-4"
                                                   tabindex="0">
                                                <span class="d-none d-sm-block">Upload new photo</span>
                                                <i class="bx bx-upload d-block d-sm-none"></i>
                                                <input
                                                        type="file"
                                                        name="files"
                                                        id="files2"
                                                        class="account-file-input"
                                                        hidden
                                                        accept="image/png, image/jpeg"
                                                        onchange="onFileUpload();"
                                                />
                                            </label>
                                            <script>

                                                document.addEventListener('DOMContentLoaded', function (e) {
                                                    e.preventDefault();
                                                    (function () {
                                                        const deactivateAcc = document.querySelector('#formAccountDeactivation');

                                                        // Update/reset user image of account page
                                                        let accountUserImage = document.getElementById('avatar');
                                                        const fileInput = document.querySelector('.account-file-input'),
                                                            resetFileInput = document.querySelector('.account-image-reset');

                                                        if (accountUserImage) {
                                                            const resetImage = accountUserImage.src;
                                                            fileInput.onchange = () => {
                                                                if (fileInput.files[0]) {
                                                                    accountUserImage.src = window.URL.createObjectURL(fileInput.files[0]);
                                                                }
                                                            };
                                                            resetFileInput.onclick = () => {
                                                                fileInput.value = '';
                                                                accountUserImage.src = resetImage;
                                                            };
                                                        }
                                                    })();
                                                });
                                            </script>
                                            <button type="button"
                                                    class="btn btn-outline-secondary account-image-reset mb-4">
                                                <i class="bx bx-reset d-block d-sm-none"></i>
                                                <span class="d-none d-sm-block">Reset</span>
                                            </button>

                                            <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size
                                                of 800K</p>
                                        </div>
                                    </div>

                                </div>


                            </div>
                            <!-------------/AVATAR/-------------->

                        </div>


                        <div class="col-12 col-md-6">
                            <label class="form-label" for="ed-parent1Name">보호자1 이름</label>
                            <input type="text" id="ed-parent1Name" name="parent1Name" class="form-control"
                                   value="${dogDetail.parent1Name}"/>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="ed-parent2Name">보호자2 이름</label>
                            <input type="text" id="ed-parent2Name" name="parent2Name" class="form-control"
                                   value="${dogDetail.parent2Name}"/>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="ed-parent1phone">보호자1 연락처</label>
                            <input type="text" id="ed-parent1phone" name="parent1phone" class="form-control"
                                   value="${dogDetail.parent1Phone}"/>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="ed-parent2phone">보호자2 연락처</label>
                            <input type="text" id="ed-parent2phone" name="parent2phone" class="form-control"
                                   value="${dogDetail.parent2Phone}"/>
                        </div>
                        <div class="col-md-4 col-12 mb-md-0 mb-4">
                            <label for="ed-bs-datepicker-autoclose" class="form-label">댕댕이 생일</label>
                            <input type="date" id="ed-bs-datepicker-autoclose" name="birthday" value="${dogDetail.birthday}"
                                   class="form-control">
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label" for="ed-breed">견종</label>
                            <input type="text" id="ed-breed" name="breed" class="form-control"
                                   value="${dogDetail.breed}"/>
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label" for="ed-weight">몸무게</label>
                            <input type="number" id="ed-weight" step="0.01" name="weight" class="form-control"
                                   value="${dogDetail.weight}"/>
                        </div>

                        <!------------------ADDRESS--------------->
                        <label for="ed-zonecode" class="form-label">집 주소</label>
                        <div class="input-container">
                            <div class="address-input-group">
                                <div class="mb-3 address-container">

                                    <input type="text" class="form-control" id="ed-zonecode" name="zipcode"
                                           onclick="execDaumPostcode()" placeholder="${zipCode}" readonly>

                                </div>
                                <div class="mb-3 address-container">

                                    <input type="button" class="form-control " onclick="execDaumPostcode()"
                                           value="우편번호 찾기"><br>

                                </div>
                            </div>
                            <div class="input-container">

                            </div>
                        </div>
                        <div class="mb-3 address-input-group" style="margin-bottom: 5% !important;">
                            <input type="text" class="form-control address-input" id="ed-address" name="address"
                                   placeholder="${address}" readonly>
                            <input type="text" class="form-control address-input" id="ed-detailAddress"
                                   name="detailAddress" placeholder="${detailAddress}">
                            <input type="text" class="form-control address-input" id="ed-extraAddress"
                                   name="extraAddress"
                                   placeholder="${extraAddress}">

                        </div>
                        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
                                            document.getElementById('ed-extraAddress').value = extraAddr;
                                        } else {
                                            document.getElementById('ed-extraAddress').value = '';
                                        }
                                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                        document.getElementById('ed-zonecode').value = data.zonecode;
                                        document.getElementById('ed-address').value = addr;
                                        // 커서를 상세주소 필드로 이동한다.
                                        document.getElementById('ed-detailAddress').focus();
                                    }
                                }).open();
                            }
                        </script>
                        <!------------------/ADDRESS/--------------->

                        <div class="d-flex mb-3">
                            <div class="flex-grow-1 row">
                                <div class="col-9">
                                    <h6 class="mb-0">유치원을 다니는 중인가요?</h6>
                                    <small class="text-muted">현재 유치원을 등록했다면 선택해주세요</small>
                                </div>
                                <div class="col-3 text-end">
                                    <div class="form-check form-switch">
                                        <input id="ed-class" onchange="fnAlert()" name="class" class="form-check-input float-end"
                                               type="checkbox" role="switch">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="ed-classInput" class="col-md-6 mb-4" data-select2-id="46" style="display: none">
                        <script>
                            const isRegistered = document.getElementById("ed-class");
                            const registerClasses = document.getElementById("ed-classInput");
                            const selectedClasses = document.getElementById("ed-select2Primary");
                            let dbClasses = ${classes};

                            if(dbClasses!=null&&dbClasses!==""){
                                isRegistered.checked = true;
                                registerClasses.style.display="";
                                let arr = Array.from(dbClasses, Number);
                                for (let i = 0; i < arr.length; i++) {
                                 if(arr[i]===1){selectedClasses.options[0].selected=true;}
                                 if(arr[i]===2){selectedClasses.options[1].selected=true;}
                                 if(arr[i]===3){selectedClasses.options[2].selected=true;}
                                 if(arr[i]===4){selectedClasses.options[3].selected=true;}
                                 if(arr[i]===5){selectedClasses.options[4].selected=true;}
                                 if(arr[i]===6){selectedClasses.options[5].selected=true;}
                                 if(arr[i]===7){selectedClasses.options[6].selected=true;}
                                }

                            }
                        </script>
                            <label for="ed-select2Primary" class="form-label">현재등록한 반을 선택해주세요</label>
                            <div class="select2-primary" data-select2-id="45">
                                <div class="position-relative" data-select2-id="44">
                                    <select id="ed-select2Primary"
                                            class="select2 form-select select2-hidden-accessible"
                                            multiple=""
                                            data-select2-id="select2Primary"
                                            tabindex="-1"
                                            aria-hidden="true">
                                        <option value="1" data-select2-id="1">월</option>
                                        <option value="2" data-select2-id="2">화</option>
                                        <option value="3" data-select2-id="3">수</option>
                                        <option value="4" data-select2-id="4">목</option>
                                        <option value="5" data-select2-id="5">금</option>
                                        <option value="6" data-select2-id="6">토</option>
                                        <option value="7" data-select2-id="7">일</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <script>
                            const editClassInput = document.getElementById("ed-classInput");
                            function fnAlert(){
                                if (event.currentTarget.checked) {
                                    editClassInput.style.display='';
                                } else {
                                    editClassInput.style.display='none';
                                }
                            }
                        </script>
                        <div class="col-12 text-center">
                            <button type="submit" class="btn btn-primary me-sm-3 me-1">EDIT</button>
                            <a type="reset" class="btn btn-label-secondary"
                            href="${contextPath}/user/dogList">Cancel
                            </a>
                        </div>
                    </form>


    <!-- PAGE JS -->
    <script src="${contextPath}/frontend/assets/js/modal-edit-user.js"></script>
    <script src="${contextPath}/frontend/assets/js/forms-pickers.js"></script>
    <script src="${contextPath}/frontend/assets/js/forms-extras.js"></script>
    <script src="${contextPath}/frontend/assets/js/forms-selects.js"></script>
    <%--    <script src="${contextPath}/frontend/assets/js/forms-tagify.js"></script>--%>
    <%--    <script src="${contextPath}/frontend/assets/js/forms-typeahead.js"></script>--%>


