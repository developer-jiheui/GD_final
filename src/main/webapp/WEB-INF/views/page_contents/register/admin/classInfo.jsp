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
                <div class="card" style="min-width: 500px; min-height: 500px">
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
                        <h4 class="mb-2">반 정보❣️</h4>
                        <p class="mb-4">유치원의 반을 등록해주세요 :)</p>

                        <form id="formDaycare" class="mb-3" action="${contextPath}/admin/classInfo" method="POST">
                            <div class="input-container">
                                <div class="address-input-group" style="display: inline-flex;">
                                    <div class="mb-3" style="width: 85%">
                                        <input type="text" id="item" class="form-control" placeholder="반 이름을 입력해주세요" class="add">
                                    </div>
                                    <div class="mb-3" style="width: 5%"></div>
                                    <button id="btnAdd" type="button" class="btn btn-icon btn-primary btn-square" >
                                        <span class="tf-icons">
                                            <ion-icon name="add"></ion-icon>
                                        </span>
                                    </button>
                                </div>
                            </div>
                            <ul id="items" class="class-list"></ul>

                            <script>
                                let itemList = document.getElementById('items');
                                let addBtn = document.getElementById("btnAdd")
                                let deleteBtn = document.getElementById('items');
                                deleteBtn.addEventListener('click', removeItem);
                                document.addEventListener('keypress', enterKey)

                                // register classes
                                addBtn.addEventListener('click', addItem);

                                function enterKey(e){
                                    if(e.key === "Enter"){
                                        e.preventDefault();
                                        addItem(e);
                                    }
                                }

                                //function add item
                                function addItem(e){
                                    e.preventDefault();


                                    // Get input value
                                    let inputValue = document.getElementById('item').value;
                                    let mbDiv = document.createElement('div');
                                    let containerDiv = document.createElement('div');
                                    mbDiv.className ="mb-3";

                                    // Create item
                                    let li = document.createElement('li');

                                    // add class to li
                                    li.className = 'form-control class-name-list';

                                    containerDiv.className ="class-text-container";
                                    containerDiv.nodeName="className"
                                    containerDiv.appendChild(document.createTextNode(inputValue));
                                    // add text to li
                                    li.appendChild(containerDiv);

                                    mbDiv.appendChild(li)
                                    //push item
                                    itemList.appendChild(mbDiv);

                                    //create button
                                    let btnDelete = document.createElement('button');
                                    btnDelete.className = "btn rounded-pill  btn-primary btn-round btn-delete";
                                    btnDelete.setAttribute("type","button");



                                    // let logo = <ion-icon name='close-circle-outline'></ion-icon>;
                                    //add Text to botton
                                    btnDelete.appendChild(document.createTextNode('X'));

                                    // push button to li
                                    li.appendChild(btnDelete);
                                }

                                // function remove item
                                function removeItem(e) {
                                    if (e.target.classList.contains('btn-delete')) {
                                        // if (confirm('Are You Sure? ')) {
                                        let li = e.target.parentElement;
                                        let mbDiv = li.parentElement;
                                        itemList.removeChild(mbDiv);
                                        e.preventDefault();
                                        // }
                                    }
                                    // console.log(e.target.parentElement);
                                }


                            </script>



                            <button id="admin-submit" class="btn btn-primary d-grid w-100 btn-signup">유치원 등록하기
                            </button>
                        </form>

                        <script>
                            document.getElementById("admin-submit").addEventListener('click', () => {
                                document.getElementById("formDaycare").requestSubmit();
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


