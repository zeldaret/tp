#ifndef D_EVENT_D_EVENT_DEBUG_H
#define D_EVENT_D_EVENT_DEBUG_H

#ifdef DEBUG
#include "JSystem/JHostIO/JORMContext.h"
#include "d/d_event.h"

struct dEvDb_bit_c {
    /* 0x00 */ char* mFlagName;
    /* 0x04 */ char* mFlagDescription;
    /* 0x08 */ char* mFlagAuthor;
    /* 0x0C */ u16 mFlagValue;
    /* 0x10 */ char* mArea; // Area in the game where flag is used
    /* 0x14 */ u8 field_0x14;   
    /* 0x15 */ u8 field_0x15;
    /* 0x16 */ u8 field_0x16;   // mIsEventOrTempBit?
};

struct dEvDb_reg_c {
    /* 0x00 */ char* mFlagName;
    /* 0x04 */ char* mFlagDescription;
    /* 0x08 */ char* mFlagAuthor;
    /* 0x0C */ u16 mFlagValue;
    /* 0x10 */ char* mArea; // Area in the game where flag is used
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 field_0x15;
    /* 0x16 */ u8 field_0x16;   // mIsEventOrTempReg?
};

struct dEvDb_flag_base_c {
    /* 0x00 */ dEvDb_bit_c* mBitTable;
    /* 0x04 */ dEvDb_reg_c* mRegTable;
    /* 0x08 */ int mBitNum;
    /* 0x0C */ int mRegNum;
    /* 0x10 */ int field_0x10;
    /* 0x14 */ int field_0x14;

    char* searchDirNameBit(int);
    char* searchDirNameReg(int);
};

struct dEvM_play_HIO_c : public JORReflexible {
    dEvM_play_HIO_c();

    s16 mTargetEvent;
    s16 field_0x6;
    s16 field_0x8;
    s16 field_0xA;

    void genMessage(JORMContext*);
    void listenPropertyEvent(const JORPropertyEvent*);
    
    void removeComboBox();
    void addComboBox();
};

STATIC_ASSERT(sizeof(dEvM_play_HIO_c) == 0xC);

struct dEvM_reg_HIO_c : public JORReflexible {
    dEvM_reg_HIO_c();
    ~dEvM_reg_HIO_c();

    dEvDb_flag_base_c* field_0x004;
    u8 field_0x008;
    u8 field_0x009; // mRegNo?

    void genMessage(JORMContext*);
    void listenPropertyEvent(const JORPropertyEvent*);

    void update();
};

STATIC_ASSERT(sizeof(dEvM_reg_HIO_c) == 0xC);

struct dEvM_bit_HIO_c : public JORReflexible {
    dEvM_bit_HIO_c();
    ~dEvM_bit_HIO_c();

    dEvDb_flag_base_c* field_0x004;
    u8 field_0x008;
    u8 field_0x009; // mBitNo?

    void genMessage(JORMContext*);
    void listenPropertyEvent(const JORPropertyEvent*);

    void update();
};

STATIC_ASSERT(sizeof(dEvM_bit_HIO_c) == 0xC);

struct dEvM_root_bit_HIO_c : public JORReflexible {
    dEvM_root_bit_HIO_c() {}

    dEvM_bit_HIO_c mBit[100];
    dEvDb_flag_base_c* field_0x4B4;

    void genMessage(JORMContext*);
};

STATIC_ASSERT(sizeof(dEvM_root_bit_HIO_c) == 0x4B8);

struct dEvM_root_reg_HIO_c : public JORReflexible {
    dEvM_root_reg_HIO_c() {}

    dEvM_reg_HIO_c mReg[100];
    dEvDb_flag_base_c* field_0x4B4;

    void genMessage(JORMContext*);
};

STATIC_ASSERT(sizeof(dEvM_root_reg_HIO_c) == 0x4B8);

class dEvM_HIO_c : public JORReflexible {
public:
    dEvM_HIO_c();
    ~dEvM_HIO_c();

    /* 0x004 */ s8 field_0x004;
    /* 0x005 */ u8 m_EVdata_output;
    /* 0x006 */ u8 m_evm_debug;
    /* 0x007 */ u8 m_evd_debug;
    /* 0x008 */ u8 m_eve_debug;
    /* 0x009 */ u8 m_evd_unfinished;
    /* 0x00A */ u8 m_prioritize_file;
    /* 0x00B */ u8 m_enable_skip;
    /* 0x00C */ u8 field_0x00C;
    /* 0x00D */ u8 m_prevent_scene_switch;
    /* 0x00E */ u8 field_0x00E[2];
    /* 0x010 */ f32 field_0x010;
    /* 0x014 */ f32 field_0x014;
    /* 0x018 */ f32 field_0x018;
    /* 0x01C */ s32 m_corrective_sound_adjustment;
    /* 0x020 */ dEvM_play_HIO_c m_playtest;
    /* 0x02C */ dEvM_root_bit_HIO_c m_save_bit;
    /* 0x4E4 */ dEvM_root_bit_HIO_c m_temp_bit;
    /* 0x99C */ dEvM_root_reg_HIO_c m_save_reg;
    /* 0xE54 */ dEvM_root_reg_HIO_c m_temp_reg;

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    bool setDebugCameraData(void*);
};

#endif /* DEBUG */

#endif /* D_EVENT_D_EVENT_DEBUG_H */
