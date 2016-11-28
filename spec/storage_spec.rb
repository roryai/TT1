require 'spec_helper'

describe Storage do

  # storage = Storage.new

  it 'is able to store a value' do
    Storage.array << 1
    expect(Storage.array[1]).to equal 1
  end
end
