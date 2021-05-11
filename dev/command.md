### List current activities
```adb shell dumpsys activity | grep "activity"```

### Fire Deeplinks
```adb -s emulator-5554 shell am start -a android.intent.action.VIEW -d "https://applink.beta.aspiration.com/impact/dashboard"```

### Git Command to upload artifact to Firebase
```git commit --allow-empty -m "#upload NM-000; #rn_branch integration-native; Build with some important fix"```
```git commit --allow-empty -m "#upload INFOSEC-638; Move CLIENT_ID_SECRET to config"```
```git commit --allow-empty -m "#upload_regression; #rn_branch release/android-2.18.3; PYCL-865, NM-1650, INFOSEC-637, INFOSEC-639"```

### Jadx to read dex
```brew install jadx```
```jadx-gui```

### Java Home
```/usr/libexec/java_home -V```
```/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home```