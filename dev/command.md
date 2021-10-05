### List current activities
```adb shell dumpsys activity | grep "activity"```

### Fire Deeplinks
```adb -s emulator-5554 shell am start -a android.intent.action.VIEW -d "https://applink.beta.aspiration.com/impact/dashboard"```

### Git Command to upload artifact to Firebase
```git commit --allow-empty -m "#upload NM-000; #rn_branch integration-native; Build with some important fix"```

```git commit --allow-empty -m "#upload INFOSEC-638; Move CLIENT_ID_SECRET to config"```

```git commit --allow-empty -m "#upload_regression; #rn_branch release/android-2.18.3; PYCL-865, NM-1650, INFOSEC-637, INFOSEC-639"```

```git commit --allow-empty -m "#upload beta; beta build to Firebase"```

### Jadx to read dex
```brew install jadx```
```jadx-gui```

### Java Home
```/usr/libexec/java_home -V```
```/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home```

### React
```yarn clean```
```yarn start --reset-cache```
```yarn workspace signup start```
```adb shell input keyevent 82```

### Gradle API Obsolete 
```./gradlew -Pandroid.debug.obsoleteApi=true```

### Keytool
```keytool -list -v -keystore debug.keystore -alias androiddebugkey -storepass android -keypass android```

### Deeplinks
```adb shell am start -W -a android.intent.action.VIEW -d  "https://deeplink.alpha.aspiration.com/a/click?_t=0d8a640734094f8a908fdd9a1723d327&_m=AbEA8NNmLSMuVppGCZuauWrvD4mFJgSz&_e=Id6uj2anxugNRuvfNTFBMGiUM_-PAAGHSenG6BbCjCrwOzeZP2JDXBkqzP1f9IoVPTHe0H2wYV6fdRL-E-ITlSp7PrKHGpHVJ07LrFbiuLmJsaXfcUMcazDJxWN1y6CWxjUCHFjRZLNW2uWaeVErhv1W_0t2uCJYUm2TacGW6ODNbb5CrGuNOyEOdQYdchSiuKUcLCQCiaOlxG-W6pbrD91kwC40rHhMUdZWBbvza7GSIgY0BUkEDCPTr46Pin9orZwtHhO7A3pwH65YCPHnT8bW7U-mqfes2xQXKjWcJGmKNT1s8Dx5BSRifpq_jB9VfdUQkb_Tk95wSq27D5-bOUtFQMziPgQtx1Opn7olriDDcafhUJPvyent8bQOgdc1DuIBvMmm0MQzJwTbLoJHZA%3D%3D"```

### Fire a screen
```adb shell am start -a com.aspiration.native_application.clean_arch.presentation.dev.DebugToolsScreen```
