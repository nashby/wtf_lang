#encoding: utf-8

require "wtf_lang/api"
require "wtf_lang/languages"

class String
  def lang
    WtfLang::API.lang self
  end
  
  def full_lang
    WtfLang::LANGUAGES.key(WtfLang::API.lang self)
  end
  
  def lang_confidence
    WtfLang::API.lang_confidence self
  end
  
  WtfLang::LANGUAGES.each do |lang, code|
    self.class_eval <<-RUBY
        def #{code}?
          WtfLang::API.lang(self) == "#{code}"
        end
    RUBY
  end
end