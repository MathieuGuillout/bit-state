bitstate = ({ init, set_true, set_false, check } = {}) ->
  val = if init? then init else true
  methods = {}
  methods[check or "is"]      = (check) -> val is check
  methods[set_true  or "yes"] = -> val = true
  methods[set_false or "no"]  = -> val = false
  methods

if exports?
  if module?.exports?
    exports = module.exports = bitstate
  exports.bitstate = bitstate
else
  this.bitstate = bitstate

