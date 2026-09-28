package ni.shikatu.ne_extera.hooks.messageobject;

import de.robv.android.xposed.XC_MethodHook;
import ni.shikatu.ne_extera.db.NeExteraDb;
import org.telegram.messenger.MessageObject;

public class CanDeleteMessage extends XC_MethodHook {
    public void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
        MessageObject thisObject = (MessageObject) param.thisObject;
        if (NeExteraDb.get().messageIsDeleted(thisObject)) {
            param.setResult(true);
        }
    }
}
