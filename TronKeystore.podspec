#
# Be sure to run `pod lib lint TronKeystore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TronKeystore'
  s.version          = '0.2.0'
  s.summary          = 'A general-purpose Ethereum keystore for managing wallets.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = 'https://github.com/xuchina67/TronKeystore'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xuchina67' => 'elon.xu@tron.network' }
  s.source           = { :git => 'https://github.com/xuchina67/TronKeystore.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform = :ios, '10.0'
  s.ios.deployment_target = '10.0'
  
  s.source_files = 'TronKeystore/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TronKeystore' => ['TronKeystore/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'BigInt'
  s.dependency 'CryptoSwift'
  s.dependency 'TrezorCrypto'
  s.dependency 'TronCore'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
end
