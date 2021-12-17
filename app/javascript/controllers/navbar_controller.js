import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "section" ]
    static values = { index: { type: Number, default: 0 }, navname: { type: String, default: "default" } }

    initialize() {
        this.nav_names = this.element.dataset.names.split("|");
        this.initialize_index();
        const section = this.get_last_section();
        section.classList.toggle("active");
    }

    initialize_index() {
        this.indexValue = this.nav_names.indexOf(this.navnameValue);
        if (this.indexValue === -1) {
            this.indexValue = 0;
        }
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