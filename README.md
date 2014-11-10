
##_DISCLAIMER_
#### This library is still under construction. Beta testers are more than welcome.

# PICO

A light Web Service client framework targeting iOS platform.


## Feature Highlight
1. Support WSDL driven development, [code generator](https://github.com/bulldog2011/mwsc) tool is provided to auto-genearte strongly typed proxy from WSDL. 
2. Support SOAP 1.1/1.2 and XML based web service. 
3. Support automatic SOAP/XML to Objective-C object binding, performance is better than iOS native XML parser.
4. Built on popular and mature [AFNetworking](https://github.com/AFNetworking/AFNetworking) library for iOS.
5. Has been verified with industrial level Web Service like Amazon ECommerce Web Serivce and eBay Finding/Shopping/Trading Web Service. 
6. Support asychronous service invocation, flexible HTTP/SOAP header setting, timeout setting, encoding setting, logging, etc.

## The Big Picture
![The Big Picture](http://bulldog2011.github.com/images/pico/big_picture.png)


## Adding Pico to Your Project
You have a few options:

####Include the whole Pico source in your project 
If you use this option, make sure:   

1. In Target Build Setting, add the `-ObjC` flag to your "Other Linker flags".
2. In Target Build Setting, add `/usr/include/libxml2` to your "Header Search Paths"
3. In Target Build Phases, link binary with library `libxml2.dylib`

####Add Pico xcodeproj to your project/workspace and reference Pico as a static library
If you use this option, make sure:   

1. In Target Build Setting, add the Pico source path to your "User Header Search Paths", choose "recursive" search path.
2. In Target Build Phases, link binary with library `libxml2.dylib`
3. In Target Build Phases, link binary with library `libPico.a`
4. You might also need to add Pico to the Traget Dependencies list.



##WSDL Driven Development Flow
1. Genearte Objective-C proxy from WSDL
2. Create new iOS project, add Pico runtime and generated proxy into your project
4. Implement appliction logic and UI, call proxy to invoke web service as needed.

##Example Usage
After the service proxy is generated from wsdl, service invocation through Pico runtime is extremely easy:

``` objective-c

        // start progress activity
        [self.view makeToastActivity];
        
        // Get shared service client
        StockQuoteServiceClient *client = [StockQuoteServiceClient sharedClient];
        client.debug = YES; // enable request/response message logging
        
        // Build request object
        GetQuote *request = [[[GetQuote alloc] init] autorelease];
        request.symbol = _symbolText.text;
        
        // make API call and register callbacks
        [client getQuote:request success:^(GetQuoteResponse *responseObject) {
            
            // stop progress activity
            [self.view hideToastActivity];
            
            // show result
            _resultText.text = responseObject.getQuoteResult;
        } failure:^(NSError *error, id<PicoBindable> soapFault) {
            
            // stop progress activity
            [self.view hideToastActivity];
            
            if (error) { // http or parsing error
                [self.view makeToast:[error localizedDescription] duration:3.0 position:@"center" title:@"Error"];
            } else if (soapFault) {
                SOAP11Fault *soap11Fault = (SOAP11Fault *)soapFault;
                [self.view makeToast:soap11Fault.faultstring duration:3.0 position:@"center" title:@"SOAP Fault"];
            }
        }];
        
```

## Sample List
All samples are in the [Examples](https://github.com/bulldog2011/pico/tree/master/Examples) folder, following samples are included:

* StockQuote - Demo app using [StockQueue](http://www.webservicex.net/ws/WSDetails.aspx?CATID=2&WSID=9) SOAP web serivce from webserviceX.NET.
* CurrencyConverter - Demo app using [CurrencyConverter](http://www.webservicex.net/ws/WSDetails.aspx?CATID=2&WSID=10) SOAP web service from webserviceX.NET.
* BarCode - Demo app using [BarcodeGenerator](http://www.webservicex.net/ws/WSDetails.aspx?CATID=8&WSID=76) SOAP web serivce from webserviceX.NET
* Weather - Demo app using [Weather](http://wsf.cdyne.com/WeatherWS/Weather.asmx) SOAP web serivce from wsf.cdyne.com
* eBayFinding - Hello world like sample using [eBay Finding API](https://www.x.com/developers/ebay/products/finding-api) SOAP call.
* eBayShopping - Hello world like sample using [eBay Shopping API](https://www.x.com/developers/ebay/products/shopping-api) XML call.
* AWSECommerce - Hello world like sample using [Amazon Product Advertising API](https://affiliate-program.amazon.com/gp/advertising/api/detail/main.html) SOAP call.
* eBayDemoApp - Sample eBay Search App using both eBay Finding API and eBay Shopping API.
* AWSECDemoApp - Sample Amazon Book search and purchase app using Amazon Product Advertising API.

##Docs
1. [Wsdl Driven Development on iOS - the Big Picture](http://bulldog2011.github.com/blog/2013/03/25/wsdl-driven-development-on-ios-the-big-picture/)
2. [Pico Tutorial 1 - A StockQuote Sample](http://bulldog2011.github.com/blog/2013/03/27/pico-tutorial-a-stockquote-sample/)
3. [Pico Tutorial 2 - A CurrencyConverter Sample](http://bulldog2011.github.com/blog/2013/03/28/pico-tutorial-2-a-currency-converter-sample/)
4. [Pico Tutorial 3 - Hello eBay Finding Service](http://bulldog2011.github.com/blog/2013/03/29/pico-tutorial-3-hello-ebay-finding/)
5. [Pico Tutorial 4 - Hello eBay Shopping Service](http://bulldog2011.github.com/blog/2013/03/30/pico-tutorial-4-hello-ebay-shopping/)
6. [Pico Tutoiral 5 - Hello Amazon Product Advertising API](http://bulldog2011.github.com/blog/2013/03/31/pico-tutoiral-5-hello-amazon-product-advertising-api/)
7. [Pico and eBay Trading API integration How To](http://bulldog2011.github.com/blog/2013/04/01/pico-and-ebay-trading-api-integration-how-to/)
8. [Easy Web Service on iOS with Pico[ppt]](http://www.slideshare.net/yang75108/easy-web-serivce-on-ios-with-pico)

##Mapping between XML Schema Types and Objective-C Types 

<table>
<tr><th>XML Schema Data Types</th><th>Objective-C Data Types</th></tr>
<tr>
    <td>xsd:base64Binary</td>
    <td>NSData</td>
</tr>
<tr>
    <td>xsd:boolean</td>
    <td>NSNumber with bool value</td>
</tr>
<tr>
    <td>xsd:byte</td>
    <td>NSNumber</td>
</tr>
<tr>
    <td>xsd:date</td>
    <td>NSDate</td>
</tr>
<tr>
    <td>xsd:dateTime</td>
    <td>NSDate</td>
</tr>
<tr>
    <td>xsd:decimal</td>
    <td>NSNumber with double value</td>
</tr>
<tr>
    <td>xsd:double</td>
    <td>NSNumber with double value</td>
</tr>
<tr>
    <td>xsd:duration</td>
    <td>NSString</td>
</tr>
<tr>
    <td>xsd:float</td>
    <td>NSNumber with float value</td>
</tr>
<tr>
    <td>xsd:g</td>
    <td>NSDate</td>
</tr>
<tr>
    <td>xsd:hexBinary</td>
    <td>NSData</td>
</tr>
<tr>
    <td>xsd:int</td>
    <td>NSNumber with int value</td>
</tr>
<tr>
    <td>xsd:integer</td>
    <td>NSNumber with long value</td>
</tr>
<tr>
    <td>xsd:long</td>
    <td>NSNumber with long value</td>
</tr>
<tr>
    <td>xsd:NOTATION</td>
    <td>NSString</td>
</tr>
<tr>
    <td>xsd:Qname</td>
    <td>NSString</td>
</tr>
<tr>
    <td>xsd:short</td>
    <td>NSNumber with short value</td>
</tr>
<tr>
    <td>xsd:string</td>
    <td>NSString</td>
</tr>
<tr>
    <td>xsd:time</td>
    <td>NSDate</td>
</tr>
<tr>
    <td>xsd:unsignedByte</td>
    <td>NSNumber with short value</td>
</tr>
<tr>
    <td>xsd:unsignedInt</td>
    <td>NSNumber with long value</td>
</tr>
<tr>
    <td>xsd:unsignedShort</td>
    <td>NSNumber with int value</td>
</tr>
</table>



##Compatibility

1. Pico 0.5 and higher requires [iOS 4.0](http://developer.apple.com/library/ios/#releasenotes/General/WhatsNewIniOS/Articles/iPhoneOS4.html) and above.  
2. ARC([Automatic Reference Counting](http://en.wikipedia.org/wiki/Automatic_Reference_Counting)) is not supported yet



## Version History

#### 0.5.1 — *November 10, 2014*

  * Cocoapods Support

#### 0.5.0 — *March 25, 2013*

  * Initial version:)
  


##Current Limitation
1. ARC([Automatic Reference Counting](http://en.wikipedia.org/wiki/Automatic_Reference_Counting)) is not supported yet.
2. Only Document/Literal style Web Service is support, RPC style Web Serivice is not supported.
3. SOAP attachment is not supported

##Related project
1. [Pico proxy for Amazon Product Advertising API](https://github.com/bulldog2011/PicoAWSECommerceServiceClient)
2. [Pico proxy for eBay Finding API](https://github.com/bulldog2011/PicoEBayFindingClient)
3. [Pico proxy for eBay Shopping API](https://github.com/bulldog2011/PicoEBayShoppingClient)
4. [Pico proxy for eBay Trading API](https://github.com/bulldog2011/PicoEBayTradingClient)


##Copyright and License
(The MIT License)

Copyright (c) 2013 Leansoft Technology <51startup@sina.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 
