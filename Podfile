source 'https://github.com/artsy/Specs.git'
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '8.0'
use_frameworks!

plugin 'cocoapods-keys', {
    :project => "ShowNotes",
    :target => "Show Notes",
    :keys => [
        "ArtsyAPIClientSecret",
        "ArtsyAPIClientKey",
        "ArtsyFacebookAppID",
        "ArtsyTwitterKey",
        "ArtsyTwitterSecret",
        "ArtsyTwitterStagingKey",
        "ArtsyTwitterStagingSecret"
    ]
}

target 'Show Notes' do
  pod 'AFNetworking'
  pod 'Artsy+UILabels', :head
  pod 'Artsy+UIColors'
  pod 'Artsy-UIButtons', :head
  pod 'UIView+BooleanAnimations'
  pod 'Artsy+UIFonts'
  pod 'ObjectiveSugar', '1.1.0'
  pod 'Artsy+Authentication', :git => "git@github.com:artsy/Artsy_Authentication.git"
  pod 'KZPropertyMapper'
  pod 'UICKeyChainStore'
  pod 'KVOController'
  pod 'INTULocationManager'
  pod 'SSDataSources', :git => "git@github.com:orta/SSDataSources.git"
  pod 'FastttCamera', :git => "git@github.com:orta/FastttCamera.git"
  pod 'FSOpenInInstagram', '~> 1.0'
end

target 'Show NotesTests' do

end

