// Generated by CoffeeScript 1.8.0

/*! Abistract 0.0.1 //// MIT licence //// github.com/abisharp //// */

(function() {
  var Abistract, I, VERSION, env, log, toType;

  I = 'Abistract';

  VERSION = '0.0.1';

  env = {
    has: {}
  };

  env.has.global = 'object' === typeof global;

  env.has.window = !('object' !== typeof window || (env.has.global && global.window));

  env.global = env.has.global && !env.has.window ? global : this;

  log = console.log.bind(console);

  toType = function(x) {
    return {}.toString.call(x).match(/\s([a-z|A-Z]+)/)[1].toLowerCase();
  };

  Abistract = (function() {
    Abistract.prototype.I = 'Abistract';

    Abistract.prototype.toString = function(renderer) {
      if (renderer) {
        return renderer.call(this);
      } else {
        return "[object " + this.I + "]";
      }
    };

    function Abistract(opt) {
      if (opt == null) {
        opt = {};
      }
    }

    Abistract.prototype.xx = function() {};

    return Abistract;

  })();

  if ('function' === typeof define && define.amd) {
    define(function() {
      return Abistract;
    });
  } else if ('object' === typeof module && module && module.exports) {
    module.exports = Abistract;
  } else {
    env.global.Abistract = Abistract;
  }

}).call(this);
