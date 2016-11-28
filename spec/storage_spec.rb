require 'spec_helper'

describe Storage do

  storage = Storage.new

  it 'is able to store a value' do
    storage.array << 1
    expect(storage.array[0]).to equal 1
  end
end
