#encoding: utf-8

require 'test_helper'

describe WtfLang do
  before do
    WtfLang::API.key = 'demo'

    VCR.insert_cassette('translation_api')
  end

  after do
    VCR.eject_cassette
  end

  it "returns en language" do
    assert_equal "en", "ruby is so awesome!".lang
  end

  it "returns ru language" do
    assert_equal "ru", "руби такой крутой!".lang
  end

  it "returns jp language" do
    assert_equal "ja", "ルビーはとても素晴らしいです！".lang
  end

  # it "returns eo language" do
  #   assert_equal "eo", "Eĥoŝanĝo ĉiŭĵaŭde!".lang
  # end

  # it "returns esperanto language" do
  #   assert_equal "esperanto", "Esperanton ĉiuj parolos!".full_lang
  # end

  it "returns full language name" do
    assert_equal "russian", "руби такой крутой!".full_lang
  end

  it "returns assert language" do
    assert "ruby is so awesome!".en?
  end

  it "returns assert with full language name" do
    assert "ruby is so awesome!".english?
  end

  it "returns confidence" do
    assert "руби такой крутой!".lang_confidence.kind_of? Array
  end

  it "returns en language for symbol" do
    assert_equal "en", :"ruby is so awesome!".lang
  end

  it 'returns nil if there is no transation' do
    assert_nil "1234".lang
  end
end
