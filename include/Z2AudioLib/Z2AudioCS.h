#ifndef Z2AUDIOCS_H
#define Z2AUDIOCS_H

#include <revolution/wpad.h>

class JKRHeap;
class JKRArchive;

class Z2AudioCS {
public:
    void newSpkSoundMemPool();
    int init(JKRHeap*, JKRArchive*, s32, s32);
    void update();
    static void connect(s32);
    static void disconnect(s32);
    static void extensionProcess(s32, s32);
    u32 getHandleSoundID(s32);
    void start(s32, s32);
    static int startLevel(s32, s32);
};

#endif /* Z2AUDIOCS_H */
