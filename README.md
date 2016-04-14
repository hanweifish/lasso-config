# lasso-config

# Overview

This example project is to explain how to use a configuration file with the Lasso.js command line interface.

# What is Lasso.js?

[Lasso.js](https://github.com/lasso-js/lasso) is an eBay open source Node.js-style JavaScript module bundler and asset pipeline that also provides first-level support for optimally delivering JavaScript, CSS, images and other assets to the browser.

This tool offers many different optimizations such as a bundling, code splitting, lazy loading, conditional dependencies, compression, JS/CSS/IMG minification, Base64 image encoding, and fingerprinted resource URLs. Plugins are provided to support pre-processors and compilers such as Less, Stylus and [Marko](http://markojs.com).

# Install

```bash
git clone https://github.com/lasso-js-samples/lasso-config.git
cd lasso-config
npm install
```

This sample app uses a local installation of the [lasso-cli](https://github.com/lasso-js/lasso-cli) module, but you can also install it globally using the following command:

```bash
npm install lasso-cli --global
```

# Run

```bash
npm start
```

Open `http://localhost:8080` in your web browser to test out your page.

# Additional information

_lasso-config.json:_

```javascript
{
    "plugins": [
        "lasso-less" /* Unable preprocessing for Less files
    ],
    "outputDir": "build/static/", /* Output directory for all generated assets */
    "urlPrefix": "/static", /* Prefix added to all generated URLs */
    "fingerprintsEnabled": true, /* Add a "fingerprint" to the generated resource URL (changes when file changes)
    "minify": true, /* Minify JavaScript and CSS */
    "resolveCssUrls": true, /* Resolve resource URLs found in CSS fils */
    "bundlingEnabled": true, /* Concatenate resources together */
    "bundles": [ /* Preconfigured bundles */
        {
            "name": "jquery",
            "dependencies": [
                "require: jquery"
            ]
        },
        {
            "name": "math",
            "dependencies": [
                "require: ./src/add"
            ]
        }
    ]
}
```

The configuration file to run lasso is `./lasso-config.json`.
Running the above command will result in JavaScript and CSS bundles being written out to the `./static` directory.

The JavaScript and CSS dependencies for `src/index.html` are declared in `src/browser.json`.