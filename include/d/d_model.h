#ifndef D_D_MODEL_H
#define D_D_MODEL_H

#include "JSystem/J3DGraphBase/J3DPacket.h"
#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"

class J3DModelData;

class dMdl_obj_c {
public:
    MtxP getMtx() { return mMtx; }

    /* 0x00 */ Mtx mMtx;
    /* 0x30 */ dMdl_obj_c* mpObj;
};

class dMdl_c : public J3DPacket {
public:
    /* 8009C650 */ void create(J3DModelData*, u16, dKy_tevstr_c*);
    /* 8009C668 */ void entryObj(dMdl_obj_c*);
    /* 8009C930 */ dMdl_c();

    /* 8009C4FC */ virtual void draw();
    /* 8009C808 */ virtual ~dMdl_c();

    J3DModelData* getModelData() { return mpModelData; }
    u16 getMaterialId() { return mMaterialId; }
    dKy_tevstr_c* getTevstr() { return mpTevstr; }

private:
    /* 0x10 */ J3DModelData* mpModelData;
    /* 0x14 */ dKy_tevstr_c* mpTevstr;
    /* 0x18 */ u16 mMaterialId;
    /* 0x1A */ bool field_0x1a;
    /* 0x1C */ dMdl_obj_c* mpModelObj;
};

class dMdl_mng_c {
public:
    dMdl_mng_c() { field_0x80 = 0; }
    ~dMdl_mng_c() {}

    /* 8009C6DC */ dMdl_c* search(J3DModelData*, u16, dKy_tevstr_c*);
    /* 8009C724 */ dMdl_c* entry(J3DModelData*, u16, dKy_tevstr_c*);
    /* 8009C8D8 */ dMdl_c* entry(J3DModelData*, u16, int);
    /* 8009C7AC */ static void create();
    /* 8009C864 */ void remove();
    /* 8009C8C0 */ void reset();

    static dMdl_mng_c* m_myObj;

private:
    /* 0x00 */ dMdl_c field_0x0[4];
    /* 0x80 */ u8 field_0x80;
};

#endif /* D_D_MODEL_H */
