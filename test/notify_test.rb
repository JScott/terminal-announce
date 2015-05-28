require 'teststrap'

context 'the Announce module' do
  setup { $stdout = StringIO.new }
  %w(success failure warning info).each do |method|
    context "calling #{method}" do
      setup do
        begin
          Announce.send method.to_sym
        rescue NoMethodError
          $stdout.string || ''
        end
      end
      asserts('doing something') { not topic.empty? }
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
