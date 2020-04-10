package com.android.patch

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        Thread {
            PatchUtil.combinePatch("/sdcard/1.apk","/sdcard/2.apk","/sdcard/patch.patch")
        }.start()
    }
}
