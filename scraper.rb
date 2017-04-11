require 'everypolitician'
require 'wikidata/fetcher'

en = WikiData::Category.new( "Category:Members of the People's Council of Syria", 'en').member_titles |
     WikiData::Category.new( "Category:Speakers of the People's Council of Syria", 'en').member_titles

ar = WikiData::Category.new( 'تصنيف:أعضاء مجلس الشعب السوري', 'ar').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { ar: ar, en: en })

