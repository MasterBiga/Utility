package it.ubisivie.masterbiga.utility

import android.content.Context
import android.content.Intent
import android.content.IntentSender
import android.net.Uri
import androidx.core.content.ContextCompat.startActivity

class UrlLauncher {
    companion object {
        fun launchUrl(url: String, context: Context) {
            val uri = Uri.parse(url)
            val intent = Intent(Intent.ACTION_VIEW, uri)
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            startActivity(context, intent, null)
        }
    }
}