// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) nonlb 

package com.google.android.gles_jni;

import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.opengles.GL;

// Referenced classes of package com.google.android.gles_jni:
//            GLImpl

public class EGLContextImpl extends EGLContext {

    public EGLContextImpl(int i) {
        mEGLContext = i;
        mGLContext = new GLImpl();
    }

    public boolean equals(Object obj) {
        boolean flag = true;
        if(this != obj) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        if(obj == null || getClass() != obj.getClass()) {
            flag = false;
        } else {
            EGLContextImpl eglcontextimpl = (EGLContextImpl)obj;
            if(mEGLContext != eglcontextimpl.mEGLContext)
                flag = false;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public GL getGL() {
        return mGLContext;
    }

    public int hashCode() {
        return mEGLContext;
    }

    int mEGLContext;
    private GLImpl mGLContext;
}
