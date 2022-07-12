// src/controllers/slideshow_controller.js
import {
  Controller
} from "@hotwired/stimulus"
import Rails from "@rails/ujs";

export default class extends Controller {
  static targets = ["input", "answer", "question", "slide", "id"]


  initialize() {
     this.index = 0
     this.showCurrentSlide()
  }

  next() {
     this.index++
     this.showCurrentSlide()
  }

  showCurrentSlide() {
     this.slideTargets.forEach((element, index) => {
        element.hidden = index != this.index
     })
     if (this.inputTargets[this.index]) {
        this.inputTargets[this.index].focus()
     }
  }


  submitted(event) {
    if (event.keyCode == 13) {
       let url = 'update_counter/' + this.idTargets[this.index].textContent
       let formData = new FormData()
       
       if (this.inputTargets[this.index].value == this.answerTargets[this.index].textContent) {
          console.log("success!")
         formData.append('count', 1)
          Rails.ajax({
            url: url,
            type: 'post',
            data: formData          
          })
     
          this.next()

       } else {
          console.log("failure!")
          formData.append('count', 0)
          Rails.ajax({
            url: url,
            type: 'post',
            data: formData          
          })

          this.inputTargets[this.index].value = ""
          this.showCurrentSlide()
       }

    }
 }
}