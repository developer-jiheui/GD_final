"use strict";
$(function() {
    var e = $(".select2");
    e.length && e.each(function() {
        var e = $(this);
        e.wrap('<div class="position-relative"></div>').select2({
            placeholder: "Select value",
            dropdownParent: e.parent()
        })
    })
}),
    document.addEventListener("DOMContentLoaded", function(e) {
        var a,
            t;
        a = document.querySelector(".modal-edit-tax-id"),
            t = document.querySelector(".phone-number-mask"),
        a && new Cleave(a, {
            prefix: "TIN",
            blocks: [3, 3, 3, 4],
            uppercase: !0
        }),
        t && new Cleave(t, {
            phone: !0,
            phoneRegionCode: "US"
        }),
            FormValidation.formValidation(document.getElementById("addDogForm"), {
                fields: {
                    modalDogName: {
                        validators: {
                            notEmpty: {
                                message: "강아지 이름을 입력해주세요"
                            }
                        }
                    },
                    parent1Name: {
                        validators: {
                            notEmpty: {
                                message: "보호자님의 이름을 입력해주세요"
                            }
                        }
                    },
                    parent2Name: {
                        validators: {
                            notEmpty: {
                                message: "보호자님의 이름을 입력해주세요"
                            }
                            // regexp: {
                            //     regexp: /^[a-zA-Z0-9 ]+$/,
                            //     message: "The name can only consist of alphabetical, number and space"
                            // }
                        }
                    },
                    parent1phone: {
                        validators: {
                            notEmpty: {
                                message: "Please enter your username"
                            },
                            stringLength: {
                                min: 11,
                                max: 13,
                                message: "핸드폰 번호를 정확히 입력해주세요"
                            },
                            regexp: {
                                regexp: /^[0-9 ]+$/,
                                message: "연락처 정보를 확인해주세요"
                            }
                        }
                    },
                    parent2phone: {
                        validators: {
                            notEmpty: {
                                message: "Please enter your username"
                            },
                            stringLength: {
                                min: 11,
                                max: 13,
                                message: "핸드폰 번호를 정확히 입력해주세요"
                            },
                            regexp: {
                                regexp: /^[0-9 ]+$/,
                                message: "핸드폰 번호를 정확히 입력해주세요"
                            }
                        }
                    }
                },
                plugins: {
                    trigger: new FormValidation.plugins.Trigger,
                    bootstrap5: new FormValidation.plugins.Bootstrap5({
                        eleValidClass: "",
                        rowSelector: ".col-12"
                    }),
                    autoFocus: new FormValidation.plugins.AutoFocus
                }
            })
    });
