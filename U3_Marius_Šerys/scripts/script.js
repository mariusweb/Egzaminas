
const form = document.getElementById('uzsakymoForma');
const message = document.querySelector('.message');

let validateForm = () => {
    if(form['name'].value == '' && form['email'].value == ''){
        alert('Neįvesta jokių duomenų!');
    }else if(form['name'].value == '' || form['email'].value == ''){
        alert('Įvesta tik dalis duomenų!');
    }else{
        message.innerText = `Ačių, prenumerata užregistravome šituo ${form['email'].value} paštu.`;
        setTimeout(() => {
            message.innerText = '';
            }, 6000);
    }
    
}
form.addEventListener('submit', (e)=>{
    e.preventDefault();
    validateForm();
});