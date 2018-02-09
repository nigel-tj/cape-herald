require "test_helper"

describe InternationalFeature do
  let(:international_feature) { InternationalFeature.new }

  it "must be valid" do
    value(international_feature).must_be :valid?
  end
end
