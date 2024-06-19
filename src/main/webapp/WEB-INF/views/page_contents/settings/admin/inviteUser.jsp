<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>
<!-- Content wrapper -->
<div class="content-wrapper">


    <div class="container-xxl d-flex align-items-stretch flex-grow-1 p-0">


        <div class="flex-shrink-1 flex-grow-1 container-p-x container-p-y">


            <div class="row g-4 mb-4">
                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-start justify-content-between">
                                <div class="content-left">
                                    <span>원장 선생님</span>
                                    <div class="d-flex align-items-end mt-2">
                                        <h4 class="mb-0 me-2">2명</h4>
                                        <small class="text-success">(1명)</small>
                                    </div>
                                    <p class="mb-0">총 원장선생님</p>
                                </div>
                                <div class="avatar">
            <span class="avatar-initial rounded bg-label-primary">
              <i class="bx bx-user bx-sm"></i>
            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-start justify-content-between">
                                <div class="content-left">
                                    <span>선생님</span>
                                    <div class="d-flex align-items-end mt-2">
                                        <h4 class="mb-0 me-2">4명</h4>
                                        <small class="text-success">(2명)</small>
                                    </div>
                                    <p class="mb-0">총 선생님수</p>
                                </div>
                                <div class="avatar">
            <span class="avatar-initial rounded bg-label-danger">
              <i class="bx bx-user-check bx-sm"></i>
            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-start justify-content-between">
                                <div class="content-left">
                                    <span>현재 원생</span>
                                    <div class="d-flex align-items-end mt-2">
                                        <h4 class="mb-0 me-2">58</h4>
                                        <small class="text-danger">(-1%)</small>
                                    </div>
                                    <p class="mb-0">이번달 실적</p>
                                </div>
                                <div class="avatar">
            <span class="avatar-initial rounded bg-label-success">
              <i class="bx bx-group bx-sm"></i>
            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-3">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-start justify-content-between">
                                <div class="content-left">
                                    <span>초대된 사용자들</span>
                                    <div class="d-flex align-items-end mt-2">
                                        <h4 class="mb-0 me-2">23</h4>
                                        <small class="text-success">(+42%)</small>
                                    </div>
                                    <p class="mb-0">전달 실적</p>
                                </div>
                                <div class="avatar">
            <span class="avatar-initial rounded bg-label-warning">
              <i class="bx bx-user-voice bx-sm"></i>
            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Users List Table -->
            <div class="card">
                <!--------SEARCH FILTER------>
                <div class="card-header border-bottom">
                    <h5 class="card-title">Search Filter</h5>
                    <div class="d-flex justify-content-between align-items-center row py-3 gap-3 gap-md-0">
                        <div class="col-md-4 user_role"><select id="UserRole" class="form-select text-capitalize">
                            <option value="">역할을 선택하세요</option>
                            <option value="Admin">원장</option>
                            <option value="Author">선생님</option>
                            <option value="Editor">원생</option>
                        </select></div>
                        <div class="col-md-4 user_plan"><select id="UserPlan" class="form-select text-capitalize">
                            <option value="">반 종류 선택</option>
                            <option value="Basic">종일반</option>
                            <option value="Company">데이케어</option>
                            <option value="Enterprise">호텔링</option>
                        </select></div>
                        <div class="col-md-4 user_status"><select id="FilterTransaction"
                                                                  class="form-select text-capitalize">
                            <option value="">초대 상태</option>
                            <option value="Pending" class="text-capitalize">초대됨</option>
                            <option value="Active" class="text-capitalize">승인완료</option>
                            <option value="Inactive" class="text-capitalize">초대 필요</option>
                        </select></div>
                    </div>
                </div>

                <!------------------SORT----------------->
                <div class="card-datatable table-responsive">
                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap5 no-footer">
                        <div class="row mx-2">
                            <div class="col-md-2">
                                <div class="me-3">
                                    <div class="dataTables_length" id="DataTables_Table_0_length">
                                        <label>
                                            <select id="display" name="display" aria-controls="DataTables_Table_0"
                                                    class="form-select">
                                                <option value="5">5</option>
                                                <option value="15">15</option>
                                                <option value="30">30</option>
                                                <option value="50">50</option>
                                            </select>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-10">
                                <div class="dt-action-buttons text-xl-end text-lg-start text-md-end text-start d-flex align-items-center justify-content-end flex-md-row flex-column mb-3 mb-md-0">
                                    <div id="DataTables_Table_0_filter" class="dataTables_filter"><label><input
                                            type="search" class="form-control" placeholder="Search.."
                                            aria-controls="DataTables_Table_0"></label></div>
                                    <div class="dt-buttons btn-group flex-wrap">
                                        <div class="btn-group">
                                            <button class="btn buttons-collection dropdown-toggle btn-label-secondary mx-3"
                                                    tabindex="0" aria-controls="DataTables_Table_0" type="button"
                                                    aria-haspopup="dialog" aria-expanded="false"><span><i
                                                    class="bx bx-export me-1"></i>다운받기</span></button>
                                        </div>
                                        <button class="btn btn-secondary add-new btn-primary" tabindex="0"
                                                aria-controls="DataTables_Table_0" type="button"
                                                data-bs-toggle="offcanvas"
                                                data-bs-target="#offcanvasInviteUser"><span><i
                                                class="bx bx-plus me-0 me-sm-1"></i><span
                                                class="d-none d-sm-inline-block">사용자 초대하기</span></span></button>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-------------USER TABLE-------->
                        <table class="datatables-users table border-top dataTable no-footer dtr-column"
                               id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info"
                               style="width: 1031px;">
                            <thead>
                            <tr>
                                <th class="control sorting_disabled dtr-hidden" rowspan="1" colspan="1"
                                    style="width: 0px; display: none;" aria-label=""></th>
                                <th class="" tabindex="0" aria-controls="DataTables_Table_0"
                                    rowspan="1" colspan="1" style="width: 249px;"
                                    aria-label="User" aria-sort="descending">이용자
                                </th>
                                <th class="sorting_disabled" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1"
                                    colspan="1" style="width: 119px;"
                                    aria-label="Role: activate to sort column ascending">역할
                                </th>
                                <th class="sorting_disabled" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1"
                                    colspan="1" style="width: 119px;"
                                    aria-label="Role: activate to sort column ascending">닉네임
                                </th>
                                <th class="sorting_disabled" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1"
                                    colspan="1" style="width:  76px;"
                                    aria-label="Billing: activate to sort column ascending">원생
                                </th>
                                <th class="sorting sorting_desc" tabindex="0" aria-controls="DataTables_Table_0"
                                    rowspan="1"
                                    colspan="1" style="width: 73px;"
                                    aria-label="Status: activate to sort column ascending">상태
                                </th>
                                <th class="sorting_disabled" rowspan="1" colspan="1" style="width: 98px;"
                                    aria-label="Actions">Actions
                                </th>
                            </tr>
                            </thead>


                            <tbody>
                            <c:forEach items="${userList}" var="user" varStatus="vs">
                                <tr class=>
                                    <td class="  control" tabindex="0" style="display: none;"></td>
                                    <td class="sorting_1">
                                        <div class="d-flex justify-content-start align-items-center user-name">
                                            <div class="avatar-wrapper">
                                                <div class="avatar avatar-sm me-3"><img
                                                        src="${contextPath}${user.avatar}"
                                                        alt="Avatar" class="rounded-circle">
                                                </div>
                                            </div>
                                                <%-- @TODO USER DETAIL PAGE--%>
                                            <div class="d-flex flex-column">
                                                <a href="#" class="text-body text-truncate"><span
                                                        class="fw-medium">${user.name}</span></a><small
                                                    class="text-muted">${user.email}</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <c:set var="role" value="${user.userType}"/>
                                        <span class="text-truncate d-flex align-items-center">
                                            <c:if test="${role==-1}">
                                                미정
                                            </c:if>
                                            <c:if test="${role==0}">
                                                원장님
                                            </c:if>
                                            <c:if test="${role==1}">
                                                선생님
                                            </c:if>
                                            <c:if test="${role==2}">
                                                보호자님
                                            </c:if>
                                        </span>
                                    </td>
                                    <td>
                                        <span class="text-truncate d-flex align-items-center">
<%--                                           <span class="badge badge-center rounded-pill bg-label-primary w-px-30 h-px-30 me-2">--%>
<%--                                               <i class="bx bx-user bx-xs"></i>--%>
<%--                                           </span>--%>
                                            ${user.username}
                                        </span>
                                    </td>

                                    <td>
                                        <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                            <c:if test="${user.dogNo>0}">
                                                <c:forEach items="${user.doglist}" var="dog" varStatus="vs">
                                                    <script>
                                                        console.log("${dog}");
                                                    </script>
                                                    <li
                                                            data-popup="tooltip-custom"
                                                            data-bs-placement="top"
                                                            class="avatar avatar-md pull-up dogDetail"
                                                            title="${dog.name}"
                                                            data-bs-toggle="modal"
                                                            data-bs-target="#dogModal"
                                                            data-dog-id="${dog.dogId}"

                                                    >
                                                        <img src="${contextPath}${dog.avatar}" alt="Avatar"
                                                             class="rounded-circle"/>
                                                    </li>
                                                </c:forEach>
                                            </c:if>



                                        </ul>
                                    </td>
                                    <td><span class="badge bg-label-success">${user.inviteid}</span></td>
                                    <td>
                                        <div class="d-inline-block text-nowrap">
                                            <button class="btn btn-sm btn-icon"><i class="bx bx-edit"></i></button>
                                            <button class="btn btn-sm btn-icon delete-record"><i
                                                    class="bx bx-trash"></i>
                                            </button>
                                            <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow"
                                                    data-bs-toggle="dropdown"><i
                                                    class="bx bx-dots-vertical-rounded me-2"></i></button>
                                            <div class="dropdown-menu dropdown-menu-end m-0"><a
                                                    href="app-user-view-account.html" class="dropdown-item">View</a><a
                                                    href="javascript:" class="dropdown-item">Suspend</a></div>
                                        </div>
                                    </td>
                                </tr>

                            </c:forEach>

                            </tbody>
                        </table>
                        <div class="row mx-2">
                            <div class="col-sm-12 col-md-6">
                                <div class="dataTables_info" id="DataTables_Table_0_info" role="status"
                                     aria-live="polite">Showing 1 to 10 of 50 entries
                                </div>
                            </div>
                            <!-----PAGE------->
                            <div class="col-sm-12 col-md-6">
                                <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                                    <ul class="pagination">
                                        <c:set var="beginPage" value="${beginPage}"/>
                                        <c:set var="endPage" value="${endPage}"/>
                                        <c:set var="totalPage" value="${totalPage}"/>
                                        <c:set var="prevPage" value="${page-1}"/>
                                        <c:set var="page" value="${page}"/>

                                        <li id="DataTables_Table_0_previous"
                                            class="paginate_button page-item previous">
                                            <a aria-controls="DataTables_Table_0"
                                                    <c:if test="${page!=1}">
                                                        href="${contextPath}/admin/settings/inviteAdmin?page=${prevPage}&sort=${sortBy}&sortBy=${sortBy}&display=${display}"

                                                    </c:if>
                                                    <c:if test="${page==1}">
                                                        href="${contextPath}/admin/settings/inviteAdmin?page=1&sort=${sortBy}&sortBy=${sortBy}&display=${display}"
                                                    </c:if>
                                               aria-disabled="false" role="link"
                                               data-dt-idx="previous" tabindex="-1"
                                               class="page-link">Previous</a>
                                        </li>

                                        <c:forEach items="${sessionScope.pageLinkList}" var="link" varStatus="vs">
                                            <c:set var="currPage" value="${vs.count}"/>
                                            <li class="paginate_button page-item">
                                                <a href="${link}" aria-controls="DataTables_Table_0"
                                                   role="link" aria-current="page"
                                                   data-dt-idx="${vs.index}" tabindex="0}"
                                                   class="page-link"
                                                        <c:if test="${page==currPage}">
                                                            class="page-link active"
                                                        </c:if>
                                                        <c:if test="${vs.count>endPage}">
                                                            style="display: none"
                                                        </c:if>
                                                >${vs.count}</a>
                                            </li>

                                            <%--                                        @TODO CHANGE THE ACTIVE STATUS FOR PAGE LINKS--%>
                                        </c:forEach>

                                        <c:set var="nextPage" value="${page+1}"/>
                                        <li class="paginate_button page-item next" id="DataTables_Table_0_next"><a

                                                <c:if test="${page}!=${totalPage}">
                                                    href="${contextPath}/admin/settings/inviteAdmin?page=${nextPage}&sort=${sortBy}&sortBy=${sortBy}&display=${display}" aria-controls="DataTables_Table_0" role="link"
                                                </c:if>
                                                <c:if test="${page}==${totalPage}">
                                                    href="${contextPath}/admin/settings/inviteAdmin?page=${totalPage}&sort=${sortBy}&sortBy=${sortBy}&display=${display}" aria-controls="DataTables_Table_0" role="link"
                                                </c:if>
                                                data-dt-idx="next" tabindex="0" class="page-link">Next</a></li>
                                    </ul>
                                    <script>

                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Offcanvas to add new user -->
                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasInviteUser"
                     aria-labelledby="offcanvasInviteUserLabel">
                    <div class="offcanvas-header">
                        <h5 id="offcanvasInviteUserLabel" class="offcanvas-title">사용자 초대하기</h5>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                                aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body mx-0 flex-grow-0">
                        <form class="add-new-user pt-0 fv-plugins-bootstrap5 fv-plugins-framework" id="addNewUserForm"
                              onsubmit="return false" novalidate="novalidate">
                            <div class="mb-3 fv-plugins-icon-container">
                                <label class="form-label" for="add-user-fullname">이름</label>
                                <input type="text" class="form-control" id="add-user-fullname" placeholder="초대할 이용자 이름"
                                       name="userFullname" aria-label="userFullname">
                                <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>
                            </div>
                            <div class="mb-3 fv-plugins-icon-container">
                                <label class="form-label" for="add-user-email">Email</label>
                                <input type="text" id="add-user-email" class="form-control"
                                       placeholder="email@naver.com" aria-label="email@naver.com"
                                       name="userEmail">
                                <div class="fv-plugins-message-container fv-plugins-message-container--enabled invalid-feedback"></div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="add-user-contact">Contact</label>
                                <input type="text" id="add-user-contact" class="form-control phone-mask"
                                       placeholder="01012345678" aria-label="01012345678"
                                       name="userContact">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="add-user-center">유치원</label>
                                <input type="text" id="add-user-center" class="form-control"
                                       value="${sessionScope.user.center.name}" aria-label="centerName"
                                       name="centerName">
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="user-role">User Role</label>
                                <select id="user-role" class="form-select">
                                    <option value="subscriber">원장님</option>
                                    <option value="editor">선생님</option>
                                    <option value="maintainer">보호자님</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label" for="country">반</label>
                                <div class="position-relative"><select id="country"
                                                                       class="select2 form-select select2-hidden-accessible"
                                                                       data-select2-id="country" tabindex="-1"
                                                                       aria-hidden="true">
                                    <option value="" data-select2-id="2">Select</option>
                                    <option value="Australia">Australia</option>
                                    <option value="Bangladesh">Bangladesh</option>
                                    <option value="Belarus">Belarus</option>
                                    <option value="Brazil">Brazil</option>
                                    <option value="Canada">Canada</option>
                                    <option value="China">China</option>
                                    <option value="France">France</option>
                                    <option value="Germany">Germany</option>
                                    <option value="India">India</option>
                                    <option value="Indonesia">Indonesia</option>
                                    <option value="Israel">Israel</option>
                                    <option value="Italy">Italy</option>
                                    <option value="Japan">Japan</option>
                                    <option value="Korea">Korea, Republic of</option>
                                    <option value="Mexico">Mexico</option>
                                    <option value="Philippines">Philippines</option>
                                    <option value="Russia">Russian Federation</option>
                                    <option value="South Africa">South Africa</option>
                                    <option value="Thailand">Thailand</option>
                                    <option value="Turkey">Turkey</option>
                                    <option value="Ukraine">Ukraine</option>
                                    <option value="United Arab Emirates">United Arab Emirates</option>
                                    <option value="United Kingdom">United Kingdom</option>
                                    <option value="United States">United States</option>
                                </select><span class="select2 select2-container select2-container--default" dir="ltr"
                                               data-select2-id="1" style="width: 352px;"><span class="selection"><span
                                        class="select2-selection select2-selection--single" role="combobox"
                                        aria-haspopup="true" aria-expanded="false" tabindex="0" aria-disabled="false"
                                        aria-labelledby="select2-country-container"><span
                                        class="select2-selection__rendered" id="select2-country-container"
                                        role="textbox" aria-readonly="true"><span
                                        class="select2-selection__placeholder">Select Country</span></span><span
                                        class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span
                                        class="dropdown-wrapper" aria-hidden="true"></span></span></div>
                            </div>

                            <button type="submit" class="btn btn-primary me-sm-3 me-1 data-submit">Submit</button>
                            <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="offcanvas">Cancel
                            </button>
                            <input type="hidden"></form>
                    </div>
                </div>
            </div>


            <!-- / Content -->


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
                                <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
                                <div id="re-classInput" class="" data-select2-id="46" style="display: none">

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
                                    <input type="hidden" name="classes" value="2,3"></div>
                                <div class="col-12 text-center">
                                    <button type="button" id="modalBtn" class="btn btn-primary me-sm-3 me-1 modal-submit-btn">
                                        Submit
                                    </button>
                                    <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="modal"
                                            aria-label="Close">Cancel
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ ADD DOG Modal -->

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
                                str += '<a href="" data-dog-id=' + dogId + ' data-dog-name=' + dogName + ' class="btn-icon bg-delete delete-dog"><i class="fa-solid fa-delete-left" style="color: #ff3f3f"></i></a>';
                                str += '<a data-dog-id=' + dogId + ' type="button" data-bs-toggle="modal" data-bs-target="#dogModal" class="btn-edit btn-icon edit-modal"><i class="fa-solid fa-pen"></i></a>'

                                $('#dogs').append(str);




                            });
                        },
                        error: (jqXHR, textStatus, errorThrown) => {
                            console.error('Error fetching dog Detail:', textStatus, errorThrown);
                            alert(jqXHR.statusText + '(' + jqXHR.status + ')');
                        }
                    });


                }


                //SET MODAL FOR EDIT, EDIT DOG
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

                //DELETE DOG
                $(document).on('click','.delete-dog',function(ev){
                    var dogId = $(this).data('dog-id');
                    var dogName = $(this).data('dog-name');

                    let result = confirm(dogName+": 정말 지우시겠습니까?");

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


                //USER IMAGE CHANGE
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


            const fnDisplay = () => {
                document.getElementById('display').value = '${display}';
                document.getElementById('display').addEventListener('change', (evt) => {
                    location.href = '${contextPath}/admin/settings/inviteUser?page=1&sort=${sort}&sortBy=${sortBy}&display=' + evt.target.value;
                })
            }

            const fnSort = () => {
                $(':radio[value=${sort}]').prop('checked', true);
                $(':radio').on('click', (evt) => {
                    location.href = '${contextPath}/admin/settings/inviteUser?page=${page}&sort=' + evt.target.value + '&sortBy=${sortBy}&display=${display}';
                })
            }
            const fnNextPage=()=>{

            }

            fnDogDetail();
            fnDisplay();
            fnSort();



        </script>
