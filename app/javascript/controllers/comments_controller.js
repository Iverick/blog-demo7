import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  }

  // Toggles "d-none" class for edit comment form DOM elements
  toggleForm(event) {
    event.preventDefault()
    event.stopPropagation()
    const formID = event.params["form"]
    const commentBodyID = event.params["body"]
    const editForm = document.getElementById(formID)
    editForm.classList.toggle("d-none")
    const body = document.getElementById(commentBodyID)
    body.classList.toggle("d-none")
  }
}
