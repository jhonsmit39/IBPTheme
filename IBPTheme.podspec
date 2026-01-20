#
# Be sure to run `pod lib lint IBPTheme.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IBPTheme'
  s.version          = '1.0.2'
  s.summary          = 'A short description of IBPTheme.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/jhonsmit39/IBPTheme'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kenvinfly' => 'kenvinfly@gmail.com' }
  s.source           = { :git => 'git@github.com:jhonsmit39/IBPTheme.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '15.0'

  s.subspec 'Public' do |ss|
      ss.source_files = 'IBPTheme/Classes/Public/**/*'
  end
  
  s.subspec 'Theme' do |ss|
     ss.source_files = 'IBPTheme/Classes/Theme/**/*'
  end
  
  s.subspec 'Manager' do |ss|
      ss.source_files = 'IBPTheme/Classes/Manager/**/*'
  end
  
  s.subspec 'Infrastructure' do |ss|
      ss.source_files = 'IBPTheme/Classes/Infrastructure/**/*'
  end
  
  s.subspec 'UIKitSwiftUIBridge' do |ss|
      ss.source_files = 'IBPTheme/Classes/UIKitSwiftUIBridge/**/*'
  end
  
  # s.resource_bundles = {
  #   'IBPTheme' => ['IBPTheme/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
