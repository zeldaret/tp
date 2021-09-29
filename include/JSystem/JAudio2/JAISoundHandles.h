#ifndef JAISOUNDHANDLES_H
#define JAISOUNDHANDLES_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "dolphin/types.h"

class JAISound;
class JAISoundID;

class JAISoundHandle {
public:
    JAISoundHandle();
    ~JAISoundHandle();

    bool isSoundAttached() const { return sound_ != NULL; }

    JAISound* operator->() const {
        JUT_ASSERT("JAISound.h", 0x3a, sound_ != 0);
        return sound_;
    }

    operator bool() const { return isSoundAttached(); }

    void releaseSound();

private:
    JAISound* sound_;  // member from assert in operator->()
};

class JAISoundHandles {
public:
    JAISoundHandles(JAISoundHandle* pHandle, int param_1) {
        mSoundHandle = pHandle;
        field_0x04 = param_1;
    };

    void getHandleSoundID(JAISoundID);
    void getFreeHandle();

private:
    JAISoundHandle* mSoundHandle;
    int field_0x04;
};

#endif /* JAISOUNDHANDLES_H */
