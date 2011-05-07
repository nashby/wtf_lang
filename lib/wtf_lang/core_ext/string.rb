#encoding: utf-8

require "wtf_lang/api"
require "wtf_lang/languages"

class String
  def detect_lang
    @detected_lang ||= WtfLang::API.detect self
  end
  
  def lang
    detect_lang.lang
  end
  
  def full_lang
    detect_lang.full_lang
  end
  
  def lang_confidence
    detect_lang.lang_confidence
  end
  
  WtfLang::LANGUAGES.each do |lang, code|
    self.class_eval <<-RUBY
        def #{code}?
          lang == "#{code}"
        end
    RUBY
  end
end