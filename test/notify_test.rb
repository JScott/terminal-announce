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
      denies_topic('the output').empty
      asserts_topic('the output').matches /hello world/
      asserts('coloring the output') { topic =~ /\\e\[/ }
    end
  end
end
