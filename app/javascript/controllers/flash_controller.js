import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.element.style.transition = "opacity 0.5s";
      this.element.style.opacity = "0";
      setTimeout(() => this.element.remove(), 500); // Remove after fading out
    }, 3000); // 5 seconds
  }
}
