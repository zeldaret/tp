#ifndef JASBASICWAVEBANK_H
#define JASBASICWAVEBANK_H

#include "JSystem/JAudio2/JASWaveArcLoader.h"
#include "JSystem/JAudio2/JASWaveInfo.h"

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JASWaveHandle {
public:
    virtual ~JASWaveHandle() {};
    virtual const JASWaveInfo* getWaveInfo() const = 0;
    virtual int getWavePtr() const = 0;
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
class JASWaveBank {
public:
    /* 80298B88 */ virtual ~JASWaveBank() {};
    virtual JASWaveHandle* getWaveHandle(u32) const = 0;
    virtual JASWaveArc* getWaveArc(u32) = 0;
    virtual u32 getArcCount() const = 0;
};

/**
 * @ingroup jsystem-jaudio
 * 
 */
struct JASBasicWaveBank : public JASWaveBank {
    struct TWaveHandle : public JASWaveHandle {
        /* 80298B64 */ int getWavePtr() const;
        /* 80298C18 */ TWaveHandle() { mHeap = NULL; }
        /* 80298C64 */ const JASWaveInfo* getWaveInfo() const { return &field_0x4; }
        bool compareHeap(JASHeap* heap) const { return mHeap == heap;}

        /* 0x04 */ JASWaveInfo field_0x4;
        /* 0x28 */ JASHeap* mHeap;
    };

    struct TGroupWaveInfo {
        /* 80298C4C */ TGroupWaveInfo() {
            field_0x0 = 0xffff;
            field_0x4 = -1;
        }

        /* 0x00 */ u16 field_0x0;
        /* 0x04 */ int field_0x4;
    };

    struct TWaveGroup : JASWaveArc {
        /* 802989C0 */ TWaveGroup();
        /* 80298A0C */ ~TWaveGroup();
        /* 80298A84 */ void setWaveCount(u32, JKRHeap*);
        /* 80298B04 */ void onLoadDone();
        /* 80298B2C */ void onEraseDone();
        /* 80298B54 */ u32 getWaveID(int) const;

        /* 0x74 */ JASBasicWaveBank* mBank;
        /* 0x78 */ TGroupWaveInfo* mCtrlWaveArray;
        /* 0x7C */ u16 mWaveCount;

        u32 getWaveCount() const { return mWaveCount; }
    };

    /* 802984F8 */ JASBasicWaveBank();
    /* 80298558 */ ~JASBasicWaveBank();
    /* 80298640 */ TWaveGroup* getWaveGroup(u32);
    /* 80298664 */ void setGroupCount(u32, JKRHeap*);
    /* 80298710 */ void setWaveTableSize(u32, JKRHeap*);
    /* 80298790 */ void incWaveTable(JASBasicWaveBank::TWaveGroup const*);
    /* 8029883C */ void decWaveTable(JASBasicWaveBank::TWaveGroup const*);
    /* 802988DC */ JASWaveHandle* getWaveHandle(u32) const;
    /* 80298910 */ void setWaveInfo(JASBasicWaveBank::TWaveGroup*, int, u16, JASWaveInfo const&);
    /* 80298C6C */ JASWaveArc* getWaveArc(u32 param_0) { return getWaveGroup(param_0); }
    /* 80298C8C */ u32 getArcCount() const { return mGroupCount; }

    /* 0x04 */ OSMutex field_0x4;
    /* 0x1C */ TWaveHandle* mWaveTable;
    /* 0x20 */ TWaveGroup* mWaveGroupArray;
    /* 0x24 */ u16 mHandleCount;
    /* 0x26 */ u16 mGroupCount;

    static u32 mNoLoad;
};

#endif /* JASBASICWAVEBANK_H */
