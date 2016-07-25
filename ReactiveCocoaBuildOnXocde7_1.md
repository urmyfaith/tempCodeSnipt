https://github.com/ReactiveCocoa/ReactiveCocoa/issues/2973

编译失败.


```
#import <ReactiveCocoa/EXTKeyPathCoding.h>
```

应该是 pod 升级遗留的 bug



```
gabro commented on Jun 10
@mdiep yes, it looks like it was a leftover from a previous installation using CocoaPods v0.96

I solved the issue performing a "Clean Build Folder..." action (under the Product menu, holding down the option key).

After that, I managed to use ReactiveCocoa both with CocoaPods 1.0.1 and Carthage.

Thanks for the support!
```

重点是: "I solved the issue performing a "Clean Build Folder..." action (under the Product menu, holding down the option key)."

按住 option 键盘,点击清除Build 文件夹.


pod 升级:

sudo gem install cocoapods --pre 