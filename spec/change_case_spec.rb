# frozen_string_literal: true

RSpec.describe ChangeCase do
  it "has a version number" do
    expect(ChangeCase::VERSION).not_to be nil
  end

  it "does something useful" do
    str = "test string"
    expect(ChangeCase.camel(str)).to eq("testString")
    expect(ChangeCase.capital(str)).to eq("Test String")
    expect(ChangeCase.constant(str)).to eq("TEST_STRING")
    expect(ChangeCase.dot(str)).to eq("test.string")
    expect(ChangeCase.kebab(str)).to eq("test-string")
    expect(ChangeCase.no(str)).to eq("test string")
    expect(ChangeCase.pascal(str)).to eq("TestString")
    expect(ChangeCase.path(str)).to eq("test/string")
    expect(ChangeCase.sentence(str)).to eq("Test string")
    expect(ChangeCase.snake(str)).to eq("test_string")
    expect(ChangeCase.train(str)).to eq("Test-String")
  end
end
