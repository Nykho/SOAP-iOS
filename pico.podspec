Pod::Spec.new do |s|
  s.name	 = 'pico'
  s.version      = "0.5.1"
  s.summary      = "A light iOS web service client framework."
  s.homepage     = "https://github.com/andrewBatutin/pico"

  s.license      = "MIT" 

  s.authors      = { "andrewBatutin" => "abatutin@gmail.com", "bulldog" => "51startup@sina.com" }

  s.platform     = :ios, '6.0'

  s.source       = { :git => "https://github.com/andrewBatutin/pico.git", :tag => "v0.5.1" }


  s.source_files  = 'pico/PicoSource', 
  s.exclude_files = 'pico/PicoSource/Vendor/AFNetworking' , 'pico/PicoSource/Vendor/GDataXML', 'pico/PicoSource/Vendor/OrderedDictionary'


  s.dependency 'AFNetworking', '~> 2.0.2'
  s.dependency 'OrderedDictionary', '~> 1.1'
  s.dependency 'GDataXML-HTML', '~> 1.1.0'
end
