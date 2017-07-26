package com.projectpiglet

import android.app.Application

import com.facebook.react.ReactApplication
import com.facebook.react.ReactNativeHost
import com.facebook.react.ReactPackage
import com.facebook.react.shell.MainReactPackage
import com.facebook.soloader.SoLoader

import java.util.Arrays

class MainApplication : Application(), ReactApplication {

    private val reactNativeMainModuleName = "build/index"

    private val rnHost: ReactNativeHost = object : ReactNativeHost(this) {
        override fun getUseDeveloperSupport(): Boolean {
            return BuildConfig.DEBUG
        }

        override fun getPackages(): MutableList<ReactPackage> {
            return Arrays.asList(MainReactPackage())
        }

        override fun getJSMainModuleName(): String {
            return reactNativeMainModuleName
        }
    }

    override fun getReactNativeHost(): ReactNativeHost {
        return rnHost
    }

    override fun onCreate() {
        super.onCreate()
        SoLoader.init(this, false)
    }
}
