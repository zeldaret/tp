#ifndef JAUAUDIOARCINTERPRETER_H
#define JAUAUDIOARCINTERPRETER_H

#include "dolphin/types.h"

class JAUAudioArcInterpreter {
public:
    /* 802A4244 */ JAUAudioArcInterpreter();
    /* 802A4260 */ virtual ~JAUAudioArcInterpreter();
    virtual void readWS(u32, void const*, u32) = 0;
    virtual void readBNK(u32, void const*) = 0;
    virtual void readBSC(void const*, u32) = 0;
    virtual void readBST(void const*, u32) = 0;
    virtual void readBSTN(void const*, u32) = 0;
    virtual void readBMS(u32, void const*, u32) = 0;
    virtual void readBMS_fromArchive(u32) = 0;
    virtual void newVoiceBank(u32, u32) = 0;
    virtual void newDynamicSeqBlock(u32) = 0;
    virtual void readBSFT(void const*) = 0;
    virtual void readMaxSeCategory(int, int, int) = 0;
    virtual void beginBNKList(u32, u32) = 0;
    virtual void endBNKList() = 0;
    /* 802A42A8 */ bool parse(void const*);
    /* 802A4314 */ virtual bool readCommandMore(u32);
    /* 802A431C */ bool readCommand_();

    u8 readU8_() {
        return *mReadPtr++;
    }

    u32 readU32_() {
        u32 temp = *(u32*)mReadPtr;
        mReadPtr += 4;
        return temp;
    }
    const void* getContent_(u32 param_0) { return mBase + param_0; }


    /* 0x04 */ const u8* mReadPtr;
    /* 0x08 */ const u8* mBase;
};

#endif /* JAUAUDIOARCINTERPRETER_H */
