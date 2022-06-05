# typed: false
describe Example::Sample do
  describe "#static" do
    it 'returns static data' do 
      s = Example::Sample.new
      expect(s.static).to eq("Hello World!")
    end
  end
end
