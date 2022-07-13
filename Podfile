workspace 'The1WidgetUI'
platform :ios, '14.0'
use_frameworks!
inhibit_all_warnings!

xcodeproj 'The1WidgetUI.xcodeproj'
xcodeproj 'SampleApp/SampleApp.xcodeproj'



target 'The1WidgetUI' do
  project 'The1WidgetUI'

  pod 'SkeletonUI'
  
end


target 'SampleApp' do
  project 'SampleApp/SampleApp'
  
  pod 'SkeletonUI'
  
  post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
    end
  end

end
