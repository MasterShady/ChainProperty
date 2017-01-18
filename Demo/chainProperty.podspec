
Pod::Spec.new do |s|
  s.name         = 'ChainProperty'
  s.version      = '1.0.2'
  s.summary      = 'no summary'
  s.homepage     = 'https://github.com/MasterShady/ChainProperty'
  s.license      = 'MIT'
  s.platform     = :ios
  s.author       = {'ShadyLew' => 'shady19920130@hotmail.com'}
  s.ios.deployment_target = '8.0'
  s.source       = {:git => 'https://github.com/MasterShady/ChainProperty.git', :tag => s.version}
  s.source_files = 'ChainProperty/*.{h,m}'
  s.requires_arc = true
  s.frameworks   = 'UIKit'
end
