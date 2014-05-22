Pod::Spec.new do |s|
  s.name	 = 'pico'
  s.version      = "0.6.0"
  s.summary      = "A light iOS web service client framework."
  s.homepage     = "https://github.com/mmcgary/pico"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "bulldog" => "51startup@sina.com" }

  s.platform     = :ios, '6.0'

  s.source       = { :git => "https://github.com/mmcgary/pico.git", :tag => "0.6.0" }

  s.source_files  =  "pico/PicoSource/Core/**/*.{h,m}", "pico/PicoSource/SOAP/**/*.{h,m}", "pico/PicoSource/WebService/**/*.{h,m}" ,"pico/PicoSource/Vendor/XMLWriter/**/*.{h,m}", "pico/PicoSource/Vendor/OrderedDictionary/**/*.{h,m}" , "pico/PicoSource/Vendor/GDataXML/**/*.{h,m}"  
  s.libraries = 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }  

  s.dependency 'AFNetworking', '~> 2.0'

end
