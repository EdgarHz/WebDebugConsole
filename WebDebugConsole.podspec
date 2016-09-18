
Pod::Spec.new do |s|

  s.name     = 'WebDebugConsole'
  s.version  = '0.0.1'
  s.license  = 'BSD'
  s.summary  = 'subspec of cocoaLumberjace, escape circle dependency'
  s.homepage = 'https://github.com/EdgarHz/WebDebugConsole'
  s.author   = { 'zhenyuanh' => 'huangzy087@gmail.com' }
  s.source   = { :git => 'https://github.com/EdgarHz/WebDebugConsole.git',
                 :tag => "#{s.version}" }

  s.description = 'Start one web server on iphone, then you can get log from web' 

  s.requires_arc   = true

  s.preserve_paths = 'README.md', 'app/'
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.default_subspecs = 'WebConsole'

  s.subspec 'WebConsole' do |ss|
    ss.source_files = 'source/*.{h,m}'
    ss.resources = 'Web'
    ss.dependency  'CocoaAsyncSocket', '~> 7.5.0'
    ss.dependency  'CocoaHTTPServer'
    ss.dependency  'CocoaLumberjack'
  end

  
end
