package com.android.patch;

/**
 * @Author zack
 * @Date 2020/4/9
 * @Description 增量更新类
 * @Version 1.0
 */
public class PatchUtil {

    static {
        System.loadLibrary("Patch");
    }

    public static native int combinePatch(String oldFilePath, String newFilePath, String patchPath);

}
