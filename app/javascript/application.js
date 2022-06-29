// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "trix"
import "@rails/actiontext"

import Bridge from "./turbo/bridge";
window.bridge = Bridge;