Pod::Spec.new do |s|
  s.name             = 'ALExtensions'
  s.version          = '1.0.0'
  s.summary          = 'Common extensions for iOS development'
  s.description      = <<-DESC
                        Common extensions for iOS development. Heavily inspired by the library Reusable by AliSoftware
                       DESC

  s.homepage         = 'https://github.com/alexlivenson/ALExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alex Livenson' => 'alexlivenson@gmail.com' }
  s.source           = { :git => 'https://github.com/alexlivenson/ALExtensions.git', :tag => s.version}

  s.ios.deployment_target = '10.2'

  s.frameworks = 'Foundation'
  s.frameworks = 'UIKit'
  s.source_files = 'ALExtensions/**/*.{swift}'

end
