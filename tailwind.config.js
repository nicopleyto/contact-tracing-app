module.exports = {
    purge: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/components/**/*.html.erb',
    './app/components/**/*.rb',
    './app/javascript/**/*.js',
  ],

  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {
      backgroundColor: ['checked'],
      borderColor: ['checked'],
    },
  },
  plugins: [],
}
