#ifndef JAISOUNDHANDLES_H
#define JAISOUNDHANDLES_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JUtility/JUTAssert.h"

class JAISound;
class JAISoundID;

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JAISoundHandle {
public:
    JAISoundHandle() {sound_ = NULL;};
    ~JAISoundHandle() { releaseSound(); }

    bool isSoundAttached() const { return sound_ != NULL; }

    JAISound* operator->() const {
        JUT_ASSERT(58, sound_ != 0);
        return sound_;
    }

    operator bool() const { return isSoundAttached(); }

    void releaseSound();

    JAISound* getSound() { return sound_; }

    JAISound* sound_;  // member from assert in operator->()
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JAISoundHandles {
public:
    JAISoundHandles(JAISoundHandle* pHandle, int param_1) {
        mSoundHandle = pHandle;
        numHandles_ = param_1;
    };

    JAISoundHandle& operator[](int n) { return mSoundHandle[n]; }

    JAISoundHandle* getHandleSoundID(JAISoundID);
    JAISoundHandle* getFreeHandle();

private:
    JAISoundHandle* mSoundHandle;
    int numHandles_;
};

#endif /* JAISOUNDHANDLES_H */
