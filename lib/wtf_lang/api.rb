#encoding: utf-8

require 'net/http'
require 'json'
require 'cgi'

module WtfLang
  class API
  
    BASE_URL = "http://www.google.com/uds/GlangDetect"
    VERSION = "?v=1.0"
    
    class << self
      def get_url(text)
        BASE_URL+VERSION+"&q="+CGI.escape(text)
      end
      
      def send(text)
        Net::HTTP.get(URI.parse(get_url(text)))
      end
      
      def parse(response)
        JSON.parse(response)
      end
      
      def detect(text)
        response = send(text)
        parse(response)
      end
      
      def lang(text)
        detect(text)["responseData"]["language"]
      end
      
      #A numeric value between 0-1.0 that represents the confidence level in the language code for the given text.
      def lang_confidence(text)
        [detect(text)["responseData"]["language"], detect(text)["responseData"]["confidence"]]
      end
      
    end
  end
end