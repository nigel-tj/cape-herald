require "test_helper"

describe LocalFeature do
  let(:local_feature) { LocalFeature.new }

  it "must be valid" do
    value(local_feature).must_be :valid?
  end
end
