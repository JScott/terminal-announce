require 'teststrap'

context 'the output for' do
  setup { $stdout = StringIO.new }
  %w(success failure warning info).each do |method|
    context "Announce##{method}" do
      setup do
        begin
          Announce.send method.to_sym, 'hello world'
        rescue NoMethodError
        end
        $stdout.string
      end
      denies_topic.empty
      asserts_topic.matches /hello world/
      asserts('the output is colored') { topic =~ /\e\[/ }
    end
  end
end
