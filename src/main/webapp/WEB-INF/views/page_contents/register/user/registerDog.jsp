<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>


<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"/>
<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/typeahead-js/typeahead.css"/>
<link rel="stylesheet" href="${contextPath}/frontend/assets/vendor/libs/flatpickr/flatpickr.css"/>


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
                        <h4 class="mb-2">환영합니다 ${sessionScope.user.name} 보호자님❣️</h4>
                        <p class="mb-4">우리 유치원을 다니는 아이들을 등록해주세요 :)</p>

                        <div style="margin-bottom: 2rem"></div>
                        <ul id="dogs" class="class-list">
                            <!----dogList AJAX--->
                        </ul>
                        <div id="registerBtnContainer" style="display: flex; justify-content: center; align-items: center;
                                    margin-top: 2rem; margin-bottom: 0.5rem">
                            <button type="button" id="addDogBtn" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#dogModal"> 강아지 등록하기
                            </button>
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


    <!-- ADD DOG Modal -->
    <div class="modal fade" id="dogModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-simple modal-edit-user">
            <div class="modal-content p-3 p-md-5">
                <div class="modal-body">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

                    <form id="frmModal" class="row g-3"
                          enctype="multipart/form-data"
                          method="POST"
                    >
                        <div class="text-center mb-4">
                            <h3 id="modalTitle">Edit User Information</h3>
                            <p id="modalText">아이들의 안전과 원활한 소통을 위해 최대한 정확한 정보를 기입해주세요</p>
                            <!-------------AVATAR-------------->
                            <div class="row">
                                <div class="text-center">
                                    <div class="d-flex align-items-start align-items-sm-center">
                                        <div class="col-md-6">
                                            <div class="img-container" style="margin-left:-35px">
                                                <div class="align-center">
                                                    <input type="hidden" id="dog-id" name="dogId" display="none"/>
                                                    <%--                            @TODO CHANGE THE SETTING FOR THE IMAGE--%>
                                                    <img
                                                            src="${contextPath}/resources/images/roundStickers/kisses.png"
                                                            alt="user-avatar"
                                                            class="d-block rounded dogAvatar"
                                                            style="height:150px; margin-bottom: 1rem"
                                                            id="avatar"
                                                    />
                                                </div>
                                                <div class="align-center">
                                                    <div class="col-12 col-md-9 fv-plugins-icon-container">
                                                        <label class="form-label"
                                                               for="modalDogName">강아지 이름</label>
                                                        <input type="text" id="modalDogName"
                                                               name="modalDogName"
                                                               class="form-control"
                                                               placeholder="">
                                                        <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="button-wrapper col-md-6">
                                            <label for="files" class="btn btn-primary me-2 mb-4"
                                                   tabindex="0">
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
                            <label class="form-label" for="parent1Name">보호자1 이름</label>
                            <input type="text" id="parent1Name" name="parent1Name" class="form-control"
                                   value="${sessionScope.user.name}"/>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="parent2Name">보호자2 이름</label>
                            <input type="text" id="parent2Name" name="parent2Name" class="form-control" placeholder=""/>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="parent1phone">보호자1 연락처</label>
                            <input type="text" id="parent1phone" name="parent1phone" class="form-control"
                                   value="${sessionScope.user.phoneNo}"/>
                        </div>
                        <div class="col-12 col-md-6">
                            <label class="form-label" for="parent2phone">보호자2 연락처</label>
                            <input type="text" id="parent2phone" name="parent2phone" class="form-control"
                                   placeholder=""/>
                        </div>
                        <div class="col-md-4 col-12 mb-md-0 mb-4">
                            <label for="birthday" class="form-label">댕댕이 생일</label>
                            <input type="date" id="birthday" name="birthday" placeholder="2020/00/00"
                                   class="form-control">
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label" for="breed">견종</label>
                            <input type="text" id="breed" name="breed" class="form-control"
                                   placeholder="시고르자브종"/>
                        </div>
                        <div class="col-12 col-md-4">
                            <label class="form-label" for="weight">몸무게</label>
                            <input type="number" id="weight" name="weight" class="form-control"
                                   placeholder="3.5"/>
                        </div>

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
                            <input type="text" class="form-control address-input" id="extraAddress" name="extraAddress"
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

                        <div class="d-flex mb-3">
                            <div class="flex-grow-1 row">
                                <div class="col-9">
                                    <h6 class="mb-0">유치원을 다니는 중인가요?</h6>
                                    <small class="text-muted">현재 유치원을 등록했다면 선택해주세요</small>
                                </div>
                                <div class="col-3 text-end">
                                    <div class="form-check form-switch">
                                        <input id="re-class" name="class" class="form-check-input float-end"
                                               type="checkbox" role="switch">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!---------_CLASSES----->
                        <div id="re-classInput" class="" data-select2-id="46" style="">

                            <label for="re-select2Primary" class="form-label">현재등록한 반을 선택해주세요</label>
                            <div class="select2-primary" data-select2-id="45">
                                <div class="position-relative" data-select2-id="44">
                                    <div class="position-relative" data-select2-id="6">
                                        <div class="position-relative" data-select2-id="5">
                                            <select
                                                    id="re-select2Primary"
                                                    class="select2 form-select select2-hidden-accessible"
                                                    multiple="multiple"
                                                    tabindex="-1" name="registeredClasses" aria-hidden="true"
                                                    onchange="fnSelectArray(this)" data-select2-id="re-select2Primary">
                                                <option value="1" data-select2-id="11">월</option>
                                                <option value="2" data-select2-id="12">화</option>
                                                <option value="3" data-select2-id="13">수</option>
                                                <option value="4" data-select2-id="14">목</option>
                                                <option value="5" data-select2-id="15">금</option>
                                                <option value="6" data-select2-id="16">토</option>
                                                <option value="7" data-select2-id="17">일</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <div class="col-12 text-center">
                            <button type="button" id="modalBtn" class="btn btn-primary me-sm-3 me-1 modal-submit-btn">
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
    <!--/ ADD DOG Modal -->


    <script>
        const frmModal = $('#frmModal');
        const frmBtn = $('#modalBtn');
        const modalTitle = $('#modalTitle');
        const modalText = $('#modalText');

        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }

        const goes2class = document.getElementById("re-class");
        const classInput = document.getElementById("re-classInput");
        const classes = document.getElementById("re-select2Primary");

        goes2class.addEventListener('change', () => {
            if (event.currentTarget.checked) {
                classInput.style.display = '';
            } else {
                classInput.style.display = 'none';
            }

        })

        // Modal Class select
        function fnSelectArray(selectBox) {
            const inputContainer = document.getElementById("re-classInput");
            // let allValues;
            let arr = new Array();
            let count = 0;
            let valInput = document.createElement("input");
            valInput.setAttribute("type", "hidden");
            valInput.setAttribute("name", "classes");

            // clear selection
            console.log("select option:", selectBox.value)
            for (var i = 0; i <= selectBox.options.length; i++) {
                var selectedNode = selectBox.options[i];
                if (selectedNode.selected) {
                    arr[count] = selectedNode.value;
                    count++;
                }

                valInput.setAttribute("value", arr.toString());
                console.log("Value-----------")
                console.log(valInput.getAttribute("value"));
                console.log(inputContainer.lastChild.nodeName)

                if (inputContainer.lastChild.nodeName === "INPUT") {
                    inputContainer.lastChild.remove();
                    inputContainer.appendChild(valInput);
                } else {
                    inputContainer.appendChild(valInput);
                }

            }


        }


        const fnGetDogList = (e) => {
            $.ajax({
                // 요청
                type: 'POST',
                url: '${contextPath}/user/dogList',
                // 응답
                dataType: 'json',
                success: (resData) => {

                    //create Next button
                    if(resData.dogList.length>0){
                        let gap ='<div style="width: 11%"></div>'
                        let btn = '<a href="${contextPath}/user/invitedOrNot" class="btn btn-primary">등록 완료</a>';
                        $('#registerBtnContainer').append(gap);
                        $('#registerBtnContainer').append(btn);
                    }

                    $.each(resData.dogList, (i, dog) => {
                        let dogName = dog.name;
                        let dogClasses = "";
                        dogClasses += dog.classes;

                        let dogId = dog.dogId;
                        let dogAvatar = dog.avatar;

                        let str = '';
                        str += '<div class="mb-3"><div class="class-text-container"><li class="dog class-name-list" style="height: 50px">';
                        str += '<a href="${contextPath}/user/dogDetail?dogId=' + dogId + '"  type="button" className="btn-edit btn-icon" style="width: 50px; height: 50px; border-radius: 3rem; overflow: hidden">';
                        str += '<img src="' + dogAvatar + '" style="height: 50px; aspect-ratio: auto"></a>';
                        str += '<div style="height: inherit;width: 80%; display: flex; justify-content: center; align-items: center"><a onclick="fnModal()" style="height: inherit;width: 40%; display: flex; justify-content: center; align-items: center">' + dogName + '</a>';
                        str += '<div id="class-parent" style="height: inherit;width: 60%; display: flex; justify-content: center; align-items: center">'

                        if (dogClasses.indexOf('0') === -1) {
                            console.log(dogClasses)
                            if (dogClasses.indexOf('1') !== -1) {
                                str += '<span class="badge bg-label-primary me-1">월</span>';
                            }
                            if (dogClasses.indexOf('2') !== -1) {
                                str += '<span class="badge bg-label-secondary me-1">화</span>';
                            }
                            if (dogClasses.indexOf('3') !== -1) {
                                str += '<span class="badge bg-label-success me-1">수</span>';
                            }
                            if (dogClasses.indexOf('4') !== -1) {
                                str += '<span class="badge bg-label-warning me-1">목</span>';
                            }
                            if (dogClasses.indexOf('5') !== -1) {
                                str += '<span class="badge bg-label-info me-1">금</span>';
                            }
                            if (dogClasses.indexOf('6') !== -1) {
                                str += '<span class="badge bg-label-danger me-1">토</span>';
                            }
                            if (dogClasses.indexOf('7') !== -1) {
                                str += '<span class="badge bg-center-rounded-pill bg-danger me-1">일</span>';
                            }

                        } else {
                            str += '<span class="badge bg-label-danger me-1">등록한 수업이 없습니다</span>';
                        }
                        str += '</div><div style="height: inherit; display: flex; justify-content: center ; align-items: center">';
                        str += '<a href="" data-dog-id=' + dogId + ' data-dog-name=' + dogName + ' class="btn-icon bg-delete btn-delete-dog delete-dog"><i class="fa-solid fa-delete-left" style="color: #ff3f3f"></i></a>';
                        str += '<a data-dog-id=' + dogId + ' type="button" data-bs-toggle="modal" data-bs-target="#dogModal" class="btn-edit btn-icon edit-modal"><i class="fa-solid fa-pen"></i></a>'

                        $('#dogs').append(str);


                        //SET MODAL FOR EDIT
                        $(document).on('click', '.edit-modal', function (event) {
                            event.preventDefault();
                            var dogId = $(this).data('dog-id');

                            //SET MODAL TO EDIT
                            modalTitle.text('Edit User Information');

                            frmBtn.off('click');
                            frmBtn.click(function () {
                                frmModal.attr('action', '${contextPath}/user/editDog');
                                frmModal.submit();
                            });
                            frmBtn.text('EDIT');


                            $.ajax({
                                type: 'POST',
                                url: '${contextPath}/user/dogDetail',
                                data: 'dogId=' + dogId,
                                dataType: 'json',
                                success: (resData) => {

                                    modalText.text(resData.dogDetail.name + '의 정보를 수정하세요');

                                    var classes = resData.dogDetail.classes;
                                    let clsArr = new Array();
                                    console.log(classes)

                                    $('#dog-id').val(resData.dogDetail.dogId);
                                    $('#avatar').attr('src', resData.dogDetail.avatar);
                                    $('#avatar').val(resData.dogDetail.avatar);
                                    $('#modalDogName').val(resData.dogDetail.name);
                                    $('#parent1Name').val(resData.dogDetail.parent1Name);
                                    $('#parent2Name').val(resData.dogDetail.parent2Name);
                                    $('#parent1phone').val(resData.dogDetail.parent1Phone);
                                    $('#parent2phone').val(resData.dogDetail.parent2Phone);
                                    $('#birthday').val(resData.dogDetail.birthday);
                                    $('#breed').val(resData.dogDetail.breed);
                                    $('#weight').val(resData.dogDetail.weight);
                                    $('#zonecode').val(resData.zipCode);
                                    $('#address').val(resData.address);
                                    $('#detailAddress').val(resData.detailAddress);
                                    $('#extraAddress').val(resData.extraAddress);

                                    if (classes.indexOf('0') === -1) {
                                        $('#re-class').attr('checked', true);
                                        classInput.style.display = '';
                                        if (classes.indexOf('1') !== -1) {
                                            clsArr.push(1);
                                        }
                                        if (classes.indexOf('2') !== -1) {
                                            clsArr.push(2);
                                        }
                                        if (classes.indexOf('3') !== -1) {
                                            clsArr.push(3);
                                        }
                                        if (classes.indexOf('4') !== -1) {
                                            clsArr.push(4);
                                        }
                                        if (classes.indexOf('5') !== -1) {
                                            clsArr.push(5);
                                        }
                                        if (classes.indexOf('6') !== -1) {
                                            clsArr.push(6);
                                        }
                                        if (classes.indexOf('7') !== -1) {
                                            clsArr.push(7);
                                        }
                                        $('#re-select2Primary').val(clsArr);
                                        $('#re-select2Primary').trigger('change');
                                    }


                                },
                                error: (jqXHR, textStatus, errorThrown) => {
                                    console.error('Error fetching dog detail:', textStatus, errorThrown);
                                    alert(jqXHR.statusText + '(' + jqXHR.status + ')');
                                }
                            });
                        });

                        $(document).on('click','.delete-dog',function(ev){
                            var dogId = $(this).data('dog-id');
                            var dogName = $(this).data('dog-name');

                            let result = confirm("Do you really wanna delete?");

                            if (result) {
                                $(this).parent().parent().parent().parent().parent().get(0).remove();

                                $.ajax({
                                    type: 'POST',
                                    url: '${contextPath}/user/removeDog',
                                    data: 'dogId=' + dogId,
                                    dataType: 'json',
                                    success: (resData) => {
                                        alert(resData.removeResult);
                                    },
                                    error: (jqXHR, textStatus, errorThrown) => {
                                        console.error('Error fetching removing dog:', textStatus, errorThrown);
                                        alert(jqXHR.statusText + '(' + jqXHR.status + ')');
                                    }
                                })
                            }
                            else{
                                return false;
                            }
                        })



                    });
                },
                error: (jqXHR, textStatus, errorThrown) => {
                    console.error('Error fetching dog Detail:', textStatus, errorThrown);
                    alert(jqXHR.statusText + '(' + jqXHR.status + ')');
                }
            });


        }

        document.addEventListener('DOMContentLoaded', function (e) {
            e.preventDefault();
            (function () {
                // const deactivateAcc = document.querySelector('#formAccountDeactivation');

                // Update/reset user image of account page
                const accountUserImage = document.querySelector('.dogAvatar');
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


        const clearModalOnRegisterBtn = () => {

            $('#addDogBtn').click(function () {
                modalTitle.text('Register User')
                frmBtn.off('click');
                frmBtn.click(function () {
                    frmModal.attr('action', '${contextPath}/user/registerDog');
                    frmModal.submit();
                });
                frmBtn.text('Submit');

                $('#avatar').attr('src', "/resources/images/roundStickers/kisses.png");
                $('#avatar').val("/resources/images/roundStickers/kisses.png");
                $('#modalDogName').val('');
                $('#birthday').val('');
                $('#breed').val('');
                $('#weight').val('');

                $('#re-class').attr('checked', false);
                classInput.style.display = 'none';
                $('#re-select2Primary').val(null).trigger('change');
            });
        }

        // const clearForm = () => {
        //     $('#avatar').val("/resources/images/roundStickers/kisses.png");
        //     $('#modalDogName').val('');
        //     $('#birthday').val('');
        //     $('#breed').val('');
        //     $('#weight').val('');
        //
        //     $('#re-class').attr('checked', false);
        //     classInput.style.display = 'none';
        //     $('#re-select2Primary').val(null);
        //     $('#re-select2Primary').trigger('change');
        //
        // }

        const fnGetConfirm = (dogName) => {
            return confirm(dogName + "을/를 지우시겠습니까?");
        }


        const registerDog = (e) => {
            frmBtn.click(function () {
                frmModal.attr('action', '${contextPath}/user/registerDog');
                frmModal.submit();
            });
        }

        clearModalOnRegisterBtn();
        registerDog();
        fnGetDogList();

        <%--var dogId2Delete = 0;--%>
        <%--const dogList = document.getElementById("dogs");--%>
        <%--const dog = document.getElementsByClassName("dog")--%>


        <%--function fnDeleteDog(dogId, dogname) {--%>
        <%--    if (confirm(dogname + '을 지우겠습니까?')) {--%>
        <%--        dogId2Delete = dogId;--%>
        <%--        deleteTarget = event.currentTarget.parentNode.parentNode.parentNode.parentNode;--%>
        <%--        fnDeleteDiv(deleteTarget);--%>
        <%--        fnRemoveDog(dogId2Delete);--%>

        <%--    } else {--%>
        <%--        return;--%>
        <%--    }--%>
        <%--}--%>

        <%--function fnDeleteDiv(deleteTarget) {--%>
        <%--    dogList.removeChild(deleteTarget);--%>

        <%--}--%>

        <%--function fnRemoveDog(dogId) {--%>
        <%--    $.ajax({--%>
        <%--        // 요청--%>
        <%--        type: 'POST',--%>
        <%--        url: '${contextPath}/user/removeDog',--%>
        <%--        data: 'dogId=' + dogId,  // <form> 내부의 모든 입력을 파라미터 형식으로 보낼 때 사용, 입력 요소들은 name 속성을 가지고 있어야 함--%>
        <%--        // 응답--%>
        <%--        dataType: 'json',--%>
        <%--        success: (resData) => {--%>
        <%--            alert(resData.removeResult);--%>
        <%--        },--%>
        <%--        error: (jqXHR) => {--%>
        <%--            alert(jqXHR.statusText + '(' + jqXHR.status + ')');--%>
        <%--        }--%>
        <%--    })--%>
        <%--}--%>

    </script>


    <!-- PAGE JS -->
    <script src="${contextPath}/frontend/assets/js/modal-edit-user.js"></script>
    <script src="${contextPath}/frontend/assets/js/forms-pickers.js"></script>
    <script src="${contextPath}/frontend/assets/js/forms-extras.js"></script>
    <script src="${contextPath}/frontend/assets/js/forms-selects.js"></script>
    <%--    <script src="${contextPath}/frontend/assets/js/forms-tagify.js"></script>--%>
    <%--    <script src="${contextPath}/frontend/assets/js/forms-typeahead.js"></script>--%>"