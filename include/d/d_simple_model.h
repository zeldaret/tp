#ifndef D_D_SIMPLE_MODEL_H
#define D_D_SIMPLE_MODEL_H

#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "dolphin/types.h"

class JKRSolidHeap;

class modelList_c {
public:
    void init() {
        mpModel = NULL;
        field_0x4 = NULL;
    }

    void set(J3DModel* model) { mpModel = model; }

    /* 0x0 */ J3DModel* mpModel;
    /* 0x4 */ modelList_c* field_0x4;
};

class diff_model_c {
public:
    /* 80048D60 */ diff_model_c();
    /* 800490EC */ BOOL create(J3DModelData*, int, u8);
    /* 800491F4 */ J3DModelData* getModelData();
    /* 80049210 */ void remove(int);
    /* 80049270 */ void draw();
    /* 80049368 */ void init();
    /* 80049388 */ BOOL isSame(J3DModelData*, int);
    /* 800493FC */ s32 getRoomNo();
    /* 80049408 */ void insert(modelList_c*);

    J3DModel* getModel() { return mpModel; }

private:
    /* 0x00 */ JKRSolidHeap* mpHeap;
    /* 0x04 */ J3DModel* mpModel;
    /* 0x08 */ int mCreateNum;
    /* 0x0C */ modelList_c* mpList;
    /* 0x10 */ u8 mDrawBG;
    /* 0x11 */ s8 mRoomNo;
    /* 0x12 */ u8 field_0x12;
};  // Size: 0x14

class dSmplMdl_draw_c {
public:
    /* 80048CB4 */ dSmplMdl_draw_c();
    /* 80048E0C */ void draw();
    /* 80048EBC */ void entry(J3DModel*, int);
    /* 80048F70 */ BOOL addModel(J3DModelData*, int, u8);
    /* 80049058 */ int removeModel(J3DModelData*, int);

    /* 80048D80 */ virtual ~dSmplMdl_draw_c();

private:
    /* 0x04 */ diff_model_c mModel[8];
    /* 0xA4 */ int mListCount;
    /* 0xA8 */ modelList_c mList[500];
};  // Size: 0x1048

#endif /* D_D_SIMPLE_MODEL_H */
