mocha-multi-reporters-demo
===

Simple demo for mocha-multi-reporters package

[![StyleCI](https://styleci.io/repos/48826897/shield)](https://styleci.io/repos/48826897)
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
```

```bash
$ npm ls --depth=0
  mocha-multi-reporters-demo@1.0.9 /Users/sng/Projects/stanleyhlng/github/mocha-multi-reporters-demo
  ├── chai@3.5.0
  ├── eslint@1.10.3
  ├── eslint-config-defaults@7.1.1
  ├── mocha@2.5.3
  ├── mocha-junit-reporter@1.12.1
  ├── mocha-multi-reporters@1.1.0
  └── pre-commit@1.1.3
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
    "reporterEnabled": "tap,xunit,mocha-junit-reporter",
    "xunitReporterOptions": {
        "output": "xunit-custom.xml"
    },
    "mochaJunitReporterReporterOptions": {
	"mochaFile": "junit-custom.xml"
    }
}

$ cat xunit-custom.xml
<testsuite name="Mocha Tests" tests="4" failures="0" errors="0" skipped="1" timestamp="Sun, 30 Oct 2016 02:23:05 GMT" time="0.008">
<testcase classname="mocha-test #1" name="sample test #1.1" time="0.002"/>
<testcase classname="mocha-test #1" name="sample test #1.2" time="0"/>
<testcase classname="mocha-test #2" name="sample test #2.1" time="0"/>
<testcase classname="mocha-test #2" name="sample test #2.2" time="0"><skipped/></testcase>
</testsuite>

$ cat junit-custom.xml
<?xml version="1.0" encoding="UTF-8"?>
<testsuites name="Mocha Tests" time="0.002" tests="4" failures="0" skipped="1">
  <testsuite name="Root Suite" timestamp="2016-10-30T02:23:05" tests="0" failures="0" time="0">
  </testsuite>
  <testsuite name="mocha-test #1" timestamp="2016-10-30T02:23:05" tests="2" failures="0" time="0.002">
    <testcase name="mocha-test #1 sample test #1.1" time="0.002" classname="sample test #1.1">
    </testcase>
    <testcase name="mocha-test #1 sample test #1.2" time="0" classname="sample test #1.2">
    </testcase>
  </testsuite>
  <testsuite name="mocha-test #2" timestamp="2016-10-30T02:23:05" tests="2" failures="0" time="0">
    <testcase name="mocha-test #2 sample test #2.1" time="0" classname="sample test #2.1">
    </testcase>
  </testsuite>
</testsuites>%
```
