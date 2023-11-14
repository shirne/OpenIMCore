Pod::Spec.new do |s|
    s.name         = "OpenIMCore"
    s.version      = "0.0.1"
    s.summary      = "OpenIMCore"
    s.homepage     = "https://github.com/"
    s.description  = <<-DESC
      Just compiled iOS framework version #{s.version}
      .
                DESC
                    
    s.license      = { :type => 'BSD', :file => 'LICENSE',
                :text => <<-LICENSE
                1111111
                LICENSE
                }
    s.author       = "weatherfish"
            
    s.source  = { 
                :git => "https://github.com/shirne/OpenIMCore.git", 
                :tag => "#{s.version}"
    }
    s.platform     = :ios
    s.preserve_paths = 'OpenIMCore.xcframework'
    s.vendored_frameworks = 'OpenIMCore.xcframework'
    s.public_header_files = 'OpenIMCore.xcframework/Versions/A/Headers/**/*{.h,.hpp}'
    s.header_dir = 'OpenIMCore.xcframework'
    s.header_mappings_dir = 'OpenIMCore.xcframework/Versions/A/Headers/'
    s.libraries    = 'c++'
    s.frameworks = 'OpenIMCore.xcframework'
    s.xcconfig = {'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/OpenCV'}
  end