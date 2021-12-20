import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    collapse() {
        this.element.classList.toggle("active");
        var content = this.element.nextElementSibling;
        content.classList.toggle("content_hidden");
        content.classList.toggle("content_shown");
    }
}