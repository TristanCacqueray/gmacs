// necessary footer to transform a spago build into a valid gnome extension
const env = PS["GMacs"].create();
function init() { PS["GMacs"].init(env)(); }
function enable() { PS["GMacs"].enable(env)(); }
function disable() { PS["GMacs"].disable(env)(); }
