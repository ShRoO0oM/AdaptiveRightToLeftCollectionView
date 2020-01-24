#
# Be sure to run `pod lib lint AdaptiveRightToLeftCollectionView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AdaptiveRightToLeftCollectionView'
  s.version          = '0.1.0'
  s.summary          = 'Right to left aligned UICollectionViewFlowLayout'

  s.homepage         = 'https://github.com/mohammadz74/AdaptiveRightToLeftCollectionView'
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mohammadz74' => 'mohammad_z74@icloud.com' }
  s.source           = { :git => 'https://github.com/mohammadz74/AdaptiveRightToLeftCollectionView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'

  s.source_files = 'AdaptiveRightToLeftCollectionView/Classes/**/*'
  
  
end
