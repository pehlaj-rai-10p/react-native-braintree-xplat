require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-braintree-xplat"
  s.version      = package['version']
  s.summary      = "React Native Date Picker component for Android and iOS"

  s.authors      = { "henninghall" => "henning.hall@hotmail.com" }
  s.homepage     = "https://github.com/kraffslol/react-native-braintree-xplat"
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/kraffslol/react-native-braintree-xplat.git" }

  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'Braintree', '~> 4.11.0'
  s.dependency 'BraintreeDropIn'
  s.dependency 'Braintree/PayPal'
  s.dependency 'Braintree/3D-Secure'
  s.dependency 'Braintree/DataCollector'

  s.dependency 'React'
end
