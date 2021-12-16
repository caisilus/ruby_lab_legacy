import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "section" ]
    static values = { index: { type: Number, default: 0 } }

    initialize() {
        const section = this.get_last_section();
        section.classList.toggle("active");
    }

    enable_section(event){
        const section = event.target;
        const last_section = this.get_last_section();
        last_section.classList.toggle("active");
        section.classList.toggle("active");
        this.indexValue = this.get_section_index(section);
    }

    get_last_section() {
        return this.sectionTargets[this.indexValue];
    }

    get_section_index(section) {
        return this.sectionTargets.indexOf(section);
    }
}