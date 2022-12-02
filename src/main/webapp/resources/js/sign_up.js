$(document).ready(() =>{

    console.log('JQuery -> OK');

    let result1 = false;   //валідація логіну
    let result2 = false;   //валідація 1 пароля
    let result3 = false;   //валідація 2 пароля
    let result4 = false;   //валідація імейла

    //Валідація логіну
    $('#login').blur(() => {
        console.log('#login-blur -> OK');
        let loginX = $('#login').val();
        console.log('loginX -> ' + loginX);

        let loginRe = /^[a-zA-Z][a-zA-Z0-9_ \-\.]{4,15}$/;
        if (!loginRe.test(loginX)){
            $('#login_err').text('Помилка формату логіна! Дозволений формат: a-z, A-Z, 0-9, _, -, .');
            result1 = false;
        } else {
            result1 = true;
        }
    });

    // Валідація 1 пароля
    $('#pass1').blur(() => {
        console.log('#pass1-blur -> OK');
         let pass1X = $('#pass1').val();
        console.log('pass1X -> ' + pass1X);

        let passRe = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[_\-\.])[a-zA-Z0-9_\-\.]{6,}$/;
        if (passRe.test(pass1X)) {
            $('#pass1_err').text('');
            result2 = true;
        }else{
            $('#pass1_err').text('Помилка формату пароля! Від 7 символів, хоча б одна: a-z, 0-9, _, -, .');
            result2 = false;
        }
    });

     // Валідація 2 пароля
    $('#pass2').blur(() => {
        console.log('#pass2-blur -> OK');
        let pass1X = $('#pass1').val();
        let pass2X = $('#pass2').val();

        if (pass1X === pass2X) {
            $('#pass2_err').text('');
            result3 = true;
        }else{
            $('#pass2_err').text('Введені паролі не співпадають!');
            result3 = false;
        }
    });

    // Валідація e-mail
    $('#email').blur(() => {
        console.log('#email-blur -> OK');
        let emailX = $('#email').val();
        console.log('emailX -> ' +emailX);

        let emailRe = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
        if (!emailRe.test(emailX)){
            $('#email_err').text('Помилка формату e-mail!');
            result4 = false;
        } else {
            result4 = true;
        }
    });


    $('#submit').click(() => {
        if (result1 && result2 && result3 && result4){
            $('#form1').attr('onsubmit', 'return true');
        } else {
            $('#form1').attr('onsubmit', 'return false');
            alert('Форма містить некоректні дані!\nВідправка даних заблокована!')
        }
    })

});
