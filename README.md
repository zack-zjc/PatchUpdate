# PatchUpdate
增量更新apk,基于bsdiff开源库，通过当前apk以及升级后的apk生成diff文件通过合并diff以及老apk升级成新apk

### Module介绍

1.patchModule中包含jni源代码以及生成的armeabi,armeabi-v7a,arm64-v8a对应的so可自行取用

2.PatchUtil为调用java类combinePatch为合并方法

3.可在jni基础上自行增加修改内容通过mk文件自行ndk-build执行自行生成so

4.app目录下包含生成的aar文件，可直接取用，注意该aar包含以上3个平台的so,注意过滤使用

```groovy
defaultConfig {
    ndk {
        abiFilters "armeabi-v7a"
    }
}
```

### bsdiff网址

http://www.daemonology.net/bsdiff/

### bzip网址

http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz
