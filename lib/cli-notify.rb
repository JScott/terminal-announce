require 'rainbow'

module Announce
  def self.success(message)
    log :green, message
  end

  def self.failure(message)
    log :red, message
  end

  def self.warning(message)
    log :yellow, message
  end

  def self.info(message)
    log :light_blue, message
  end

  def self.log(color, message)
    p message
  end
end
