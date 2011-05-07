#encoding: utf-8

require 'helper'

class TestWtfLang < Test::Unit::TestCase
  should "return en language" do
    assert_equal "en", "ruby is so awesome!".lang
  end
  
  should "return ru language" do
    assert_equal "ru", "руби такой крутой!".lang
  end
  
  should "return jp language" do
    assert_equal "ja", "ルビーはとても素晴らしいです！".lang
  end
  
  should "return full language name" do
    assert_equal "RUSSIAN", "руби такой крутой!".full_lang
  end
  
  should "return assert language" do
    assert "ruby is so awesome!".en?
  end
  
  should "return confidence" do
    assert "руби такой крутой!".lang_confidence.kind_of? Array
  end
  
  should "return en language for symbol" do
    assert_equal "en", :"ruby is so awesome!".lang
  end
  
end
