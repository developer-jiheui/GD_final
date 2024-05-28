var emailCheck = false;
var passwordCheck = false;
var passwordConfirm = false;
var nameCheck = false;
var mobileCheck = false;
var agreeCheck = false;

let currTabNo = 0;
let nextTabNo = 0;
let beforeTabNo = 0;
let tabNavId = 'nav-tab';
let tabId = 'tab';

const nextButtons = Object.values(document.getElementsByClassName('btn-next'));

nextButtons.forEach(nextButton => {
    nextButton.addEventListener('click', (e) => {
        e.preventDefault();
        currTabNo = parseInt(e.target.parentElement.parentElement.id.slice(-1));
        nextTabNo = currTabNo + 1;
        tabNavId = tabNavId + nextTabNo;

        if (currTabNo === 2) {
            fnCheckEmail();
        } else {
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
    document.getElementById("nav-tab" + currTabNo).classList.remove("active");
    document.getElementById('nav-tab' + nextTabNo).classList.add("active");
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


let inpEmail = document.getElementById('email');

const fnCheckEmail = () => {

    let msgEmail = document.getElementById('msg-email');
    let regEmail = /^[A-Za-z0-9-_]{2,}@[A-Za-z0-9]+(\.[A-Za-z]{2,6}){1,2}$/;


    if (!regEmail.test(inpEmail.value)) {
        msgEmail.innerHTML = '이메일 형식이 올바르지 않습니다.';
        emailCheck = false;
        return;
    }

    fnfetchJson('/user/checkEmail.do', 'POST',
        JSON.stringify({'email': inpEmail.value}),
        (resData) => {
            if (resData.enableEmail) fnCheckCode();
            else {
                msgEmail.innerHTML = '이미 사용 중인 이메일입니다.';
                emailCheck = false;
                return;
            }
        });
}

const fnCheckCode = () => {

    let inpCode = document.getElementById('code');
    let btnVerify = document.getElementById('btn-verify');

    fnfetchJson(
        '/user/sendCode.do', 'POST',
        JSON.stringify({'email': inpEmail.value, 'codeType': 'signin'}),
        (resData) => {
            document.getElementById("inpEmailPrint").innerText= "👉 "+inpEmail.value;
            inpCode.disabled = false;
            btnVerify.disabled = false;
            btnVerify.addEventListener('click', (evt) => {
                if (resData.code == inpCode.value) {
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

    let passwordResult = checkPassword(inpPw.value);

    let msgPw = document.getElementById('msg-pw');
    passwordCheck = passwordResult.result;
    msgPw.innerHTML = passwordResult.msg;
}

const fnConfirmPassword = () => {
    let inpPw = document.getElementById('pw');
    let inpPw2 = document.getElementById('pw2');

    let confirm = confirmPassword(inpPw.value, inpPw2.value);
    passwordConfirm = confirm.result;

    let msgPw = document.getElementById('msg-pw');
    msgPw.innerHTML = confirm.msg;
}

const fnCheckName = () => {
    let userName = document.getElementById('username');

    let userNameByte = fnGetByte(userName.value);
    nameCheck = userNameByte <= 100;

    let msgName = document.getElementById('msg-name');

    if (!nameCheck) {
        msgName.innerHTML = '이름은 100 바이트를 초과할 수 없습니다.';
    } else if (firstNameByte === 0 || lastNameByte === 0) {
        msgName.innerHTML = '이름을 비울 수 없습니다';
    } else {
        msgName.innerHTML = '';
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

const fnCheckMobile = () => {
    let inpMobile = document.getElementById('phoneNum');
    let mobile = inpMobile.value;
    mobile = mobile.replaceAll(/[^0-9]/g, '');
    mobileCheck = /^010[0-9]{8}$/.test(mobile);
    let msgMobile = document.getElementById('msg-phoneNum');
    if (mobileCheck) {
        msgMobile.innerHTML = '';
    } else {
        msgMobile.innerHTML = '휴대전화를 확인하세요.';
    }
}

const fnSignup = () => {
    document.getElementById('frm-signup').addEventListener('submit', (evt) => {
        if (!emailCheck) {
            alert('이메일을 확인하세요.');
            evt.preventDefault();
            return;
        } else if (!passwordCheck || !passwordConfirm) {
            alert('비밀번호를 확인하세요.');
            evt.preventDefault();
            return;
        } else if (!nameCheck) {
            alert('이름을 확인하세요.');
            evt.preventDefault();
            return;
        } else if (!mobileCheck) {
            alert('휴대전화를 확인하세요.');
            evt.preventDefault();
            return;
        }
    })
}


document.getElementById('btn-code').addEventListener('click', fnCheckEmail);
// document.getElementById('pw').addEventListener('keyup', fnCheckPassword);
// document.getElementById('pw2').addEventListener('blur', fnConfirmPassword);
// document.getElementById('firstName').addEventListener('blur', fnCheckName);
// document.getElementById('lastName').addEventListener('blur', fnCheckName);
// document.getElementById('phoneNum').addEventListener('blur', fnCheckMobile);
// fnSignup();