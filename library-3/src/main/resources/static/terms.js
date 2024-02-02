window.onload = function () {
    const checkAll = document.getElementById('chkAll');
    const chks = document.querySelectorAll('.chk');
    const chkBoxLength = chks.length;

    checkAll.addEventListener('change', function () {
        console.log('Check all changed');
        chks.forEach(function (value) {
            value.checked = checkAll.checked;
        });
    });

    chks.forEach(function (chk, index) {
        chk.addEventListener('change', function () {
            console.log('Checkbox ' + index + ' changed');
            let count = Array.from(chks).filter(chk => chk.checked).length;
            checkAll.checked = count === chkBoxLength;
        });
    });
};

function termsCheck() {
    var termsCheckbox = document.getElementById('terms');
    var collectUseCheckbox = document.getElementById('collectUse');
    var jointUseCheckbox = document.getElementById('jointUse');

    if (!termsCheckbox.checked) {
        alert('이용약관에 동의하세요.');
    } else if (!collectUseCheckbox.checked) {
        alert('개인정보 수집 및 이용에 동의하세요.');
    } else if (!jointUseCheckbox.checked) {
        alert('개인정보의 공동이용에 동의하세요.');
    } else {
        var form = document.getElementById('f');
        form.submit();
    }
}

