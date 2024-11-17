// import Rails from "@rails/ujs"
// Rails.start()
import "@hotwired/turbo-rails"
import { Application } from "@hotwired/stimulus"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"

const application = Application.start()
application.debug = false
window.Stimulus = application

eagerLoadControllersFrom("controllers", application)

export { application }