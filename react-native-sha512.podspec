require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-sha512"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = "MIT"

  s.authors      = package['author']
  s.homepage     = "https://github.com/ChootyPutha/react-native-sha512"
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/ChootyPutha/react-native-sha512.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
end
