// Import the Stimulus application from your main JavaScript entry point
import { application } from "../application"
import { registerControllers } from "@hotwired/stimulus-loading"

// Automatically register all Stimulus controllers in this directory
registerControllers(application, import.meta.glob("./**/*_controller.js"))