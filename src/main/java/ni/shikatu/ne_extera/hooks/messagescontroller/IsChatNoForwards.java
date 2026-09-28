package ni.shikatu.ne_extera.hooks.messagescontroller;

import de.robv.android.xposed.XC_MethodHook;
import ni.shikatu.ne_extera.settings.Settings;

public class IsChatNoForwards extends XC_MethodHook {
    public void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
        if (Settings.noForward()) {
            param.setResult(false);
        }
    }
}
