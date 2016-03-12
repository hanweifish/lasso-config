# lasso-config

#### What does this example do ?

> This example project is to explain how to use a config file for [Lasso JS](https://github.com/lasso-js/lasso)

#### What is Lasso JS ?

[Lasso JS](https://github.com/lasso-js/lasso) is an eBay open source Node.js-style JavaScript module bundler that also provides first-level support for optimally delivering JavaScript, CSS, images and other assets to the browser.

This tool offers many different optimizations such as a bundling, code splitting, lazy loading, conditional dependencies, compression, JS / CSS / IMG minifications, Base64 image encoding, and fingerprinted resource URLs. Plugins are provided to support pre-processors and compilers such as Less, Stylus and [Marko](http://markojs.com).

#### How to install this ?

```bash
git clone https://github.com/lasso-js-samples/lasso-config.git
cd lasso-config
npm install
```

This sample app uses a local installation of the [lasso-cli](https://github.com/lasso-js/lasso-cli) module, but you can also install it globally using the following command:

```bash
npm install lasso-cli --global
```

#### How to run this example ?

To run this example, navigate to the project root on your terminal and type

```````````

./run.sh
```````````

#### What is the contents of the configuration file ?

The configuration file to run lasso is `./lasso-config.json`.
Running the above command will result in JavaScript and CSS bundles being written out to the `./static` directory.

The dependencies required to build `./my-page.html` via Lasso is mentioned inside the `dependencies` key of the `./my-page.browser.json`. This file lists `./main.js` and `./style.less` as the two files required for this page.

**Other configuration options :**

For the page to be up & running successfully, the `./add.js`, `jquery.js` file which is mentioned as a dependency for `main.js` must also be bundled. This is mentioned in the `bundles` property of the `./lasso-config.json.`

* `minify` is used to minify the scripts

* `fingerprintsEnabled` is used to provide a unique [fingerprinted](https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/http-caching) URL.

* `plugins` is used to list [lasso-less](https://github.com/lasso-js/lasso-less) plugin to compile .less dependencies into CSS files.

In addition, the [my-page.html](https://github.com/lasso-js-samples/lasso-config/blob/master/my-page.html) file will be updated with the required `<script>` and `<link>` tags to include the required external resources.

To test your program, open the updated `./my-page.html` file in your web browser.
