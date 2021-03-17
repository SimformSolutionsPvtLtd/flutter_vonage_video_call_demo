package com.simform.vonage_video_call_flutter

import android.content.Intent
import android.os.Bundle
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel


class MainActivity : FlutterActivity() {
    private val CHANNEL_VONAGE = "vonage"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger, CHANNEL_VONAGE).setMethodCallHandler { call, result ->
            if (call.method == "initVonageVideoCall") {
                val intent = Intent(this, VonageVideoCallActivity::class.java)
                intent.putExtra("SESSION", call.argument<String>("SESSION"))
                intent.putExtra("TOKEN", call.argument<String>("TOKEN"))
                intent.putExtra("API_KEY", call.argument<String>("API_KEY"))
                startActivity(intent)
            } else {
                result.notImplemented()
            }
        }
    }

}
