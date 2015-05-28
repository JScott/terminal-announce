require 'rainbow'

module Announce
  def self.color_for(type)
    {
      success: :green,
      failure: :red,
      warning: :yellow,
      info: :cyan
    }[type]
  end

  def self.create_prefix_for(type)
    color = color_for type
    text = type.to_s.capitalize
    "[#{Rainbow(text).color(color)}]"
  end

  def self.success(message)
    log :success, message
  end

  def self.failure(message)
    log :failure, message
  end

  def self.warning(message)
    log :warning, message
  end

  def self.info(message)
    log :info, message
  end

  def self.log(type, message)
    puts "#{prefix_for type} #{message}"
  end
end
