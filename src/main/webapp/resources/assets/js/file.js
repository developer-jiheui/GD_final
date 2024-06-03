const onFileUpload = () => {
    var formData = new FormData();
    formData.append('profilePhoto', $('#files')[0].files[0]);
    formData.append('userid', $('#hiddenUserId').val());
    console.log("file upload ...ing")
    $.ajax({
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false,
        type: 'POST',
        url: getContextPath() + '/user/editProfilePhoto',
        data: formData,
        dataType: 'json',
        success: (resData) => {
            if(resData.isRegisterPhoto === true) {
                alert('Profile change sucess!');
                location.href = getContextPath() + '/';
            }
        },
        error: (jqXHR) => {
            alert(jqXHR.statusText + '(' + jqXHR.status + ')');
        }
    });
}