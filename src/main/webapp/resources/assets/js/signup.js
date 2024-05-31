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

let userName ;
let pw;
let mobile;
let uName;
const nextButtons = Object.values(document.getElementsByClassName('btn-next'));

nextButtons.forEach(nextButton => {
    nextButton.addEventListener('click', (e) => {
       // e.preventDefault();
        currTabNo = parseInt(e.target.parentElement.parentElement.id.slice(-1));
        nextTabNo = currTabNo + 1;

        if (currTabNo === 2) {
            fnSignup(e);
        }
        else {
            fnNext()
        }

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

// TAB 3 인증번호 입력
// document.getElementById('btn-code').addEventListener('click',()=>{
//     fnCheckCode()
// })

//------------------SIGN UP-------------------------
document.getElementById('btn-register-user').addEventListener('click',(e)=>{
    fnCheckPassword();
    fnConfirmPassword();
    console.log("72: ",passwordCheck,passwordConfirm);
    if(passwordCheck&&passwordConfirm){


        fetch( '/user/signup.do', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                'name' : uName,
                'email' : inpEmail.value,
                'phone' :mobile,
                'username': userName.value,
                'pw' : pw

            })
        })
            .then(response => response.json())  //
            .then(resData => {
                location.href = '/pages/userType';

            })
    }
})

const fnSignup =(e) =>{
    let inpName;
    let inpMobile;
    let inpEmail;
    do {
        inpName = document.getElementById('name');
        inpMobile = document.getElementById('phone');
        inpEmail = document.getElementById('email');
        fnCheckName(inpName);
        fnCheckMobile(inpMobile);
        fnCheckEmail(inpEmail);

    console.log("102: ",nameCheck,mobileCheck,emailCheck);

    }while(fnCheckName(inpName)&&fnCheckMobile(inpMobile)&&fnCheckEmail(inpEmail)!== true)

    if(fnCheckName(inpName)&&fnCheckMobile(inpMobile)&&fnCheckEmail(inpEmail)){
        //  e.preventDefault();
        fetch( '/user/sendCode.do', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                'email': inpEmail.value
            })
        })
            .then(response => response.json())

            .then(resData => {  // resData = {"code": "123qaz"}
                let inpEmailPrint = document.getElementById('inpEmailPrint');
                inpEmailPrint.innerHTML+= inpEmail.value;
                let inpCode = document.getElementById('code');
                let btnVerifyCode = document.getElementById('btn-code');
                inpCode.disabled = false;
                btnVerifyCode.disabled = false;
                btnVerifyCode.addEventListener('click', (evt) => {
                    if(resData.code === inpCode.value) {
                        alert('인증되었습니다.');

                    } else {
                        alert('인증되지 않았습니다.');
                    }
                })
                fnNext();

            })

    }



}

const fnCheckName = (inpName) => {

    let userNameByte = fnGetByte(inpName.value);
    let msgName = document.getElementById('msg-name');

    if (userNameByte >= 100) {
        msgName.innerHTML = '이름은 100 바이트를 초과할 수 없습니다.';
    } else if (userNameByte === 0) {
        msgName.innerHTML = '이름을 비울 수 없습니다';
    } else {
        nameCheck= true;
        uName = inpName.value;
        msgName.innerHTML = '';
    }
    return nameCheck;
}

const fnCheckMobile = (inpMobile) => {
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

const fnCheckEmail = (inpEmail)=>{


    let regEmail = /^[A-Za-z0-9-_]{2,}@[A-Za-z0-9]+(\.[A-Za-z]{2,6}){1,2}$/;
    let msgEmail = document.getElementById('msg-email');
    if(!regEmail.test(inpEmail.value)){
        msgEmail.innerHTML='이메일 형식이 올바르지 않습니다.';
        emailCheck = false;
        return;
    }

    fetch( '/user/checkEmail.do', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            'email': inpEmail.value
        })
    })
        .then(response => response.json())  // .then( (response) => { return response.json(); } )
        .then(resData => {
            if(resData.enableEmail){
                document.getElementById('msg-email').innerHTML = '';
                emailCheck=true;
                return emailCheck;
            } else {
                document.getElementById('msg-email').innerHTML = '이미 사용 중인 이메일입니다.';
                emailCheck = false;
                return emailCheck;
            }
        })

    return emailCheck;
}

const fnCheckUserName=()=>{
    userName = document.getElementById('username');
    fetch( '/user/checkUserName.do', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            'username': userName.value
        })
    })
        .then(response => response.json())  //
        .then(resData => {
            if(resData.availableUserName){
                msgUserName = document.getElementById('msg-username');
                msgUserName.classList.remove('error-msg');
                msgUserName.classList.add('ok-msg');
                msgUserName.innerHTML = '사용가능한 아이디 입니다';
            } else {
                document.getElementById(msg-userName).innerHTML = '이미 존재하는 아이디 입니다';
            }
        })

}

document.getElementById('btn-username').addEventListener('click',fnCheckUserName);



const fnCheckCode = () => {

    let inpCode = document.getElementById('code');
    let btnVerify = document.getElementById('btn-verify');

    fnfetchJson(
        '/user/sendCode.do', 'POST',
        JSON.stringify({'email': inpEmail.value, 'codeType': 'signin'}),
        (resData) => {
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
        }
    );
}

const fnCheckPassword = () => {
    // 비밀번호 4~12자, 영문/숫자/특수문자 중 2개 이상 포함
    let inpPw = document.getElementById('pw');
    let validCount = /[A-Za-z]/.test(inpPw.value)     // 영문 포함되어 있으면 true (JavaScript 에서 true 는 숫자 1 같다.)
        + /[0-9]/.test(inpPw.value)        // 숫자 포함되어 있으면 true
        + /[^A-Za-z0-9]/.test(inpPw.value) // 영문/숫자가 아니면 true
    let passwordLength = inpPw.value.length;
    let msgPw = document.getElementById('msg-pw');
    msgPw.innerHTML ='';

    if(passwordLength >= 4
        && passwordLength <= 12
        && validCount >= 2){
        msgPw.classList.remove('error-msg');
        msgPw.classList.add('ok-msg');
        msgPw.innerHTML = '사용 가능한 비밀번호입니다.';
        passwordCheck = true;
    } else {
        msgPw.innerHTML = '비밀번호 4~12자, 영문/숫자/특수문자 중 2개 이상 포함';
        passwordCheck = false;
    }
}

const fnConfirmPassword = () => {
    let inpPw = document.getElementById('pw');
    let inpPw2 = document.getElementById('pw2');

    let msgPw2 = document.getElementById('msg-pw2');
    if ((inpPw.value !== '')
        && (inpPw.value === inpPw2.value)) {
        pw = inpPw.value;
        passwordConfirm = true;
        msgPw2.innerHTML = '';
    } else {
        msgPw2.innerHTML = '비밀번호 입력을 확인하세요.';

    }
}


const fnGetByte = (str) => {
    let totalByte = 0;
    for (let i = 0; i < str.length; i++) {
        if (str.charCodeAt(i) > 127) totalByte += 2;
        else totalByte++;
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


document.getElementById('pw').addEventListener('keyup', fnCheckPassword);
document.getElementById('pw2').addEventListener('blur', fnConfirmPassword);
document.getElementById('username').addEventListener('blur', fnCheckName);
document.getElementById('phone').addEventListener('blur', fnCheckMobile);
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


