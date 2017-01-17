Pod::Spec.new do |spec|
  spec.name         = 'ChainProperty'
  spec.version      = '1.0.0'
  spec.license      = 'MIT'
  spec.homepage     = 'https://github.com/MasterShady/ChainProperty'
  spec.authors      = { 'ShadyLew' => 'shady19920130@hotmail.com' }
  spec.summary      =  'set common property by dot'
  spec.source       = { :git => 'https://github.com/MasterShady/ChainProperty.git', :tag => 'v1.0.0’ }
  spec.source_files = 'ChainProperty/ChainProperty/ChainProperty'
  spec.requires_arc = true
  spec.platform     = :ios
end
