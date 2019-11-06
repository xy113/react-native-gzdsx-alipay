# react-native-gzdsx-alipay

React Native Module for alipay.com

## install

```
npm install react-native-gzdsx-alipay --save
```

## Android

### With rnpm

```
rnpm link react-native-gzdsx-alipay
```

### Manually

* android/settings.gradle

```
include ':react-native-gzdsx-alipay'
project(':react-native-gzdsx-alipay').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-gzdsx-alipay/android')
```

* android/app/build.gradle

```
dependencies {
    compile project(':react-native-gzdsx-alipay')
}
```

* register module (in MainActivity.java)

```java
...

import cn.gzdsx.alipay.AlipayPackage; // <--- IMPORT

public class MainActivity extends ReactActivity {

    ...

    @Override
    protected List<ReactPackage> getPackages() {
        return Arrays.<ReactPackage>asList(
            new MainReactPackage(),
            new AlipayPackage() // <--- ADD HERE
        );
    }
}
```

## iOS

### With rnpm

```
rnpm link react-native-yunpeng-alipay
```

### Manually

> Link `AlipayModule` library from your `node_modules/react-native-yunpeng-alipay/ios` folder like its [described here](http://facebook.github.io/react-native/docs/linking-libraries-ios.html). Don't forget to add it to "Build Phases" of project.

### Config

* Added the following libraries to your "Link Binary With Libraries":
  * [x] CoreMotion.framework
  * [x] CoreTelephony.framework
  * [x] libc++
  * [x] libz
  
* add `URL Schema` as your app id for `URL type` in `Targets - info`
* Make sure you have these code in AppDelegate.m to enable callback

```objective_c
#import "AlipayModule.h"
```

```objective_c
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
  [AlipayModule handleCallback:url];
  return YES;
}
```

### General Usage

```javascript
import Alipay from 'react-native-gzdsx-alipay';

```

```javascript
Alipay.pay("signed pay info string").then(function(data){
                    console.log(data);
                }, function (err) {
                    console.log(err);
                });

```
