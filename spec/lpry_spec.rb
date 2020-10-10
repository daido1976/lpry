RSpec.describe Lpry do
  it 'has a version number' do
    expect(Lpry::VERSION).not_to be nil
  end

  describe '.show_source' do
    context 'when passed the singleton method string' do
      it 'returns true' do
        require 'csv'
        expect(Lpry.show_source('CSV.open')).to eq(true)
      end
    end

    context 'when passed the invalid string' do
      it 'raises InvalidArgument' do
        expect { Lpry.show_source('') }.to raise_error(Lpry::InvalidArgument)
      end
    end
  end
end
