xcodebuild archive -workspace Bootcamp.xcworkspace -scheme Bootcamp -sdk iphoneos -configuration Release -archivePath build/Bootcamp.xcarchive | xcpretty
xcodebuild -exportArchive -exportOptionsPlist .travis/ExportOptions.plist  -archivePath build/Bootcamp.xcarchive -exportPath build/

fir login "${FIR_TOKEN}"
fir publish build/Bootcamp.ipa
