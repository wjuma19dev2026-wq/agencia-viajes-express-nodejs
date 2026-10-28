module.exports = {
  proxy: "http://localhost:3000",
  files: [
    "views/**/*.pug",
    "public/**/*.{css,js,html}",
    "router/**/*.js",
    "controllers/**/*.js",
    "app.js"
  ],
  port: 3001,
  open: true,
  notify: false,
  reloadDelay: 300
}
