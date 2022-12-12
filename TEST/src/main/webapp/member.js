const submit = document.querySelector('#Button');
const form = document.querySelector('#member_insert');
submit.addEventListener("click", ()=>{
    if (form.memberID.value === "") {
      alert("아이디를 입력해 주세요");
      form.memberID.focus();
      return false;
    }
    else if (form.passwd.value === "") {
      alert("비밀번호를 입력해 주세요");
      form.passwd.focus();
      return false;
    }
      else if (form.passwd.value != form.passwdCheck.value) {
      alert("비밀번호가 일치하지 않습니다. 비밀번호를 확인해주세요");
      form.passwdCheck.select();
      return false;
    }
     else if (form.memberName.value === "") {
      alert("이름을 입력해 주세요");
      form.memberName.focus();
      return false;
      } 
    form.submit();
})
        function execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    var fullAddr = ''; 
                    var extraAddr = '';                    
                    if (data.userSelectedType === 'R') {
                        fullAddr = data.roadAddress;
                    }
                    else { 
                        fullAddr = data.jibunAddress;
                    }     
                    if(data.userSelectedType === 'R'){         
                        if(data.bname !== ''){
                            extraAddr += data.bname;
                        }          
                        if(data.buildingName !== ''){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }                  
                        fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                    }                  
                    document.getElementById('zipcode').value = data.zonecode; 
                    document.getElementById('address01').value = fullAddr;
                    document.getElementById('address02').focus();
                }
            }).open();
        }