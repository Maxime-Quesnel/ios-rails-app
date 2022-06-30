module.exports = {
  mode: "jit",
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  corePlugins: {
    preflight: false,
  },
  plugins: [
    require("@tailwindcss/forms")
  ]
}
