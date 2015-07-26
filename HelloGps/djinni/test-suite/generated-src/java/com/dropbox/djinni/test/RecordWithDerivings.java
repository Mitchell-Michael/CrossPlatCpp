// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from derivings.djinni

package com.dropbox.djinni.test;

import javax.annotation.CheckForNull;
import javax.annotation.Nonnull;

public final class RecordWithDerivings implements Comparable<RecordWithDerivings> {


    /*package*/ final int mKey1;

    /*package*/ final String mKey2;

    public RecordWithDerivings(
            int key1,
            @Nonnull String key2) {
        this.mKey1 = key1;
        this.mKey2 = key2;
    }

    public int getKey1() {
        return mKey1;
    }

    @Nonnull
    public String getKey2() {
        return mKey2;
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof RecordWithDerivings)) {
            return false;
        }
        RecordWithDerivings other = (RecordWithDerivings) obj;
        return this.mKey1 == other.mKey1 &&
                this.mKey2.equals(other.mKey2);
    }

    @Override
    public int hashCode() {
        // Pick an arbitrary non-zero starting value
        int hashCode = 17;
        hashCode = hashCode * 31 + mKey1;
        hashCode = hashCode * 31 + mKey2.hashCode();
        return hashCode;
    }

    @Override
    public int compareTo(@Nonnull RecordWithDerivings other)  {
        int tempResult;
        if (this.mKey1 < other.mKey1) {
            tempResult = -1;
        } else if (this.mKey1 > other.mKey1) {
            tempResult = 1;
        } else {
            tempResult = 0;
        }
        if (tempResult != 0) {
            return tempResult;
        }
        tempResult = this.mKey2.compareTo(other.mKey2);
        if (tempResult != 0) {
            return tempResult;
        }
        return 0;
    }
}
