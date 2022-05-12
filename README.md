## Contact Tracing App
This is a sample contact tracing app similar to the ones used in malls for COVID-19. This was made as an app that assumes that the users are either mall store owners/personnel or mall admins.

## Tailwind Setup
Rails 6 default configuration uses postcss7 which means that the latest tailwind version(3), which requires postcss8, will not work. Run the following code after installing tailwind:

```bash
npm uninstall tailwindcss postcss autoprefixer
npm install tailwindcss@npm:@tailwindcss/postcss7-compat postcss@^7 autoprefixer@^9

