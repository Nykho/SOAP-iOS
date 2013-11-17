Pod::Spec.new do |s|
  s.name	 = 'pico'
  s.version      = "0.5.2"
  s.summary      = "A light iOS web service client framework."
  s.homepage     = "https://github.com/andrewBatutin/pico"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "andrewBatutin" => "abatutin@gmail.com", "bulldog" => "51startup@sina.com" }

  s.platform     = :ios, '6.0'

  s.source       = { :git => "https://github.com/andrewBatutin/pico.git", :tag => "v0.5.2.1" }


  s.source_files  = 'pico/PicoSource/**/*.{h.m}', 
  s.exclude_files = 'pico/PicoSource/Vendor/AFNetworking/*{h,m}'
  s.exclude_files = 'pico/PicoSource/Vendor/GDataXML/*{h.m}'
  s.exclude_files = 'pico/PicoSource/Vendor/OrderedDictionary/*{h,m}'

#  s.libraries = 'xml2'
#  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }  

  s.dependency 'AFNetworking', '~> 2.0.2'
  s.dependency 'OrderedDictionary', '~> 1.1'
  s.dependency 'GDataXML-HTML', '~> 1.1.0'

end
