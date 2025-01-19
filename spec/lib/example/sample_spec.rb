# typed: strict
# frozen_string_literal: true

describe Example::Sample do
  describe "#static" do
    include RSpec::Matchers
    it 'returns static data' do
      s = Example::Sample.new
      expect(s.static).to eq("Hello World!")
    end
  end
end
