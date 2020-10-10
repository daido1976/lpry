RSpec.describe Lpry do
  it "has a version number" do
    expect(Lpry::VERSION).not_to be nil
  end

  it "says hello world" do
    expect(Lpry.greet).to eq('Hello world!')
  end
end
