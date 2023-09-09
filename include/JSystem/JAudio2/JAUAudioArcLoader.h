#ifndef JAUAUDIOARCLOADER_H
#define JAUAUDIOARCLOADER_H

#include "JSystem/JAudio2/JAUAudioArcInterpreter.h"

struct JAUSection;

class JAUAudioArcLoader : public JAUAudioArcInterpreter {
public:
    /* 802A4740 */ JAUAudioArcLoader(JAUSection*);
    /* 802A478C */ bool load(void const*);
    /* 802A47AC */ virtual void readWS(u32, void const*, u32);
    /* 802A4804 */ virtual void readBNK(u32, void const*);
    /* 802A4834 */ virtual void readBSC(void const*, u32);
    /* 802A4858 */ virtual void readBST(void const*, u32);
    /* 802A4880 */ virtual void readBSTN(void const*, u32);
    /* 802A48A8 */ virtual void readBMS(u32, void const*, u32);
    /* 802A48D4 */ virtual void readBMS_fromArchive(u32);
    /* 802A4900 */ virtual void newVoiceBank(u32, u32);
    /* 802A4930 */ virtual void newDynamicSeqBlock(u32);
    /* 802A4968 */ virtual void readBSFT(void const*);
    /* 802A4990 */ virtual void beginBNKList(u32, u32);
    /* 802A49B4 */ virtual void endBNKList();
    /* 802A49D8 */ virtual void readMaxSeCategory(int, int, int);
    /* 802A49FC */ virtual ~JAUAudioArcLoader();

    /* 0x0C */ JAUSection* mSection;
};

#endif /* JAUAUDIOARCLOADER_H */
