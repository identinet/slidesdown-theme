# slidesdewn-theme

[identinet theme](https://github.com/identinet/slidesdown-theme/) for
[slidesdown](https://slidesdown.github.io/)

## Use Theme

Add these settings to the presentation:

```yaml
theme: https://identinet.github.io/slidesdown-theme/identinet.css
favicon: https://identinet.github.io/slidesdown-theme/images/favicon.svg
```

## Development

### Dependencies

Themes are written using Sass to keep things modular and reduce the need for
repeated selectors across files. Make sure that you have the reveal.js
development environment installed before proceeding:
https://revealjs.com/installation/#full-setup

### Create Theme

To create your own theme, start by duplicating a `.scss` file in
[/css/theme/source](https://github.com/hakimel/reveal.js/blob/master/css/theme/source).
It will be automatically compiled from Sass to CSS (see the
[gulpfile](https://github.com/hakimel/reveal.js/blob/master/gulpfile.js)) when
you run `npm run build -- css-themes`.

Each theme file does four things in the following order:

1. **Include
   [/css/theme/template/mixins.scss](https://github.com/hakimel/reveal.js/blob/master/css/theme/template/mixins.scss)**
   Shared utility functions.
2. **Include
   [/css/theme/template/settings.scss](https://github.com/hakimel/reveal.js/blob/master/css/theme/template/settings.scss)**
   Declares a set of custom variables that the template file (step 4) expects.
   Can be overridden in step 3.
3. **Override** This is where you override the default theme. Either by
   specifying variables (see
   [settings.scss](https://github.com/hakimel/reveal.js/blob/master/css/theme/template/settings.scss)
   for reference) or by adding any selectors and styles you please.
4. **Include
   [/css/theme/template/theme.scss](https://github.com/hakimel/reveal.js/blob/master/css/theme/template/theme.scss)**
   The template theme file which will generate final CSS output based on the
   currently defined variables.

Compile theme:

```bash
yarn run compile

# or recompile for every change
yarn run compile-watch
```

Host theme locally so it can be included in the presentation:

```bash
yarn run serve
```

Add these settings to the presentation to test the theme:

```yaml
theme: http://localhost:8080/identinet.css
favicon: http://localhost:8080/images/favicon.svg
```

### Publish Theme

1. Publish the theme online, e.g. via GitHub Pages
