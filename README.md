mocha-multi-reporters-demo
===

Simple demo for mocha-multi-reporters package

[![Build Status](https://travis-ci.org/stanleyhlng/mocha-multi-reporters-demo.svg)](https://travis-ci.org/stanleyhlng/mocha-multi-reporters-demo)
[![Dependency Status](https://img.shields.io/david/stanleyhlng/mocha-multi-reporters-demo.svg?style=flat-square)](https://david-dm.org/stanleyhlng/mocha-multi-reporters-demo)
[![devDependency Status](https://img.shields.io/david/dev/stanleyhlng/mocha-multi-reporters-demo.svg?style=flat-square)](https://david-dm.org/stanleyhlng/mocha-multi-reporters-demo#info=devDependencies)

## Usage

```bash
$ git clone git@github.com:stanleyhlng/mocha-multi-reporters-demo.git

Cloning into 'mocha-multi-reporters-demo'...
remote: Counting objects: 15, done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 15 (delta 2), reused 11 (delta 2), pack-reused 0
Receiving objects: 100% (15/15), done.
Resolving deltas: 100% (2/2), done.
Checking connectivity... done.
```

```bash
$ cd mocha-multi-reporters-demo && npm i

> spawn-sync@1.0.13 postinstall /Users/stanleyn/Workspaces/mocha-multi-reporters-demo/node_modules/pre-commit/node_modules/cross-spawn/node_modules/spawn-sync
> node postinstall

Installing native dependencies (this may take up to a minute)
\
> pre-commit@1.1.2 install /Users/stanleyn/Workspaces/mocha-multi-reporters-demo/node_modules/pre-commit
> node install.js

eslint-config-defaults@7.1.1 node_modules/eslint-config-defaults

chai@3.4.1 node_modules/chai
├── assertion-error@1.0.1
├── type-detect@1.0.0
└── deep-eql@0.1.3 (type-detect@0.1.1)

mocha@2.3.4 node_modules/mocha
├── escape-string-regexp@1.0.2
├── supports-color@1.2.0
├── growl@1.8.1
├── commander@2.3.0
├── diff@1.4.0
├── debug@2.2.0 (ms@0.7.1)
├── mkdirp@0.5.0 (minimist@0.0.8)
├── jade@0.26.3 (commander@0.6.1, mkdirp@0.3.0)
└── glob@3.2.3 (inherits@2.0.1, graceful-fs@2.0.3, minimatch@0.2.14)

mocha-multi-reporters@1.0.1 node_modules/mocha-multi-reporters
├── debug@2.2.0 (ms@0.7.1)
├── object-assign-deep@0.0.4 (object-assign@2.0.0, underscore@1.7.0)
├── async@1.5.0
├── root-require@0.3.1 (packpath@0.1.0)
└── lodash@3.10.1

pre-commit@1.1.2 node_modules/pre-commit
├── which@1.1.2 (is-absolute@0.1.7)
└── cross-spawn@2.0.1 (cross-spawn-async@2.1.1, spawn-sync@1.0.13)

eslint@1.10.3 node_modules/eslint
├── escape-string-regexp@1.0.4
├── path-is-absolute@1.0.0
├── object-assign@4.0.1
├── path-is-inside@1.0.1
├── xml-escape@1.0.0
├── strip-json-comments@1.0.4
├── estraverse-fb@1.3.1
├── globals@8.17.0
├── estraverse@4.1.1
├── text-table@0.2.0
├── esutils@2.0.2
├── user-home@2.0.0 (os-homedir@1.0.1)
├── debug@2.2.0 (ms@0.7.1)
├── is-resolvable@1.0.0 (tryit@1.0.2)
├── json-stable-stringify@1.0.0 (jsonify@0.0.0)
├── doctrine@0.7.2 (isarray@0.0.1, esutils@1.1.6)
├── mkdirp@0.5.1 (minimist@0.0.8)
├── optionator@0.6.0 (fast-levenshtein@1.0.7, type-check@0.3.2, deep-is@0.1.3, levn@0.2.5, wordwrap@0.0.3, prelude-ls@1.1.2)
├── shelljs@0.5.3
├── chalk@1.1.1 (supports-color@2.0.0, ansi-styles@2.1.0, has-ansi@2.0.0, strip-ansi@3.0.0)
├── minimatch@3.0.0 (brace-expansion@1.1.2)
├── lodash.clonedeep@3.0.2 (lodash._bindcallback@3.0.1, lodash._baseclone@3.3.0)
├── glob@5.0.15 (inherits@2.0.1, once@1.3.3, inflight@1.0.4)
├── lodash.merge@3.3.2 (lodash._arraycopy@3.0.0, lodash._arrayeach@3.0.0, lodash.keysin@3.0.8, lodash._getnative@3.9.1, lodash.istypedarray@3.0.2, lodash.keys@3.1.2, lodash.isarray@3.0.4, lodash.isarguments@3.0.4, lodash.isplainobject@3.2.0, lodash._createassigner@3.1.1, lodash.toplainobject@3.0.0)
├── concat-stream@1.5.1 (typedarray@0.0.6, inherits@2.0.1, readable-stream@2.0.5)
├── lodash.omit@3.1.0 (lodash._arraymap@3.0.0, lodash._pickbyarray@3.0.2, lodash.restparam@3.6.1, lodash._bindcallback@3.0.1, lodash._baseflatten@3.1.4, lodash._pickbycallback@3.0.0, lodash.keysin@3.0.8, lodash._basedifference@3.0.3)
├── espree@2.2.5
├── is-my-json-valid@2.12.3 (jsonpointer@2.0.0, generate-function@2.0.0, xtend@4.0.1, generate-object-property@1.2.0)
├── file-entry-cache@1.2.4 (flat-cache@1.0.10)
├── inquirer@0.11.0 (strip-ansi@3.0.0, figures@1.4.0, ansi-escapes@1.1.0, cli-width@1.1.0, through@2.3.8, ansi-regex@2.0.0, run-async@0.1.0, cli-cursor@1.0.2, readline2@1.0.1, rx-lite@3.1.2, lodash@3.10.1)
├── handlebars@4.0.5 (async@1.5.0, optimist@0.6.1, source-map@0.4.4, uglify-js@2.6.1)
├── js-yaml@3.4.5 (esprima@2.7.1, argparse@1.0.3)
└── escope@3.3.0 (esrecurse@3.1.1, es6-weak-map@2.0.1, es6-map@0.1.3)
```

```bash
$ npm run test
> mocha-multi-reporters-demo@1.0.0 test /Users/stanleyn/Workspaces/mocha-multi-reporters-demo
> mocha --reporter mocha-multi-reporters --reporter-options configFile=config.json

1..4
ok 1 mocha-test 1 sample test 1.1
ok 2 mocha-test 1 sample test 1.2
ok 3 mocha-test 2 sample test 2.1
ok 4 mocha-test 2 sample test 2.2 # SKIP -
# tests 3
# pass 3
# fail 0

$ cat config.json
{
    "reporterEnabled": "tap,xunit",
    "xunitReporterOptions": {
        "output": "xunit-custom.xml"
    }
}

$ cat xunit-custom.xml
<testsuite name="Mocha Tests" tests="4" failures="0" errors="0" skipped="1" timestamp="Thu, 31 Dec 2015 01:34:25 GMT" time="0.004">
```
