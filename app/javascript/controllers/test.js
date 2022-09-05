


console.log("edi")

    window.addEventListener('DOMContentLoaded', (_event) => {
  let letters = document.querySelectorAll("#logo path");
  
   let edi1 = document.querySelector('#sectia2class');
   let edi2 = document.querySelector('#textclass')
   let edi3 = document.querySelector('#butonediclass');
   
   edi1.classList.add('fade-in');
   edi2.classList.add('fade-in');
   edi3.classList.add('fade-in');

  
   
   
    letters.forEach((letter) => {
      console.log( letter.getTotalLength());
      letter.style.strokeDasharray = letter.getTotalLength();
      letter.style.strokeDashoffset = letter.getTotalLength();
      letter.style.animation = `line-anim  2s ease forwards `;
    
        
    

    });
   

});



