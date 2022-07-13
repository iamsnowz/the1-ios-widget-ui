Pod::Spec.new do |s|
  s.name         = "The1WidgetUI"
  s.version      = "1.0.0"
  s.summary      = "A brief description of The1WidgetUI project."
  s.description  = "An extended description of The1WidgetUI project."
  s.homepage     = "https://github.com/"
  s.license = { :type => 'Copyright', :text => <<-LICENSE
                 Copyright 2020
                 Permission is granted to...
                LICENSE
              }
  s.author             = { "$(git config user.name)" => "$(git config user.email)" }
  s.source       = { :git => 'https://github.com/iamsnowz/the1-ios-widget-ui.git', tag => s.version }
  
  s.swift_version = "5"
  s.platform = :ios
  s.ios.deployment_target  = '14.0'
  s.source_files = 'The1WidgetUI/Sources/**/*.swift'
  
  s.ios.dependency 'SkeletonUI'

  # Exclude arm64 architecture
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end
