// Import Turbo (for handling Turbo links)
import "@hotwired/turbo-rails"

// Import Stimulus controllers
import "controllers"

// Import Stimulus for the front-end framework
import { Application } from "@hotwired/stimulus"
const application = Application.start()

// Configure Stimulus
application.debug = false
window.Stimulus = application

export { application }