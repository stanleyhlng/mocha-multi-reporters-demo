/* global require, describe, it */
/* jshint -W030 */

var chai = require('chai'),
    expect = chai.expect;

describe('mocha-test #1', function() {

    it('sample test #1.1', function(done) {
        expect(true).to.be.true;
        done();
    });

    it('sample test #1.2', function(done) {
        expect(true).to.be.true;
        done();
    });

});

describe('mocha-test #2', function() {

    it('sample test #2.1', function(done) {
        expect(true).to.be.true;
        done();
    });

    it.skip('sample test #2.2', function(done) {
        expect(true).to.be.true;
        done();
    });

});
