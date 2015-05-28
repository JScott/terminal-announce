require 'rainbow'

module Announce
  def self.method_missing(method)
    if methods.include? method
      send method.to_sym
    else
      super method
    end
  end
end
