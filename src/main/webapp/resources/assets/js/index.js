
const fnAjaxFileUpload = (url, method, sendData,  callback) => {

    $.ajax({
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false,
        type: method,
        url: url,
        data: sendData,
        dataType: 'json',
        success: (resData) => callback(resData),
        error: (jqXHR) => {
            alert(jqXHR.statusText + '(' + jqXHR.status + ')');
        }
    });
}

// 이메일 입력 검증
const checkRegEmail = (email) => {
    let regEmail = /^[A-Za-z0-9-_]{2,}@[A-Za-z0-9]+(\.[A-Za-z]{2,6}){1,2}$/;

    if(!regEmail.test(email)) return false;
    return true;
}

// 자바스크립트로 POST
const sendFormData = (datas, url) => {

    const form = document.createElement('form'); // form 태그 생성
    form.setAttribute('method', 'post'); // 전송 방식 결정 (get or post)
    form.setAttribute('action', url); // 전송할 url 지정

    //alert(Object.keys(datas).length);
    for(let i = 0; i < Object.keys(datas).length; i++) {
        let data = document.createElement('input');
        data.setAttribute('type', 'hidden'); // type = hidden
        data.setAttribute('name', Object.keys(datas)[ i ]); // 데이터의 key
        data.setAttribute('value', Object.values(datas)[ i ]); // 데이터의 value (여기서는 data1)

        form.appendChild(data);
    }

    document.body.appendChild(form);

    form.submit();
}

