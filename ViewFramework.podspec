
Pod::Spec.new do |s|
          #1.
          s.name               = "ViewFramework"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "Sort description of 'ViewFramework' framework"
          #4.
          s.homepage        = "http://www.yudiz.com"
          #5.
          s.license              = "MIT"
          #6.
          s.author               = "Hamsa"
          #7.
          s.platform            = :ios, "11.2"
          #8.
          s.source              = { :git => "https://github.com/hamsa1/ViewFramework.git", :tag => "1.0.0" }
          #9.
          s.source_files     = "ViewFramework", "ViewFramework/**/*.{h,m,swift}"
    end