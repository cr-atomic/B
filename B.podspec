Pod::Spec.new do |s|
  s.name         = 'B'
  s.summary      = 'B业务'
  s.version      = '0.0.2'
  s.homepage     = 'https://github.com/cr-atomic/B'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { 'cocoaroger' => 'coacoaroger@gmail.com' }
  s.requires_arc = true
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/cr-atomic/B.git', :tag => s.version.to_s }

  s.source_files  = 'B/B/**/*.{h,m}'
end
