#ifndef __Z2SOUNDHANDLES_H__
#define __Z2SOUNDHANDLES_H__

#include "dolphin/types.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "JSystem/JAudio2/JAISound/JAISound.h"

struct JAISound;

class Z2SoundHandles : protected JSUList<JAISound> {
public:
    Z2SoundHandles();
    ~Z2SoundHandles();

    void initHandlesPool(u8 pNumHandles);
    void deleteHandlesPool();

    bool isActive() const;

private:
    u8 mNumHandles;
};

#endif