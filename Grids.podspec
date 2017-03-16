Pod::Spec.new do |s|

  s.name         = "Grids"
  s.version      = "0.0.2"
  s.summary      = "🏁 Grid layout, making views equidistant. Base on SnapKit. Support: https://LeoDev.me"
  s.homepage     = "https://github.com/iTofu/Grids"
  s.screenshots  = "https://raw.githubusercontent.com/iTofu/Grid/master/DemoImages/GirdsDemo.png"
  s.license      = "MIT"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/iTofu/Grid.git", :tag => s.version }
  s.source_files = "Sources/*.swift"
  s.requires_arc = true

  s.author             = { "Leo" => "leodaxia@gmail.com" }
  s.social_media_url   = "https://LeoDev.me"

  s.ios.deployment_target     = "8.0"
  s.tvos.deployment_target    = "9.0"
  s.osx.deployment_target     = "10.11"

  s.dependency "SnapKit", "~> 3.2.0"

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }

end
