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
                                    colspan="1" style="width:150px;"
                                    aria-label="Plan: activate to sort column ascending">반
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

                                    <td><span class="fw-medium">강아지 또는 선생님 반정보</span></td>
                                    <td>
                                        <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                            <c:if test="${user.dogNo>0}">
                                                <c:forEach items="${user.doglist}" var="dog" varStatus="vs">
                                                    <script>
                                                        console.log("${dog}");
                                                    </script>
                                                    <li
                                                            data-bs-toggle="tooltip"
                                                            data-popup="tooltip-custom"
                                                            data-bs-placement="top"
                                                            class="avatar avatar-xs pull-up"
                                                            title="${dog.name}"
                                                            onclick="fnDogDetail(${dog.dogId})"
                                                    >
                                                        <img src="${contextPath}${dog.avatar}" alt="Avatar"
                                                             class="rounded-circle"/>
                                                    </li>
                                                </c:forEach>
                                            </c:if>


<%--                                            <li--%>
<%--                                                    data-bs-toggle="tooltip"--%>
<%--                                                    data-popup="tooltip-custom"--%>
<%--                                                    data-bs-placement="top"--%>
<%--                                                    class="avatar avatar-xs pull-up"--%>
<%--                                                    title="Sophia Wilkerson"--%>
<%--                                            >--%>
<%--                                                <img src="../assets/img/avatars/6.png" alt="Avatar"--%>
<%--                                                     class="rounded-circle"/>--%>
<%--                                            </li>--%>
<%--                                            <li--%>
<%--                                                    data-bs-toggle="tooltip"--%>
<%--                                                    data-popup="tooltip-custom"--%>
<%--                                                    data-bs-placement="top"--%>
<%--                                                    class="avatar avatar-xs pull-up"--%>
<%--                                                    title="Christina Parker"--%>
<%--                                            >--%>
<%--                                                <img src="../assets/img/avatars/7.png" alt="Avatar"--%>
<%--                                                     class="rounded-circle"/>--%>
<%--                                            </li>--%>
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

                <script>
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

                    const fnClickPage=()=>{
                        $('.page-link').addEventListener('click',(e)=>{
                            alert(e.target.value);
                        })
                        $('.page-item')
                    }

                    const fnDogDetail =(dogId)=>{
                        location.href = "${contextPath}/user/dogDetail?dogId="+dogId;
                    }

                    fnDisplay();
                    fnSort();
                    fnClickPage();
                </script>
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


        </div>
        <!-- / Content -->