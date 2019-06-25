module Extractor
    require 'open-uri'
    require 'openssl'
    require 'json'
    require 'nokogiri'

    def getDoc(url)
        return Nokogiri::HTML(open(url, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE))
    end

    def getTag(doc, tag)
        if tag == "href"
           docTags = doc.css('a').map { |link| link['href'].squish }.to_json
        else
            docTags = doc.css(tag).map { |t| t.text.squish}.to_json
        end
        return docTags
    end
end
