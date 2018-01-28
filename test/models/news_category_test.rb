require "test_helper"

describe NewsCategory do
  let(:news_category) { NewsCategory.new }

  it "must be valid" do
    value(news_category).must_be :valid?
  end
end
