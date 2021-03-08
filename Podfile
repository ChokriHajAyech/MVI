# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'

#Avoid using code signing for librairies
post_install do |installer|
  installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
          config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
          config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
          config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
          config.build_settings['CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER'] = 'NO'
      end
  end
end

def test_pods
    pod 'RxTest'
    pod 'RxBlocking'
    pod 'Quick'
    pod 'Nimble'
end

def swinject_pods
    pod 'Swinject'
    pod 'SwinjectAutoregistration'
end

def rx_pods
  pod 'RxCocoa'
  pod 'RxSwift'
  pod 'RxReachability'
  pod 'RxDataSources'

end

target 'MVI' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  swinject_pods
  rx_pods
  pod 'IQKeyboardManagerSwift', '6.5.0'
 # pod 'RxAlamofire'
  pod 'ChameleonFramework', '2.1.0'
  pod 'Moya/RxSwift'
  target 'MVITests' do
    inherit! :search_paths
    test_pods
  end

end
