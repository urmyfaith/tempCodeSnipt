Xcode8 上自带的新字体
SF Mono.

如果想要在 Xcode7上使用,就需要提取出字体来,安装,然后选择字体.

具体字体文件位置在:

```
➜  Contents pwd
/Applications/Xcode-beta.app/Contents
➜  Contents open "./SharedFrameworks/DVTKit.framework/Versions/A/Resources/Fonts/"
```


具体的字体文件有:

```
/Applications/Xcode-beta.app/Contents/SharedFrameworks/DVTKit.framework/Versions/A/Resources/Fonts/
├── SFMono-Bold.otf
├── SFMono-BoldItalic.otf
├── SFMono-Heavy.otf
├── SFMono-HeavyItalic.otf
├── SFMono-Light.otf
├── SFMono-LightItalic.otf
├── SFMono-Medium.otf
├── SFMono-MediumItalic.otf
├── SFMono-Regular.otf
├── SFMono-RegularItalic.otf
├── SFMono-Semibold.otf
├── SFMono-SemiboldItalic.otf
└── XcodeDigits-regular.ttf
```
