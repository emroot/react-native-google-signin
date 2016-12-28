require "json"

package = JSON.parse(File.read(File.join(__dir__, "../", "package.json")))

Pod::Spec.new do |spec|
  spec.name         = 'react-native-google-signin'
  spec.version      = package["version"]
  spec.license      = package["license"]
  spec.homepage     = 'https://github.com/devfd/react-native-google-signin'
  spec.summary      = package["description"]
  spec.platform     = :ios, "8.0"
  spec.author       = "Apptailor <apptailor.co@gmail.com>"
  spec.source       = {
   :git => 'https://github.com/devfd/react-native-google-signin.git',
   :tag => spec.version
  }
  spec.source_files = 'RNGoogleSignin/*.{h,m}'
  spec.dependency 'Google/SignIn'
  spec.dependency 'React'
end
