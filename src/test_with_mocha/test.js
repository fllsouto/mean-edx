var assert = require('assert');

describe('Array', function() {
  describe('#indexOf()', function () {
    it('should return -1 when the value is not present', function () {
      assert.equal(-1, [1,2,3].indexOf(5));
      assert.equal(-1, [1,2,3].indexOf(0));
    });

    it('should return the position when the value is present', function () {
      assert.equal(0, [1,2,3].indexOf(1));
      assert.equal(1, [1,2,3].indexOf(2));
      assert.equal(2, [1,2,3].indexOf(3));
    });
  });
});

describe('my feature', function() {
  it('works', function() {
    assert.equal('A', 'A');
  });

  it('fails gracefully', function() {
    assert.throws(function() {
      throw 'Error!';
    });
  });
});

describe('my other feature', function() {
  it('async', function() {
    setTimeout(function() {
      done()
    }, 25);
  });
});
