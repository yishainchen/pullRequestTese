# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'DemoProject' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

# library
pod 'ObjectMapper'
pod 'Alamofire'
pod 'AlamofireObjectMapper', '~> 4.0'
pod 'SwiftDate', '~> 4.0'
pod 'SwiftyUserDefaults', '~> 3.0'
pod 'FileBrowser', '~> 0.2'
pod 'RxSwift',    '~> 3.0'

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end


  # Pods for DemoProject

  target 'DemoProjectTests' do
    inherit! :search_paths
    # Pods for testing
  end

end
