require 'teststrap'

context 'the Announce module' do
  setup { $stdout = StringIO.new }
  %w(success failure warning info).each do |method|
    context "calling #{method}" do
      setup do
        begin
          Announce.send method.to_sym, 'hello world'
        rescue NoMethodError
        end
        $stdout.string
      end
      asserts('doing something') { not topic.empty? }
      asserts('printing the message') { p topic; topic =~ /hello world/ }
    end
  end
end
