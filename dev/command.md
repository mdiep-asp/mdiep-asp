### List current activities
```adb shell dumpsys activity | grep "activity"```

### Fire Deeplinks
```adb -s emulator-5554 shell am start -a android.intent.action.VIEW -d "https://applink.beta.aspiration.com/impact/dashboard"```

### Git Command to upload artifact to Firebase
```git commit --allow-empty -m "#upload NM-000; #rn_branch integration-native; Build with some important fix"```
```git commit --allow-empty -m "#upload INFOSEC-638; Move CLIENT_ID_SECRET to config"```