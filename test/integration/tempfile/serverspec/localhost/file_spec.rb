# Encoding: UTF-8

require 'spec_helper'

describe file('/tmp/testing_kitchen_localhost') do
  it 'exists' do
    expect(subject).to be_file
  end

  it 'contains the expected content' do
    expect(subject.content).to match('This file generated by Chef')
  end
end
