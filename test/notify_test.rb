require 'teststrap'

context 'the Announce module' do
  setup { $stdout = StingIO.new }
  %w(success failure warning info).each do |method|
    context 'calling #{method}' do
      setup do
        Announce.send method.to_sym
        $stdout.string
      end
      asserts('doing something') { p topic; not topic.empty? }
    end
  end
end

# notify
# aliases
# custom attributes
# custom colours

# def self.notify(type = :success, string)
#     colors = {
#       success: :green,
#       failure: :red,
#       warning: :yellow,
#       info: :light_blue
#     }
#     color = colors[type] || ''
#     puts "[#{type.to_s.capitalize.colorize(color)}] #{string}"
#   end
