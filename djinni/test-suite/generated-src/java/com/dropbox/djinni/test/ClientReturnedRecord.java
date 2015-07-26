// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from client_interface.djinni

package com.dropbox.djinni.test;

import javax.annotation.CheckForNull;
import javax.annotation.Nonnull;

public final class ClientReturnedRecord {


    /*package*/ final long mRecordId;

    /*package*/ final String mContent;

    /*package*/ final String mMisc;

    public ClientReturnedRecord(
            long recordId,
            @Nonnull String content,
            @CheckForNull String misc) {
        this.mRecordId = recordId;
        this.mContent = content;
        this.mMisc = misc;
    }

    public long getRecordId() {
        return mRecordId;
    }

    @Nonnull
    public String getContent() {
        return mContent;
    }

    @CheckForNull
    public String getMisc() {
        return mMisc;
    }
}