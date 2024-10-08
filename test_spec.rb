require 'rspec'
require_relative 'converter'

include Converter

describe 'Convert from any base to decimal' do
  it 'convert decimal as it is' do
    expect(convert('1', 10)).to eq '1'.to_i(10)
  end

  it 'convert binary to decimal' do
    expect(convert('10', 2)).to eq '10'.to_i(2)
  end

  it 'convert octal to decimal' do
    expect(convert('10', 8)).to eq '10'.to_i(8)
  end

  it 'convert hexadecimal to decimal' do
    expect(convert('10', 16)).to eq '10'.to_i(16)
  end

  it 'convert base 36 to decimal' do
    expect(convert('10', 36)).to eq '10'.to_i(36)
  end

  it 'convert base 36 to decimal' do
    expect(convert('z', 36)).to eq 'z'.to_i(36)
  end

  it 'convert base 36 to decimal' do
    expect(convert('z1', 36)).to eq 'z1'.to_i(36)
  end

  it 'convert 01010101 to decimal' do
    expect(convert('01010101', 2)).to eq '01010101'.to_i(2)
  end

  it 'convert 01010 to decimal' do
    expect(convert('01010', 2)).to eq 10
  end

  it 'convert A10101F to decimal' do
    expect(convert('A10101F', 16)).to eq 'A10101F'.to_i(16)
  end
end
