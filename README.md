#Description

The [jQuery documentation for the jQuery.ajax function](http://api.jquery.com/jQuery.ajax/) contains the following caveat for the **type** property:

> **Note**: Other HTTP request methods, such as PUT and DELETE, can also be used here, but they are not supported by all browsers. 

Many StackOverflow answers reference this, without detailing which browsers this affects. So I made this simple test to run on Browsercam to try it out on as many browsers as possible.


##In depth description

This test uses Sinatra to create a server accepting GET, POST, PUT and DELETE requests. It also serves a static HTML file that uses jQuery to attempt to create AJAX requests for each of those queries. If the request arrives using the correct HTTP verb, the entry is highlighted green. Otherwise, it's highlighted red. It's about 10 lines of Ruby and 20 lines of Javascript.

#Result
## Pass
The following browsers are actively supported by jQuery and pass the test:

* Firefox [3.6](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333621.jpg), [4](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333631.jpg)
* Safari [3](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333617.jpg), [4](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333618.jpg), [5](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333623.jpg)
* Internet Explorer [6](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333627.jpg), [7](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333629.jpg), [8](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333636.jpg), [9](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333637.jpg)
* Opera [9.6](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333619.jpg), [10](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333624.jpg), [10.5](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333634.jpg)
* Chrome [8](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333638.jpg), [9](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333639.jpg)

## Fail
The following browsers are actively supported by jQuery, but fail the test:

* Firefox [2](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333616.jpg)

## Fail (not actively supported by jQuery)
The following browsers are not actively supported by jQuery, and fail:

* Firefox [1.5](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333611.jpg) (Runs the test, fails)
* Internet Explorer [5.2](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333615.jpg), [5](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333625.jpg) & [5.5](https://github.com/eddhannay/HTTP-Verb-test/blob/master/result/25333626.jpg) (Test does not run)
* Safari [1.3](25333614.jpg) (Test does not run)

# Running the test
Requirement: [Sinatra](https://github.com/sinatra/sinatra/)

    ruby -rubygems index.rb
