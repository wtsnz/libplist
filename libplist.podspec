Pod::Spec.new do |s|

    s.name = "libplist" 
    s.version = "1.0.0" 
    s.summary = "Apple Binary and XML Property Lists"
   
    s.homepage = "https://github.com/libimobiledevice/libplist" 
    s.license = { :type => 'GPL', :file => 'COPYING' }
   
    s.author = 'Will Townsend' 
    s.platform = :osx, '10.10' 
    s.source = { :git => "https://github.com/wtsnz/libplist.git", :tag => "v#{s.version}"}

    s.source_files = 'libcnary/*.{h,c,m,cpp}', 
        'libcnary/include/*.h',
        'src/base64.c', 
        'src/base64.h',
        'src/bplist.c',
        'src/bytearray.c', 
        'src/bytearray.h',
        'src/hashtable.c', 
        'src/hashtable.h',
        'include/plist/plist.h',
        'src/plist.h',
        'src/plist.c', 
        'src/ptrarray.c', 
        'src/ptrarray.h',
        'src/strbuf.h',
        'src/time64_limits.h',
        'src/time64.c', 
        'src/time64.h',
        'src/xplist.c'
    
    s.public_header_files = 'include/*.h'
    s.library = 'xml2'
    # s.preserve_paths = 'include/plist/*.*'
    s.xcconfig = {"HEADER_SEARCH_PATHS" => '"$(SDKROOT)/usr/include/libxml2" "${PODS_ROOT}/libplist/include/"'}
   end
   
   