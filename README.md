# slidesdewn-theme

[identinet theme](https://github.com/identinet/slidesdown-theme/) for
[slidesdown](https://slidesdown.github.io/)

## Use Theme

Add these settings to the presentation:

```yaml
favicon: https://identinet.github.io/slidesdown-theme/images/favicon.svg
theme: https://identinet.github.io/slidesdown-theme/identinet.css
```

## Development

### Create Theme

Themes are written in [Sass](https://sass-lang.com/) to keep things modular and
reduce the need for repeated selectors across files. To install all dependencies

1. Clone this repository
2. Then create your own theme, start by duplicating a `.scss` file from
   [reveal.js](https://github.com/hakimel/reveal.js/blob/master/css/theme/source)
   and place it in the [`./source`](./source) folder.

#### Each theme file does four things in the following order

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

#### Compile theme

```bash
yarn run compile

# or recompile at every modification
yarn run compile-watch
```

#### Host theme locally so it can be included in the presentation

```bash
yarn run serve
```

#### Create an [example presentation](https://github.com/slidesdown/slidesdown/blob/main/examples/SLIDES.md)

```bash
curl -LO https://github.com/slidesdown/slidesdown/raw/main/examples/SLIDES.md
```

#### Enable theme and favicon by changing these settings in the presentation

```yaml
favicon: http://localhost:8080/images/favicon.svg
theme: http://localhost:8080/identinet.css
```

#### Serve the presentation locally via [slidesdown CLI](https://github.com/slidesdown/slidesdown/tree/main#installation)

```bash
slidesdown -d
```

### Publish Theme

Publish the theme online so it can be referenced from everywhere, e.g. via
[GitHub Pages](https://pages.github.com/).
