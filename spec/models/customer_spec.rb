# encoding: UTF-8

require 'spec_helper'

describe Customer do
  before do
    stub_request(:get, "http://localhost/customers/1.json")
      .to_return(:status => 200, :body => File.read("#{Rails.root}/spec/fixtures/customer.json"))

    stub_request(:get, "http://localhost/customers.json")
      .to_return(:status => 200, :body => File.read("#{Rails.root}/spec/fixtures/customers.json"))

    stub_request(:get, "http://localhost/days.json")
      .to_return(:status => 200, :body => File.read("#{Rails.root}/spec/fixtures/days.json"))

  end

  it "teste 1" do
    customer = Customer.find(1)
    puts customer.opt_in_locaweb
    puts customer.manager_id
    puts Customer.headers
  end

  it "teste 2" do
    customers = Customer.find(:all)
    puts customers.first.login
  end

  it "teste 3" do
    days = Day.where(from: 20111224, to: 20111225)
    puts days.inspect
  end

end