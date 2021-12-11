import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

    connect() {
        console.log("Hello");
        this.element.addEventListener("click", this.collapse);
    }

    collapse() {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        content.classList.toggle("content_hidden");
        content.classList.toggle("content_shown");
    }
}