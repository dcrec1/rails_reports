require 'spec_helper'

describe RailsReports do
  it "should respond 200 on /reports" do
    get "/reports"
    response.should be_successful
  end
end
