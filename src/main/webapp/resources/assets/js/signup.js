var emailCheck = false;
var passwordCheck = false;
var passwordConfirm = false;
var nameCheck = false;
var mobileCheck = false;
var agreeCheck = false;

let currTabNo = 0;
let nextTabNo = 0;
let beforeTabNo = 0;
let inpEmail;

let userName;
let pw;
let mobile;
let uName;

const nextButtons = Object.values(document.getElementsByClassName('btn-next'));
nextButtons.forEach(nextButton => {
    nextButton.disabled = true;
    nextButton.addEventListener('click', (e) => {
        currTabNo = parseInt(e.target.parentElement.parentElement.id.slice(-1));
        nextTabNo = currTabNo + 1;
        fnNext()
    })
})

const beforeButtons = Object.values(document.getElementsByClassName('btn-before'));
beforeButtons.forEach(beforeButton => {
    beforeButton.addEventListener('click', (e) => {
        e.preventDefault();
        fnBefore();
    })
})

function fnNext() {
    document.getElementById("nav-tab" + currTabNo).className = "nav-link nav-btn";
    document.getElementById('nav-tab' + nextTabNo).className = "nav-link nav-btn active";
    document.getElementById('tab' + currTabNo).className = "tab-pane fade";
    document.getElementById('tab' + nextTabNo).className = "tab-pane fade show active";
    beforeTabNo = currTabNo;
    currTabNo = nextTabNo;
    nextTabNo++;

}

function fnBefore(e) {
    document.getElementById("nav-tab" + currTabNo).className = "nav-link nav-btn";
    document.getElementById('nav-tab' + beforeTabNo).className = "nav-link nav-btn active";
    document.getElementById('tab' + currTabNo).className = "tab-pane fade";
    document.getElementById('tab' + beforeTabNo).className = "tab-pane fade show active";

    beforeTabNo--;
    currTabNo--;
    nextTabNo--;
}


//-------------------------------------------TAB1--------------------------------------------------//

const btn1 = document.getElementById('btn1');
btn1.disabled = false;
// btn1.addEventListener('click', () => {
// })

function firstValidation() {

}

//-------------------------------------------TAB 2-----------------------------------------------//

const btn2 = document.getElementById('btn2');
btn2.addEventListener('click', (e) => {
    btn2.disabled = true;
    fetch('/user/sendCode.do', {
        method: 'POST', headers: {
            'Content-Type': 'application/json'
        }, body: JSON.stringify({
            'email': inpEmail.value
        })
    })
        .then(response => response.json())

        .then(resData => {
            //-------------------------------------------TAB 3-----------------------------------------------//
            let inpEmailPrint = document.getElementById('inpEmailPrint');
            inpEmailPrint.innerHTML += inpEmail.value;
            let inpCode = document.getElementById('code');
            let btnVerifyCode = document.getElementById('btn-code');
            inpCode.disabled = false;
            btnVerifyCode.disabled = false;
            btnVerifyCode.addEventListener('click', (evt) => {
                if (resData.code === inpCode.value) {
                    alert('인증되었습니다.');
                    document.getElementById('btn3').disabled = false;

                } else {
                    alert('인증되지 않았습니다.');
                }
            })
        })
})

const fnActiveBtn2 = () => {
    console.log("102: ", nameCheck, mobileCheck, emailCheck);
    if (fnCheckName() && fnCheckMobile() && fnCheckEmail()) {
        btn2.disabled = false;
    }
}
//-----------------------------------------------TAB 4----------------------------------------------//
const btn4 = document.getElementById('btn-register-user');
btn4.disabled = true;
btn4.addEventListener('click', (e) => {
    fetch('/user/signup.do', {
        method: 'POST', headers: {
            'Content-Type': 'application/json'
        }, body: JSON.stringify({
            'name': uName, 'email': inpEmail.value, 'phone': mobile, 'username': userName.value, 'pw': pw
        })
    }).then(response=> response.json())
        .then(resData=>{
            if(resData.insertCount === 1) {
                alert('화원가입이 되었습니다');
                location.href ="/pages/userType";
            } else {
                alert('회원가입이 실패했습니다.');
                location.href ="/pages/register";
            }
        })


})

const fnActiveBtn4 = () => {
    console.log("72: ", passwordCheck, passwordConfirm);
    if (fnCheckPassword() && fnConfirmPassword()) {
        btn4.disabled = false;
    }
}
//-------------------------------------------SIGN UP--------------------------------------------------//

const fnSignup = (e) => {
    // let inpName;
    // let inpMobile;
    // let inpEmail;
    // do {
    //     inpName = document.getElementById('name');
    //     inpMobile = document.getElementById('phone');
    //     inpEmail = document.getElementById('email');
    //     fnCheckName(inpName);
    //     fnCheckMobile(inpMobile);
    //     fnCheckEmail(inpEmail);


    //}while(fnCheckName(inpName)&&fnCheckMobile(inpMobile)&&fnCheckEmail(inpEmail)!== true)


}

const fnCheckName = () => {
    let inpName = document.getElementById('name');
    let userNameByte = fnGetByte(inpName.value);
    let msgName = document.getElementById('msg-name');

    if (userNameByte >= 100) {
        msgName.innerHTML = '이름은 100 바이트를 초과할 수 없습니다.';
    } else if (userNameByte === 0) {
        msgName.innerHTML = '이름을 비울 수 없습니다';
    } else {
        nameCheck = true;
        uName = inpName.value;
        msgName.innerHTML = '';
    }
    return nameCheck;
}

const fnCheckMobile = () => {
    let inpMobile = document.getElementById('phone');
    mobile = inpMobile.value;
    mobile = mobile.replaceAll(/[^0-9]/g, '');
    mobileCheck = /^010[0-9]{8}$/.test(mobile);
    let msgMobile = document.getElementById('msg-phoneNum');
    if (mobileCheck) {
        msgMobile.innerHTML = '';
    } else {
        msgMobile.innerHTML = '휴대전화 번호를 확인하세요.';
    }
    return mobileCheck;
}

const fnCheckEmail = () => {

    inpEmail = document.getElementById('email');
    let regEmail = /^[A-Za-z0-9-_]{2,}@[A-Za-z0-9]+(\.[A-Za-z]{2,6}){1,2}$/;
    let msgEmail = document.getElementById('msg-email');
    if (!regEmail.test(inpEmail.value)) {
        msgEmail.innerHTML = '이메일 형식이 올바르지 않습니다.';
        emailCheck = false;
        return;
    }

    fetch('/user/checkEmail.do', {
        method: 'POST', headers: {
            'Content-Type': 'application/json'
        }, body: JSON.stringify({
            'email': inpEmail.value
        })
    })
        .then(response => response.json())  // .then( (response) => { return response.json(); } )
        .then(resData => {
            if (resData.enableEmail) {
                document.getElementById('msg-email').innerHTML = '사용가능한 이메일입니다';
                emailCheck = true;
                return emailCheck;
            } else {
                document.getElementById('msg-email').innerHTML = '이미 사용 중인 이메일입니다.';
                emailCheck = false;
                return emailCheck;
            }
        })

    return emailCheck;
}

const fnCheckUserName = () => {
    userName = document.getElementById('username');
    fetch('/user/checkUserName.do', {
        method: 'POST', headers: {
            'Content-Type': 'application/json'
        }, body: JSON.stringify({
            'username': userName.value
        })
    })
        .then(response => response.json())  //
        .then(resData => {
            msgUserName = document.getElementById('msg-username');
            if (resData.availableUserName) {
                msgUserName.classList.remove('error-msg');
                msgUserName.classList.add('ok-msg');
                msgUserName.innerHTML = '사용가능한 아이디 입니다';
            } else {
                msgUserName.innerHTML = '이미 존재하는 아이디 입니다';
            }
        })

}

document.getElementById('btn-username').addEventListener('click', fnCheckUserName);


const fnCheckCode = () => {

    let inpCode = document.getElementById('code');
    let btnVerify = document.getElementById('btn-verify');

    fnfetchJson('/user/sendCode.do', 'POST', JSON.stringify({
        'email': inpEmail.value,
        'codeType': 'signin'
    }), (resData) => {
        inpCode.disabled = false;
        btnVerify.disabled = false;
        btnVerify.addEventListener('click', (evt) => {
            if (resData.code === inpCode.value) {
                alert('인증되었습니다.');
                emailCheck = true;
            } else {
                alert('인증되지 않았습니다.');
                emailCheck = false;
            }
        })
    });
}

const fnCheckPassword = () => {
    // 비밀번호 4~12자, 영문/숫자/특수문자 중 2개 이상 포함
    let inpPw = document.getElementById('pw');
    let validCount = /[A-Za-z]/.test(inpPw.value)     // 영문 포함되어 있으면 true (JavaScript 에서 true 는 숫자 1 같다.)
        + /[0-9]/.test(inpPw.value)        // 숫자 포함되어 있으면 true
        + /[^A-Za-z0-9]/.test(inpPw.value) // 영문/숫자가 아니면 true
    let passwordLength = inpPw.value.length;
    let msgPw = document.getElementById('msg-pw');
    msgPw.innerHTML = '';

    if (passwordLength >= 4 && passwordLength <= 12 && validCount >= 2) {
        msgPw.classList.remove('error-msg');
        msgPw.classList.add('ok-msg');
        msgPw.innerHTML = '사용 가능한 비밀번호입니다.';
        passwordCheck = true;
    } else {
        msgPw.innerHTML = '비밀번호 4~12자, 영문/숫자/특수문자 중 2개 이상 포함';
        passwordCheck = false;
    }
    return passwordCheck;
}

const fnConfirmPassword = () => {
    let inpPw = document.getElementById('pw');
    let inpPw2 = document.getElementById('pw2');

    let msgPw2 = document.getElementById('msg-pw2');
    if ((inpPw.value !== '') && (inpPw.value === inpPw2.value)) {
        pw = inpPw.value;
        passwordConfirm = true;
        msgPw2.innerHTML = '';
    } else {
        msgPw2.innerHTML = '비밀번호 입력을 확인하세요.';
    }
    return passwordConfirm;
}


const fnGetByte = (str) => {
    let totalByte = 0;
    for (let i = 0; i < str.length; i++) {
        if (str.charCodeAt(i) > 127) totalByte += 2; else totalByte++;
    }
    return totalByte;
}


// const fnSignup = () => {
//     document.getElementById('frm-signup').addEventListener('submit', (evt) => {
//         if (!emailCheck) {
//             alert('이메일을 확인하세요.');
//             evt.preventDefault();
//             return;
//         } else if (!passwordCheck || !passwordConfirm) {
//             alert('비밀번호를 확인하세요.');
//             evt.preventDefault();
//             return;
//         } else if (!nameCheck) {
//             alert('이름을 확인하세요.');
//             evt.preventDefault();
//             return;
//         } else if (!mobileCheck) {
//             alert('휴대전화를 확인하세요.');
//             evt.preventDefault();
//             return;
//         }
//     })
// }
document.getElementById('name').addEventListener('blur', fnCheckName);
document.getElementById('phone').addEventListener('blur', fnCheckMobile);
document.getElementById('email').addEventListener('blur', fnCheckEmail);
document.getElementById('email').addEventListener('keyup', fnCheckEmail);
document.getElementById('email').addEventListener('keypress', fnCheckEmail);
document.getElementById('pw').addEventListener('keyup', fnCheckPassword);
document.getElementById('pw2').addEventListener('blur', fnConfirmPassword);
document.getElementById('pw2').addEventListener('keyup', fnConfirmPassword);
document.getElementById('pw2').addEventListener('keypress', fnConfirmPassword);
document.getElementById('username').addEventListener('blur', fnCheckName);
document.getElementById('phone').addEventListener('blur', fnCheckMobile);
document.getElementById('tab2').addEventListener('change', fnActiveBtn2);
document.getElementById('tab4').addEventListener('change', fnActiveBtn4);
//fnSignup();

// const fnfetchJson = (url, method, sendData, callback) => {
//
//     fetch(getContextPath() + url, {
//         method: method,
//         headers: { 'Content-Type': 'application/json' },
//         body: sendData
//     })
//         .then(response => response.json())
//         .then(resData => callback(resData))
// }


