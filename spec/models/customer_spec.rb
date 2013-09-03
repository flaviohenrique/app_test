# encoding: UTF-8

require 'spec_helper'

describe Customer do
  before do
    response_body = File.read("#{Rails.root}/spec/fixtures/customer.json")

    stub_request(:get, "http://localhost/customers/1.json")
      .to_return(:status => 200, :body => response_body)
  end

  it "teste" do
    customer = Customer.find(1)
    puts customer.phones
  end
end