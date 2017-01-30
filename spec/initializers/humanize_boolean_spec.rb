require 'rails_helper'

describe TrueClass do
  it 'returns Yes' do
    expect(true.humanize).to eq('Yes')
  end
end

describe FalseClass do
  it 'returns No' do
    expect(false.humanize).to eq('No')
  end
end
