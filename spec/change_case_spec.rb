# frozen_string_literal: true

RSpec.describe ChangeCase do
  it "has a version number" do
    expect(ChangeCase::VERSION).not_to be nil
  end

  it "converts 'test string' to any case" do
    str = "test string"
    expect(ChangeCase.camel(str)).to eq("testString")
    expect(ChangeCase.capital(str)).to eq("Test String")
    expect(ChangeCase.constant(str)).to eq("TEST_STRING")
    expect(ChangeCase.dot(str)).to eq("test.string")
    expect(ChangeCase.kebab(str)).to eq("test-string")
    expect(ChangeCase.no(str)).to eq("test string")
    expect(ChangeCase.pascal(str)).to eq("TestString")
    expect(ChangeCase.pascal_snake(str)).to eq("Test_String")
    expect(ChangeCase.path(str)).to eq("test/string")
    expect(ChangeCase.sentence(str)).to eq("Test string")
    expect(ChangeCase.snake(str)).to eq("test_string")
    expect(ChangeCase.train(str)).to eq("Test-String")
  end

  it "converts 'TestV2' to any case" do
    str = "TestV2"
    expect(ChangeCase.camel(str)).to eq("testV2")
    expect(ChangeCase.capital(str)).to eq("Test V2")
    expect(ChangeCase.constant(str)).to eq("TEST_V2")
    expect(ChangeCase.dot(str)).to eq("test.v2")
    expect(ChangeCase.kebab(str)).to eq("test-v2")
    expect(ChangeCase.no(str)).to eq("test v2")
    expect(ChangeCase.pascal(str)).to eq("TestV2")
    expect(ChangeCase.pascal_snake(str)).to eq("Test_V2")
    expect(ChangeCase.path(str)).to eq("test/v2")
    expect(ChangeCase.sentence(str)).to eq("Test v2")
    expect(ChangeCase.snake(str)).to eq("test_v2")
    expect(ChangeCase.train(str)).to eq("Test-V2")
  end

  it "converts '_foo_bar_' to any case" do
    str = "_foo_bar_"
    expect(ChangeCase.camel(str)).to eq("fooBar")
    expect(ChangeCase.capital(str)).to eq("Foo Bar")
    expect(ChangeCase.constant(str)).to eq("FOO_BAR")
    expect(ChangeCase.dot(str)).to eq("foo.bar")
    expect(ChangeCase.kebab(str)).to eq("foo-bar")
    expect(ChangeCase.no(str)).to eq("foo bar")
    expect(ChangeCase.pascal(str)).to eq("FooBar")
    expect(ChangeCase.pascal_snake(str)).to eq("Foo_Bar")
    expect(ChangeCase.path(str)).to eq("foo/bar")
    expect(ChangeCase.sentence(str)).to eq("Foo bar")
    expect(ChangeCase.snake(str)).to eq("foo_bar")
    expect(ChangeCase.train(str)).to eq("Foo-Bar")
  end

  it "converts 'version 1.2.10' to any case" do
    str = "version 1.2.10"
    expect(ChangeCase.camel(str)).to eq("version1210") # version_1_2_10
    expect(ChangeCase.capital(str)).to eq("Version 1 2 10")
    expect(ChangeCase.constant(str)).to eq("VERSION_1_2_10")
    expect(ChangeCase.dot(str)).to eq("version.1.2.10")
    expect(ChangeCase.kebab(str)).to eq("version-1-2-10")
    expect(ChangeCase.no(str)).to eq("version 1 2 10")
    expect(ChangeCase.pascal(str)).to eq("Version1210") # Version_1_2_10
    expect(ChangeCase.pascal_snake(str)).to eq("Version_1_2_10")
    expect(ChangeCase.path(str)).to eq("version/1/2/10")
    expect(ChangeCase.sentence(str)).to eq("Version 1 2 10")
    expect(ChangeCase.snake(str)).to eq("version_1_2_10")
    expect(ChangeCase.train(str)).to eq("Version-1-2-10")
  end
end
