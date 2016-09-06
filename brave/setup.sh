[[ -e setup.sh  ]] || { echo 'setup.sh must be run from brave directory'; exit 1; }

# Pro Tip for ad-hoc building: add your app id as an arg, like ./setup.sh org.foo.myapp

app_id=${1:-com.brave.ios.browser}
echo CUSTOM_BUNDLE_ID=$app_id > xcconfig/.bundle-id.xcconfig
# Custom IDs get the BETA property set automatically
[[  -z $1 ]] || echo BETA=Beta >> xcconfig/.bundle-id.xcconfig
echo $app_id
# if a brave build, setup fabric
if [ $app_id = com.brave.ios.browser ]; then
  echo "./Fabric.framework/run $(head -1 ~/.brave-fabric-keys) $(tail -1 ~/.brave-fabric-keys)" > build-system/.fabric-key-setup.sh
  sed -e s/FABRIC_KEY_REMOVED/$(head -1 ~/.brave-fabric-keys)/ BraveInfo.plist.template > BraveInfo.plist
else
   >build-system/.fabric-key-setup.sh
   cat BraveInfo.plist.template > BraveInfo.plist
fi

sed -e "s/BUNDLE_ID_PLACEHOLDER/$app_id/" Brave.entitlements.template > Brave.entitlements

npm update

echo GENERATED_BUILD_ID=`date +"%y.%m.%d.%H"`  > xcconfig/build-id.xcconfig
