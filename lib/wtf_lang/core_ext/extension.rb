module WtfLang
  module Extension

    require "wtf_lang/api"
    require "wtf_lang/languages"

    def detect_lang
      @detected_lang ||= WtfLang::API.detect self
    end

    def lang
      detect_lang && detect_lang.lang
    end

    def full_lang
      detect_lang && detect_lang.full_lang
    end

    def lang_confidence
      detect_lang && detect_lang.lang_confidence
    end

    WtfLang::LANGUAGES.each do |full_lang_name, code_lang_name|
      self.class_eval <<-RUBY, __FILE__, __LINE__ + 1
        def #{code_lang_name}?
          lang && lang == "#{code_lang_name}"
        end

        def #{full_lang_name}?
          full_lang && full_lang == "#{full_lang_name}"
        end
      RUBY
    end
  end
end
