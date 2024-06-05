<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
                        <h4 class="mb-2">환영합니다 보호자님❣️</h4>
                        <p class="mb-4">곧 회원가입 동의 메일이 도착할거에요!</p>

                        <form id="formAuthentication" class="mb-3" action="user/register" method="POST">
                            <div class="mb-3">

                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#addDog"> 강아지 등록하기
                                </button>

                                <div class="modal fade" id="addDog" tabindex="-1" style="display: none;"
                                     aria-hidden="true">
                                    <div class="modal-dialog modal-lg modal-simple modal-edit-user">
                                        <div class="modal-content p-3 p-md-5">
                                            <div class="modal-body">
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>

                                                <form id="dogInfoForm"
                                                      class="row g-3 fv-plugins-bootstrap5 fv-plugins-framework"
                                                      onsubmit="return false" novalidate="novalidate">
                                                    <!----------------------------------->
                                                    <!----------------------------------->
                                                    <!----------------------------------->
                                                    <!-- Account -->
                                                    <input type="hidden" name="userid" id="hiddenUserId" value="${sessionScope.user.userid}">

                                                    <div class="card-body">
                                                        <!-------------AVATAR-------------->
                                                        <div class="row">
                                                            <div class="text-center mb-4">
                                                                <div class="d-flex align-items-start align-items-sm-center">
                                                                    <div class="col-md-6">
                                                                        <div class="img-container" style="margin-left:-35px">
                                                                            <div class="align-center" >
                                                                                <img
                                                                                        src="${contextPath}/resources/images/roundStickers/kisses.png"
                                                                                        alt="user-avatar"
                                                                                        class="d-block rounded"
                                                                                        style="height:150px"
                                                                                        id="uploadedAvatar"
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
                                                                        <script>
                                                                            document.addEventListener('DOMContentLoaded', function (e) {
                                                                                (function () {
                                                                                    const deactivateAcc = document.querySelector('#formAccountDeactivation');

                                                                                    // Update/reset user image of account page
                                                                                    let accountUserImage = document.getElementById('uploadedAvatar');
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
                                                                            const onFileUpload = () => {
                                                                               let uploadedImg = document.getElementById("files");
                                                                               let image = document.getElementById("uploadedAvatar");
                                                                               console.log("------------------------");
                                                                               console.log("------------------------: "+  $('#files')[0].files[0].innerHTML);
                                                                               console.log("------------------------: "+  $('#files')[0].files[1].innerHTML);
                                                                              // image.src = uploadedImg;
                                                                            }
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
                                                        <!-------------AVATAR-------------->

                                                        <hr class="my-0"/>

                                                        <div class="row">


                                                                <div class="col-12 col-md-4 fv-plugins-icon-container">
                                                                    <label class="form-label" for="parent1Name">보호자1 이름</label>
                                                                    <input type="text" id="parent1Name"
                                                                           name="parent1Name" class="form-control"
                                                                           placeholder="${sessionScope.user.name}">
                                                                </div><div class="col-12 col-md-4 fv-plugins-icon-container">
                                                                <label class="form-label" for="parent2Name">보호자2 이름</label>
                                                                <input type="text" id="parent2Name"
                                                                       name="parent2Name" class="form-control"
                                                                       placeholder="">
                                                            </div>
                                                        </div>
                                                        <div class="mb-3 col-md-4">
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
<%--                                                        <div class="mb-3 col-md-4">--%>
<%--                                                            <label for="name" class="form-label">이름</label>--%>
<%--                                                            <input--%>
<%--                                                                    class="form-control"--%>
<%--                                                                    type="text"--%>
<%--                                                                    id="name"--%>
<%--                                                                    name="name"--%>
<%--                                                                    value="${sessionScope.user.name}"--%>
<%--                                                                    autofocus--%>
<%--                                                            />--%>
<%--                                                        </div>--%>
<%--                                                        <div class="mb-3 col-md-4">--%>
<%--                                                            <label for="name" class="form-label">이름</label>--%>
<%--                                                            <input--%>
<%--                                                                    class="form-control"--%>
<%--                                                                    type="text"--%>
<%--                                                                    id="name"--%>
<%--                                                                    name="name"--%>
<%--                                                                    value="${sessionScope.user.name}"--%>
<%--                                                                    autofocus--%>
<%--                                                            />--%>
<%--                                                        </div>--%>

<%--                                                        <div class="mb-3 col-md-6">--%>
<%--                                                            <label for="username" class="form-label">닉네임</label>--%>
<%--                                                            <input class="form-control" type="text" name="username"--%>
<%--                                                                   id="username" value="${sessionScope.user.username}"/>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="mb-3 col-md-6">--%>
<%--                                                            <label for="email" class="form-label">E-mail</label>--%>
<%--                                                            <input--%>
<%--                                                                    class="form-control"--%>
<%--                                                                    type="text"--%>
<%--                                                                    id="email"--%>
<%--                                                                    name="email"--%>
<%--                                                                    value="${sessionScope.user.email}"--%>
<%--                                                                    placeholder="${sessionScope.user.email}"--%>
<%--                                                            />--%>
<%--                                                        </div>--%>
<%--                                                        <div class="mb-3 col-md-6">--%>
<%--                                                            <label for="center" class="form-label">유치원</label>--%>
<%--                                                            <input--%>
<%--                                                                    type="text"--%>
<%--                                                                    class="form-control"--%>
<%--                                                                    id="center"--%>
<%--                                                                    name="center"--%>
<%--                                                                    value="${sessionScope.user.centerid}"--%>
<%--                                                            />--%>
<%--                                                        </div>--%>
<%--                                                        <div class="mb-3 col-md-6">--%>
<%--                                                            <label class="form-label" for="phoneNo">전화번호</label>--%>
<%--                                                            <div class="input-group input-group-merge">--%>
<%--                                                                <span class="input-group-text">US (+1)</span>--%>
<%--                                                                <input--%>
<%--                                                                        type="text"--%>
<%--                                                                        id="phoneNo"--%>
<%--                                                                        name="phoneNo"--%>
<%--                                                                        class="form-control"--%>
<%--                                                                        placeholder="${sessionScope.user.phoneNo}"--%>
<%--                                                                />--%>
<%--                                                            </div>--%>
<%--                                                            &lt;%&ndash;                                <div class="mb-3 col-md-6">&ndash;%&gt;--%>
<%--                                                            &lt;%&ndash;                                    <label for="address" class="form-label">Address</label>&ndash;%&gt;--%>
<%--                                                            &lt;%&ndash;&lt;%&ndash;                                    <input type="text" class="form-control" id="address" name="address" placeholder="${sessionScope.user.address}" />&ndash;%&gt;&ndash;%&gt;--%>
<%--                                                            &lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--                                                            <div class="mb-3 col-md-6">--%>
<%--                                                                <label for="state" class="form-label">State</label>--%>
<%--                                                                <input class="form-control" type="text" id="state"--%>
<%--                                                                       name="state" placeholder="California"/>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="mb-3 col-md-6">--%>
<%--                                                                <label for="zipCode" class="form-label">Zip Code</label>--%>
<%--                                                                <input--%>
<%--                                                                        type="text"--%>
<%--                                                                        class="form-control"--%>
<%--                                                                        id="zipCode"--%>
<%--                                                                        name="zipCode"--%>
<%--                                                                        placeholder="231465"--%>
<%--                                                                        maxlength="6"--%>
<%--                                                                />--%>
<%--                                                            </div>--%>
<%--                                                            <div class="mb-3 col-md-6">--%>
<%--                                                                <label class="form-label" for="country">Country</label>--%>
<%--                                                                <select id="country" class="select2 form-select">--%>
<%--                                                                    <option value="">Select</option>--%>
<%--                                                                    <option value="Australia">Australia</option>--%>
<%--                                                                    <option value="Bangladesh">Bangladesh</option>--%>
<%--                                                                    <option value="Belarus">Belarus</option>--%>
<%--                                                                    <option value="Brazil">Brazil</option>--%>
<%--                                                                    <option value="Canada">Canada</option>--%>
<%--                                                                    <option value="China">China</option>--%>
<%--                                                                    <option value="France">France</option>--%>
<%--                                                                    <option value="Germany">Germany</option>--%>
<%--                                                                    <option value="India">India</option>--%>
<%--                                                                    <option value="Indonesia">Indonesia</option>--%>
<%--                                                                    <option value="Israel">Israel</option>--%>
<%--                                                                    <option value="Italy">Italy</option>--%>
<%--                                                                    <option value="Japan">Japan</option>--%>
<%--                                                                    <option value="Korea">Korea, Republic of</option>--%>
<%--                                                                    <option value="Mexico">Mexico</option>--%>
<%--                                                                    <option value="Philippines">Philippines</option>--%>
<%--                                                                    <option value="Russia">Russian Federation</option>--%>
<%--                                                                    <option value="South Africa">South Africa</option>--%>
<%--                                                                    <option value="Thailand">Thailand</option>--%>
<%--                                                                    <option value="Turkey">Turkey</option>--%>
<%--                                                                    <option value="Ukraine">Ukraine</option>--%>
<%--                                                                    <option value="United Arab Emirates">United Arab--%>
<%--                                                                        Emirates--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="United Kingdom">United Kingdom--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="United States">United States</option>--%>
<%--                                                                </select>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="mb-3 col-md-6">--%>
<%--                                                                <label for="language"--%>
<%--                                                                       class="form-label">Language</label>--%>
<%--                                                                <select id="language" class="select2 form-select">--%>
<%--                                                                    <option value="">Select Language</option>--%>
<%--                                                                    <option value="en">English</option>--%>
<%--                                                                    <option value="fr">French</option>--%>
<%--                                                                    <option value="de">German</option>--%>
<%--                                                                    <option value="pt">Portuguese</option>--%>
<%--                                                                </select>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="mb-3 col-md-6">--%>
<%--                                                                <label for="timeZones"--%>
<%--                                                                       class="form-label">Timezone</label>--%>
<%--                                                                <select id="timeZones" class="select2 form-select">--%>
<%--                                                                    <option value="">Select Timezone</option>--%>
<%--                                                                    <option value="-12">(GMT-12:00) International Date--%>
<%--                                                                        Line West--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-11">(GMT-11:00) Midway Island,--%>
<%--                                                                        Samoa--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-10">(GMT-10:00) Hawaii</option>--%>
<%--                                                                    <option value="-9">(GMT-09:00) Alaska</option>--%>
<%--                                                                    <option value="-8">(GMT-08:00) Pacific Time (US &--%>
<%--                                                                        Canada)--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-8">(GMT-08:00) Tijuana, Baja--%>
<%--                                                                        California--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-7">(GMT-07:00) Arizona</option>--%>
<%--                                                                    <option value="-7">(GMT-07:00) Chihuahua, La Paz,--%>
<%--                                                                        Mazatlan--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-7">(GMT-07:00) Mountain Time (US &--%>
<%--                                                                        Canada)--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-6">(GMT-06:00) Central America--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-6">(GMT-06:00) Central Time (US &--%>
<%--                                                                        Canada)--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-6">(GMT-06:00) Guadalajara, Mexico--%>
<%--                                                                        City, Monterrey--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-6">(GMT-06:00) Saskatchewan</option>--%>
<%--                                                                    <option value="-5">(GMT-05:00) Bogota, Lima, Quito,--%>
<%--                                                                        Rio Branco--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-5">(GMT-05:00) Eastern Time (US &--%>
<%--                                                                        Canada)--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-5">(GMT-05:00) Indiana (East)--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-4">(GMT-04:00) Atlantic Time--%>
<%--                                                                        (Canada)--%>
<%--                                                                    </option>--%>
<%--                                                                    <option value="-4">(GMT-04:00) Caracas, La Paz--%>
<%--                                                                    </option>--%>
<%--                                                                </select>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="mb-3 col-md-6">--%>
<%--                                                                <label for="currency"--%>
<%--                                                                       class="form-label">Currency</label>--%>
<%--                                                                <select id="currency" class="select2 form-select">--%>
<%--                                                                    <option value="">Select Currency</option>--%>
<%--                                                                    <option value="usd">USD</option>--%>
<%--                                                                    <option value="euro">Euro</option>--%>
<%--                                                                    <option value="pound">Pound</option>--%>
<%--                                                                    <option value="bitcoin">Bitcoin</option>--%>
<%--                                                                </select>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="mt-2">--%>
<%--                                                            <button type="submit" class="btn btn-primary me-2">Save--%>
<%--                                                                changes--%>
<%--                                                            </button>--%>
<%--                                                            <button type="reset" class="btn btn-outline-secondary">--%>
<%--                                                                Cancel--%>
<%--                                                            </button>--%>
<%--                                                        </div>--%>
<%--                                                </form>--%>
<%--                                            </div>--%>
<%--                                            <!-- /Account -->--%>
<%--                                        </div>--%>

<%--                                        <!----------------------------------->--%>
<%--                                        <!----------------------------------->--%>

<%--                                        <div class="col-12 col-md-6 fv-plugins-icon-container">--%>
<%--                                            <label class="form-label" for="modalEditUserFirstName">First--%>
<%--                                                Name</label>--%>
<%--                                            <input type="text" id="modalEditUserFirstName"--%>
<%--                                                   name="modalEditUserFirstName" class="form-control"--%>
<%--                                                   placeholder="John">--%>
<%--                                            <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 col-md-6 fv-plugins-icon-container">--%>
<%--                                            <label class="form-label" for="modalEditUserLastName">Last--%>
<%--                                                Name</label>--%>
<%--                                            <input type="text" id="modalEditUserLastName"--%>
<%--                                                   name="modalEditUserLastName" class="form-control"--%>
<%--                                                   placeholder="Doe">--%>
<%--                                            <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 fv-plugins-icon-container">--%>
<%--                                            <label class="form-label"--%>
<%--                                                   for="modalEditUserName">Username</label>--%>
<%--                                            <input type="text" id="modalEditUserName"--%>
<%--                                                   name="modalEditUserName" class="form-control"--%>
<%--                                                   placeholder="john.doe.007">--%>
<%--                                            <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 col-md-6">--%>
<%--                                            <label class="form-label" for="modalEditUserEmail">Email</label>--%>
<%--                                            <input type="text" id="modalEditUserEmail"--%>
<%--                                                   name="modalEditUserEmail" class="form-control"--%>
<%--                                                   placeholder="example@domain.com">--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 col-md-6">--%>
<%--                                            <label class="form-label"--%>
<%--                                                   for="modalEditUserStatus">Status</label>--%>
<%--                                            <select id="modalEditUserStatus" name="modalEditUserStatus"--%>
<%--                                                    class="form-select" aria-label="Default select example">--%>
<%--                                                <option selected="">Status</option>--%>
<%--                                                <option value="1">Active</option>--%>
<%--                                                <option value="2">Inactive</option>--%>
<%--                                                <option value="3">Suspended</option>--%>
<%--                                            </select>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 col-md-6">--%>
<%--                                            <label class="form-label" for="modalEditTaxID">Tax ID</label>--%>
<%--                                            <input type="text" id="modalEditTaxID" name="modalEditTaxID"--%>
<%--                                                   class="form-control modal-edit-tax-id"--%>
<%--                                                   placeholder="123 456 7890">--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 col-md-6">--%>
<%--                                            <label class="form-label" for="modalEditUserPhone">Phone--%>
<%--                                                Number</label>--%>
<%--                                            <div class="input-group input-group-merge">--%>
<%--                                                <span class="input-group-text">+1</span>--%>
<%--                                                <input type="text" id="modalEditUserPhone"--%>
<%--                                                       name="modalEditUserPhone"--%>
<%--                                                       class="form-control phone-number-mask"--%>
<%--                                                       placeholder="202 555 0111">--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 col-md-6">--%>
<%--                                            <label class="form-label"--%>
<%--                                                   for="modalEditUserLanguage">Language</label>--%>
<%--                                            <div class="position-relative">--%>
<%--                                                <div class="position-relative"><select--%>
<%--                                                        id="modalEditUserLanguage"--%>
<%--                                                        name="modalEditUserLanguage"--%>
<%--                                                        class="select2 form-select select2-hidden-accessible"--%>
<%--                                                        multiple="" tabindex="-1" aria-hidden="true"--%>
<%--                                                        data-select2-id="modalEditUserLanguage">--%>
<%--                                                    <option value="">Select</option>--%>
<%--                                                    <option value="english" selected=""--%>
<%--                                                            data-select2-id="44">English--%>
<%--                                                    </option>--%>
<%--                                                    <option value="spanish">Spanish</option>--%>
<%--                                                    <option value="french">French</option>--%>
<%--                                                    <option value="german">German</option>--%>
<%--                                                    <option value="dutch">Dutch</option>--%>
<%--                                                    <option value="hebrew">Hebrew</option>--%>
<%--                                                    <option value="sanskrit">Sanskrit</option>--%>
<%--                                                    <option value="hindi">Hindi</option>--%>
<%--                                                </select><span--%>
<%--                                                        class="select2 select2-container select2-container--default"--%>
<%--                                                        dir="ltr" data-select2-id="43" style="width: auto;"><span--%>
<%--                                                        class="selection"><span--%>
<%--                                                        class="select2-selection select2-selection--multiple"--%>
<%--                                                        role="combobox" aria-haspopup="true"--%>
<%--                                                        aria-expanded="false" tabindex="-1"--%>
<%--                                                        aria-disabled="false"><ul--%>
<%--                                                        class="select2-selection__rendered"><li--%>
<%--                                                        class="select2-selection__choice" title="English"--%>
<%--                                                        data-select2-id="45"><span--%>
<%--                                                        class="select2-selection__choice__remove"--%>
<%--                                                        role="presentation">×</span>English</li><li--%>
<%--                                                        class="select2-search select2-search--inline"><input--%>
<%--                                                        class="select2-search__field" type="search"--%>
<%--                                                        tabindex="0" autocomplete="off" autocorrect="off"--%>
<%--                                                        autocapitalize="none" spellcheck="false"--%>
<%--                                                        role="searchbox" aria-autocomplete="list"--%>
<%--                                                        placeholder=""--%>
<%--                                                        style="width: 0.75em;"></li></ul></span></span><span--%>
<%--                                                        class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 col-md-6">--%>
<%--                                            <label class="form-label"--%>
<%--                                                   for="modalEditUserCountry">Country</label>--%>
<%--                                            <div class="position-relative">--%>
<%--                                                <div class="position-relative"><select--%>
<%--                                                        id="modalEditUserCountry"--%>
<%--                                                        name="modalEditUserCountry"--%>
<%--                                                        class="select2 form-select select2-hidden-accessible"--%>
<%--                                                        data-allow-clear="true" tabindex="-1"--%>
<%--                                                        aria-hidden="true"--%>
<%--                                                        data-select2-id="modalEditUserCountry">--%>
<%--                                                    <option value="" data-select2-id="72">Select</option>--%>
<%--                                                    <option value="Australia">Australia</option>--%>
<%--                                                    <option value="Bangladesh">Bangladesh</option>--%>
<%--                                                    <option value="Belarus">Belarus</option>--%>
<%--                                                    <option value="Brazil">Brazil</option>--%>
<%--                                                    <option value="Canada">Canada</option>--%>
<%--                                                    <option value="China">China</option>--%>
<%--                                                    <option value="France">France</option>--%>
<%--                                                    <option value="Germany">Germany</option>--%>
<%--                                                    <option value="India">India</option>--%>
<%--                                                    <option value="Indonesia">Indonesia</option>--%>
<%--                                                    <option value="Israel">Israel</option>--%>
<%--                                                    <option value="Italy">Italy</option>--%>
<%--                                                    <option value="Japan">Japan</option>--%>
<%--                                                    <option value="Korea">Korea, Republic of</option>--%>
<%--                                                    <option value="Mexico">Mexico</option>--%>
<%--                                                    <option value="Philippines">Philippines</option>--%>
<%--                                                    <option value="Russia">Russian Federation</option>--%>
<%--                                                    <option value="South Africa">South Africa</option>--%>
<%--                                                    <option value="Thailand">Thailand</option>--%>
<%--                                                    <option value="Turkey">Turkey</option>--%>
<%--                                                    <option value="Ukraine">Ukraine</option>--%>
<%--                                                    <option value="United Arab Emirates">United Arab--%>
<%--                                                        Emirates--%>
<%--                                                    </option>--%>
<%--                                                    <option value="United Kingdom">United Kingdom</option>--%>
<%--                                                    <option value="United States">United States</option>--%>
<%--                                                </select><span--%>
<%--                                                        class="select2 select2-container select2-container--default"--%>
<%--                                                        dir="ltr" data-select2-id="71" style="width: auto;"><span--%>
<%--                                                        class="selection"><span--%>
<%--                                                        class="select2-selection select2-selection--single"--%>
<%--                                                        role="combobox" aria-haspopup="true"--%>
<%--                                                        aria-expanded="false" tabindex="0"--%>
<%--                                                        aria-disabled="false"--%>
<%--                                                        aria-labelledby="select2-modalEditUserCountry-container"><span--%>
<%--                                                        class="select2-selection__rendered"--%>
<%--                                                        id="select2-modalEditUserCountry-container"--%>
<%--                                                        role="textbox" aria-readonly="true"><span--%>
<%--                                                        class="select2-selection__placeholder">Select value</span></span><span--%>
<%--                                                        class="select2-selection__arrow"--%>
<%--                                                        role="presentation"><b--%>
<%--                                                        role="presentation"></b></span></span></span><span--%>
<%--                                                        class="dropdown-wrapper" aria-hidden="true"></span></span>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12">--%>
<%--                                            <label class="switch">--%>
<%--                                                <input type="checkbox" class="switch-input">--%>
<%--                                                <span class="switch-toggle-slider">--%>
<%--                                                                <span class="switch-on"></span>--%>
<%--                                                                <span class="switch-off"></span>--%>
<%--                                                              </span>--%>
<%--                                                <span class="switch-label">Use as a billing address?</span>--%>
<%--                                            </label>--%>
<%--                                        </div>--%>
<%--                                        <div class="col-12 text-center">--%>
<%--                                            <button type="submit" class="btn btn-primary me-sm-3 me-1">--%>
<%--                                                Submit--%>
<%--                                            </button>--%>
<%--                                            <button type="reset" class="btn btn-label-secondary"--%>
<%--                                                    data-bs-dismiss="modal" aria-label="Close">Cancel--%>
<%--                                            </button>--%>
<%--                                        </div>--%>
<%--                                        <input type="hidden">--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <br>--%>
<%--    <br>--%>
<%--    <form id="formDaycare" class="mb-3" action="${contextPath}/admin/classInfo" method="POST">--%>
<%--        <div class="input-container">--%>
<%--            <div class="address-input-group" style="display: inline-flex;">--%>
<%--                <div class="mb-3" style="width: 85%">--%>
<%--                    <input type="text" id="item" class="form-control" placeholder="반 이름을 입력해주세요" class="add">--%>
<%--                </div>--%>
<%--                <div class="mb-3" style="width: 5%"></div>--%>
<%--                <button id="btnAdd" type="button" class="btn btn-icon btn-primary btn-square">--%>
<%--                                        <span class="tf-icons">--%>
<%--                                            <ion-icon name="add"></ion-icon>--%>
<%--                                        </span>--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <ul id="items" class="class-list"></ul>--%>

<%--        <script>--%>
<%--            let itemList = document.getElementById('items');--%>
<%--            let addBtn = document.getElementById("btnAdd")--%>
<%--            let deleteBtn = document.getElementById('items');--%>
<%--            deleteBtn.addEventListener('click', removeItem);--%>
<%--            document.addEventListener('keypress', enterKey)--%>

<%--            // register classes--%>
<%--            addBtn.addEventListener('click', addItem);--%>

<%--            function enterKey(e) {--%>
<%--                if (e.key === "Enter") {--%>
<%--                    e.preventDefault();--%>
<%--                    addItem(e);--%>
<%--                }--%>
<%--            }--%>

<%--            //function add item--%>
<%--            function addItem(e) {--%>
<%--                e.preventDefault();--%>


<%--                // Get input value--%>
<%--                let inputValue = document.getElementById('item').value;--%>
<%--                let mbDiv = document.createElement('div');--%>
<%--                let containerDiv = document.createElement('div');--%>
<%--                mbDiv.className = "mb-3";--%>

<%--                // Create item--%>
<%--                let li = document.createElement('li');--%>

<%--                // add class to li--%>
<%--                li.className = 'form-control class-name-list';--%>

<%--                containerDiv.className = "class-text-container";--%>
<%--                containerDiv.appendChild(document.createTextNode(inputValue));--%>
<%--                // add text to li--%>
<%--                li.appendChild(containerDiv);--%>

<%--                mbDiv.appendChild(li)--%>
<%--                //push item--%>
<%--                itemList.appendChild(mbDiv);--%>

<%--                //create button--%>
<%--                let btnDelete = document.createElement('button');--%>
<%--                btnDelete.className = "btn rounded-pill  btn-primary btn-round btn-delete";--%>
<%--                btnDelete.setAttribute("type", "button");--%>


<%--                // let logo = <ion-icon name='close-circle-outline'></ion-icon>;--%>
<%--                //add Text to botton--%>
<%--                btnDelete.appendChild(document.createTextNode('X'));--%>

<%--                // push button to li--%>
<%--                li.appendChild(btnDelete);--%>
<%--            }--%>

<%--            // function remove item--%>
<%--            function removeItem(e) {--%>
<%--                if (e.target.classList.contains('btn-delete')) {--%>
<%--                    // if (confirm('Are You Sure? ')) {--%>
<%--                    let li = e.target.parentElement;--%>
<%--                    let mbDiv = li.parentElement;--%>
<%--                    itemList.removeChild(mbDiv);--%>
<%--                    e.preventDefault();--%>
<%--                    // }--%>
<%--                }--%>
<%--                // console.log(e.target.parentElement);--%>
<%--            }--%>


<%--        </script>--%>


<%--        <button id="admin-submit" class="btn btn-primary d-grid w-100 btn-signup">유치원 등록하기--%>
<%--        </button>--%>
<%--    </form>--%>

<%--    <script>--%>
<%--        document.getElementById("admin-submit").addEventListener('click', () => {--%>
<%--            document.getElementById("formDaycare").requestSubmit();--%>
<%--        })--%>
<%--    </script>--%>
<%--    <br>--%>


<%--    <div class="d-flex mb-3">--%>
<%--        <div class="flex-grow-1 row">--%>
<%--            <div class="col-9">--%>
<%--                <h6 class="mb-0">등록을 하신 보호자님이신가요?</h6>--%>
<%--                <small class="text-muted">이미 유치원 등록을 하셨다면 선택해주세요</small>--%>
<%--            </div>--%>
<%--            <div class="col-3 text-end">--%>
<%--                <div class="form-check form-switch">--%>
<%--                    <input id="alreadyRegistered" class="form-check-input float-end"--%>
<%--                           type="checkbox" role="switch">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>


<%--    <script>--%>
<%--        document.getElementById("alreadyRegistered").addEventListener('click', () => {--%>

<%--        })--%>


<%--    </script>--%>


<%--    <br>--%>
<%--    <div class="mb-3">--%>
<%--        <label for="dogname" class="form-label">강아지 이름</label>--%>
<%--        <input--%>
<%--                type="text"--%>
<%--                class="form-control"--%>
<%--                id="dogname"--%>
<%--                name="username"--%>
<%--                placeholder="Enter your username"--%>
<%--                autofocus1--%>
<%--        />--%>
<%--    </div>--%>
<%--    <div class="mb-3">--%>
<%--        <label for="email" class="form-label">Email</label>--%>
<%--        <input type="text" class="form-control" id="email" name="email"--%>
<%--               placeholder="Enter your email"/>--%>
<%--    </div>--%>
<%--    <div class="mb-3 form-password-toggle">--%>
<%--        <label class="form-label" for="password">Password</label>--%>
<%--        <div class="input-group input-group-merge">--%>
<%--            <input--%>
<%--                    type="password"--%>
<%--                    id="password"--%>
<%--                    class="form-control"--%>
<%--                    name="password"--%>
<%--                    placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"--%>
<%--                    aria-describedby="password"--%>
<%--            />--%>
<%--            <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div class="mb-3">--%>
<%--        <div class="form-check">--%>
<%--            <input class="form-check-input" type="checkbox" id="terms-conditions" name="terms"/>--%>
<%--            <label class="form-check-label" for="terms-conditions">--%>
<%--                I agree to--%>
<%--                <a href="javascript:void(0);">privacy policy & terms</a>--%>
<%--            </label>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <button class="btn btn-primary d-grid w-100">Sign up</button>--%>
<%--    </form>--%>

<%--    <p class="text-center">--%>
<%--        <span>Already have an account?</span>--%>
<%--        <a href="${contextPath}/pages/login">--%>
<%--            <span>Sign in instead</span>--%>
<%--        </a>--%>
<%--    </p>--%>
<%--</div>--%>
<%--</div>--%>
<%--<!-- Register Card -->--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>

<!-- / Content -->

<!-- / Content -->

<script src="${contextPath}/frontend/assets/js/modal-edit-user.js"></script>

