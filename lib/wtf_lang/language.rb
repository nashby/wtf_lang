#encoding: utf-8

module WtfLang
  class Language
    attr_reader :lang, :confidence

    def initialize(lang, confidence)
      @lang = lang
      @confidence = confidence
    end

    def full_lang
      LANGUAGES.key(lang)
    end

    def lang_confidence
      [lang, confidence]
    end
  end
end
