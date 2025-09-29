/**
 * @file d_a_obj_pumpkin.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_pumpkin.h"
#include "d/d_cc_d.h"
#include "SSystem/SComponent/c_counter.h"
#include "JSystem/JHostIO/JORFile.h"
#include "d/actor/d_a_npc.h"

#include "dol2asm.h"

/* ############################################################################################## */
/* 80CB8370-80CB83A4 000000 0034+00 5/5 0/0 0/0 .rodata          m__21daObj_Pumpkin_Param_c */
const daObj_Pumpkin_HIOParam daObj_Pumpkin_Param_c::m = {
    0.0f,
    -5.0f,
    1.4f,
    100.0f,
    73.0f,
    24.0f,
    12.0f,
    24.0f,
    37.0f,
    45.0f,
    18.0f,
    16,
    0,
    20,
    20,
};

#if DEBUG
daObj_Pumpkin_HIO_c::daObj_Pumpkin_HIO_c() {
    m = daObj_Pumpkin_Param_c::m;
}

void daObj_Pumpkin_HIO_c::listenPropertyEvent(const JORPropertyEvent* event) {
    char msg_buffer[2004];
    JORReflexible::listenPropertyEvent(event);
    JORFile file_handle;
    int len;
    switch (reinterpret_cast<u32>(event->id)) {
    case 0x40000002:
        if (file_handle.open(6, "すべてのファイル(*.*)\0*.*\0", NULL, NULL, NULL) != 0) {
            memset(msg_buffer, 0, 2000);
            len = 0;
            // interesting offset
            sprintf(msg_buffer + len, "%.3ff,\t//  注目オフセット\n", m.featured_offset);
            len = strlen(msg_buffer);
            // gravity
            sprintf(msg_buffer + len, "%.3ff,\t//  重力\n", m.gravity);
            len = strlen(msg_buffer);
            // scale
            sprintf(msg_buffer + len, "%.3ff,\t//  スケ－ル\n", m.scale);
            len = strlen(msg_buffer);
            // real shadow size
            sprintf(msg_buffer + len, "%.3ff,\t//  リアル影サイズ\n", m.real_shadow_size);
            len = strlen(msg_buffer);
            // weight
            sprintf(msg_buffer + len, "%.3ff,\t//  体重\n", m.weight);
            len = strlen(msg_buffer);
            // height
            sprintf(msg_buffer + len, "%.3ff,\t//  高さ\n", m.height);
            len = strlen(msg_buffer);
            // knee-length
            sprintf(msg_buffer + len, "%.3ff,\t//  ひざ丈\n", m.knee_length);
            len = strlen(msg_buffer);
            // width
            sprintf(msg_buffer + len, "%.3ff,\t//  幅\n", m.width);
            len = strlen(msg_buffer);
            // Emission speed
            sprintf(msg_buffer + len, "%.3ff,\t//  発射速度\n", m.fire_rate);
            len = strlen(msg_buffer);
            // Launch Angle
            sprintf(msg_buffer + len, "%.3ff,\t//  発射角度\n", m.launch_angle);
            len = strlen(msg_buffer);
            // Floating offset
            sprintf(msg_buffer + len, "%.3ff,\t//  浮きオフセット\n", m.floating_offset);
            len = strlen(msg_buffer);
            // Hold on
            sprintf(msg_buffer + len, "%d,   \t//  ふんばり\n", m.hold_on);
            len = strlen(msg_buffer);
            // Pull sound delay
            sprintf(msg_buffer + len, "%d,   \t//  引き抜き音遅延\n", m.pull_sound_delay);
            len = strlen(msg_buffer);
            // Growth time 1
            sprintf(msg_buffer + len, "%d,   \t//  成長時間１\n", m.growth_time_1);
            len = strlen(msg_buffer);
            // Growth time 2
            sprintf(msg_buffer + len, "%d,   \t//  成長時間２\n", m.growth_time_2);
            len = strlen(msg_buffer);
            //
            file_handle.writeData(msg_buffer, len);
            file_handle.close();
            OS_REPORT("write append success!::%6d\n", len);
        } else {
            OS_REPORT("write append failure!\n");
        }
        break;
    }
}

void daObj_Pumpkin_HIO_c::genMessage(JORMContext* ctext) {
    ctext->genSlider("注目オフセット  ", &m.featured_offset, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("重力            ", &m.gravity, -100.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("スケ－ル        ", &m.scale, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("リアル影サイズ  ", &m.real_shadow_size, 0.0f, 10000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("体重            ", &m.weight, 0.0f, 255.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("高さ            ", &m.height, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("ひざ丈          ", &m.knee_length, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("幅              ", &m.width, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("発射速度        ", &m.fire_rate, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    // fire angle:
    ctext->genSlider("発射角度        ", &m.launch_angle, 0.0f, 90.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("浮きオフセット  ", &m.floating_offset, -100.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    // stand strong:
    ctext->genSlider("ふんばり        ", &m.hold_on, 0, 1000, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("引き抜き音遅延  ", &m.pull_sound_delay, 0, 1000, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("成長時間１      ", &m.growth_time_1, 0, 1000, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    ctext->genSlider("成長時間２      ", &m.growth_time_2, 0, 1000, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    // export file:
    ctext->genButton("ファイル書き出し", 0x40000002, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
}
#endif

/* 80CB83A4-80CB83D4 000034 0030+00 1/1 0/0 0/0 .rodata          l_ccDObjData */
const dCcD_SrcGObjInf l_ccDObjData = {
    {0, // mFlags
        {
            {0, 0, 0},  // mObjAt
            {0xD8FBFDFF, 0x1F}, // mObjTg
            {0x79}              // mObjCo
        } // mSrcObjHitInf
    }, // mObj
    {0, 0, 0, 0, 0}, // mGObjAt
    {10, 0, 0, 0, 0}, // mGObjTg
    {0} // mGObjCo
};


/* 80CB848C-80CB8494 000020 0008+00 2/3 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {3, 1},
};

/* 80CB8494-80CB849C -00001 0008+00 2/4 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "pumpkin",
};

/* 80CB849C-80CB84E0 000030 0044+00 1/2 0/0 0/0 .data            l_ccDCyl */
static dCcD_SrcCyl l_ccDCyl = {
    l_ccDObjData, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

#if DEBUG
static daObj_Pumpkin_HIO_c l_HIO;
#else
/* 80CB85DC-80CB85E0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_Pumpkin_Param_c l_HIO;
#endif

/* 80CB578C-80CB5A04 0000EC 0278+00 1/0 0/0 0/0 .text            __dt__15daObj_Pumpkin_cFv */
daObj_Pumpkin_c::~daObj_Pumpkin_c() {
    // "|%06d:%x|daObj_Pumpkin_c -> Destruct\n":
    OS_REPORT("|%06d:%x|daObj_Pumpkin_c -> デストラクト\n", g_Counter.mCounter0, this);
#if DEBUG
    if (mpHIO != NULL) {
        mpHIO->removeHIO();
    }
#endif

    dComIfG_resDelete(&mPhaseReq, l_resNameList[l_bmdData[0][1]]);
}

/* 80CB5A04-80CB5D74 000364 0370+00 1/1 0/0 0/0 .text            create__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daObj_Pumpkin_c);

    mType = getType();
    cPhs__Step phase = (cPhs__Step) dComIfG_resLoad(&mPhaseReq, l_resNameList[l_bmdData[0][1]]);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) ItemTableNo:%d, ProcType:%d<%08x> -> roomNo.%d", fopAcM_getProcNameString(this),
                  getType(), getItemTableNo(), getProcType(), fopAcM_GetParam(this), fopAcM_GetRoomNo(this));
        if ((daNpcT_chkEvtBit(0x1E) || daNpcT_chkEvtBit(0x92)) && isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0xEB0)) {
            return cPhs_ERROR_e;
        }

        J3DModelData* model_data = mpModel->getModelData();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

        fopAcM_setCullSizeBox(this, -50.0f, -50.0f, -50.0f, 50.0f, 50.0f, 50.0f);
#if DEBUG
        mpHIO = &l_HIO;
        // pumpkin:
        mpHIO->entryHIO("かぼちゃ");
#endif

        reset();
        mObjAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                        fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mStts.Init(mpHIO->m.weight, 0, this);
        mCyl0.Set(l_ccDCyl);
        mCyl0.SetStts(&mStts);
        mCyl1.Set(l_ccDCyl);
        mCyl1.SetStts(&mStts);
        current.pos = home.pos;
        old.pos = current.pos;
        field_0xB60 = current.pos.y;
        setMtx();
    }

    return phase;
}

/* 80CB5F88-80CB6018 0008E8 0090+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::CreateHeap() {
    // NONMATCHING
}

/* 80CB6018-80CB604C 000978 0034+00 1/1 0/0 0/0 .text            Delete__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB83DC-80CB83E0 00006C 0004+00 1/4 0/0 0/0 .rodata          @4860 */
SECTION_RODATA static f32 const lit_4860 = 1.0f;
COMPILER_STRIP_GATE(0x80CB83DC, &lit_4860);

/* 80CB83E0-80CB83E4 000070 0004+00 0/1 0/0 0/0 .rodata          @4861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4861 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CB83E0, &lit_4861);
#pragma pop

/* 80CB83E4-80CB83E8 000074 0004+00 0/3 0/0 0/0 .rodata          @4862 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4862[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CB83E4, &lit_4862);
#pragma pop

/* 80CB83E8-80CB83EC 000078 0004+00 0/1 0/0 0/0 .rodata          @4863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4863 = 0.5f;
COMPILER_STRIP_GATE(0x80CB83E8, &lit_4863);
#pragma pop

/* 80CB83EC-80CB83F0 00007C 0004+00 0/3 0/0 0/0 .rodata          @4864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4864 = -1.0f;
COMPILER_STRIP_GATE(0x80CB83EC, &lit_4864);
#pragma pop

/* 80CB83F0-80CB83F4 000080 0004+00 0/1 0/0 0/0 .rodata          @4865 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4865 = 0x43360B61;
COMPILER_STRIP_GATE(0x80CB83F0, &lit_4865);
#pragma pop

/* 80CB83F4-80CB83F8 000084 0004+00 0/2 0/0 0/0 .rodata          @4866 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4866 = -G_CM3D_F_INF;
COMPILER_STRIP_GATE(0x80CB83F4, &lit_4866);
#pragma pop

/* 80CB83F8-80CB83FC 000088 0004+00 0/1 0/0 0/0 .rodata          @4867 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4867 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CB83F8, &lit_4867);
#pragma pop

/* 80CB83FC-80CB8400 00008C 0004+00 0/1 0/0 0/0 .rodata          @4868 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4868 = 3000.0f;
COMPILER_STRIP_GATE(0x80CB83FC, &lit_4868);
#pragma pop

/* 80CB8400-80CB8404 000090 0004+00 0/1 0/0 0/0 .rodata          @4869 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4869 = 31.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CB8400, &lit_4869);
#pragma pop

/* 80CB8404-80CB8408 000094 0004+00 0/1 0/0 0/0 .rodata          @4870 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4870 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CB8404, &lit_4870);
#pragma pop

/* 80CB8408-80CB840C 000098 0004+00 0/1 0/0 0/0 .rodata          @4871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4871 = 0.75f;
COMPILER_STRIP_GATE(0x80CB8408, &lit_4871);
#pragma pop

/* 80CB840C-80CB8410 00009C 0004+00 0/1 0/0 0/0 .rodata          @4872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4872 = 2000.0f;
COMPILER_STRIP_GATE(0x80CB840C, &lit_4872);
#pragma pop

/* 80CB8410-80CB8414 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4873 = 2.0f;
COMPILER_STRIP_GATE(0x80CB8410, &lit_4873);
#pragma pop

/* 80CB8414-80CB8418 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4874 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4874 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CB8414, &lit_4874);
#pragma pop

/* 80CB8418-80CB841C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4875 = 11.0f;
COMPILER_STRIP_GATE(0x80CB8418, &lit_4875);
#pragma pop

/* 80CB841C-80CB8420 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4876 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4876 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CB841C, &lit_4876);
#pragma pop

/* 80CB8420-80CB8424 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4877 = -500.0f;
COMPILER_STRIP_GATE(0x80CB8420, &lit_4877);
#pragma pop

/* 80CB8424-80CB8428 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4878 = -250.0f;
COMPILER_STRIP_GATE(0x80CB8424, &lit_4878);
#pragma pop

/* 80CB8428-80CB842C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4879 = 1200.0f;
COMPILER_STRIP_GATE(0x80CB8428, &lit_4879);
#pragma pop

/* 80CB842C-80CB8430 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4880 = 900.0f;
COMPILER_STRIP_GATE(0x80CB842C, &lit_4880);
#pragma pop

/* 80CB8430-80CB8434 0000C0 0004+00 1/2 0/0 0/0 .rodata          @4881 */
SECTION_RODATA static f32 const lit_4881 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CB8430, &lit_4881);

/* 80CB8434-80CB8438 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4882 = 100.0f;
COMPILER_STRIP_GATE(0x80CB8434, &lit_4882);
#pragma pop

/* 80CB8438-80CB843C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4883 = 0.25f;
COMPILER_STRIP_GATE(0x80CB8438, &lit_4883);
#pragma pop

/* 80CB843C-80CB8440 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4884 = 30.0f;
COMPILER_STRIP_GATE(0x80CB843C, &lit_4884);
#pragma pop

/* 80CB8440-80CB8444 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4885 = 33.0f / 100.0f;
COMPILER_STRIP_GATE(0x80CB8440, &lit_4885);
#pragma pop

/* 80CB8444-80CB8448 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4886 = 6.0f;
COMPILER_STRIP_GATE(0x80CB8444, &lit_4886);
#pragma pop

/* 80CB8448-80CB8450 0000D8 0008+00 1/2 0/0 0/0 .rodata          @4888 */
SECTION_RODATA static u8 const lit_4888[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CB8448, &lit_4888);

/* 80CB604C-80CB7638 0009AC 15EC+00 1/1 0/0 0/0 .text            Execute__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::Execute() {
    // NONMATCHING
}

/* 80CB7638-80CB77DC 001F98 01A4+00 1/1 0/0 0/0 .text            Draw__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::Draw() {
    // NONMATCHING
}

/* 80CB7824-80CB7844 002184 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daObj_Pumpkin_cFP10fopAc_ac_c          */
int daObj_Pumpkin_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CB7844-80CB78C8 0021A4 0084+00 1/1 0/0 0/0 .text            isDelete__15daObj_Pumpkin_cFv */
int daObj_Pumpkin_c::isDelete() {
    // NONMATCHING
}

/* 80CB78C8-80CB7924 002228 005C+00 1/1 0/0 0/0 .text            setEnvTevColor__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80CB7924-80CB7968 002284 0044+00 1/1 0/0 0/0 .text            setRoomNo__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::setRoomNo() {
    // NONMATCHING
}

/* 80CB7968-80CB79DC 0022C8 0074+00 2/2 0/0 0/0 .text            reset__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::reset() {
    // NONMATCHING
}

/* 80CB79DC-80CB7AE4 00233C 0108+00 2/2 0/0 0/0 .text            setMtx__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::setMtx() {
    // NONMATCHING
}

/* 80CB7AE4-80CB7B84 002444 00A0+00 1/1 0/0 0/0 .text            calcRollAngle__15daObj_Pumpkin_cFsi
 */
s16 daObj_Pumpkin_c::calcRollAngle(s16 param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB8450-80CB8454 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5089 = 5.0f;
COMPILER_STRIP_GATE(0x80CB8450, &lit_5089);
#pragma pop

/* 80CB8454-80CB8458 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5090 = 200.0f;
COMPILER_STRIP_GATE(0x80CB8454, &lit_5090);
#pragma pop

/* 80CB7B84-80CB7D14 0024E4 0190+00 1/1 0/0 0/0 .text            getWallAngle__15daObj_Pumpkin_cFsPs
 */
s16 daObj_Pumpkin_c::getWallAngle(s16 param_0, s16* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB8458-80CB845C 0000E8 0004+00 2/2 0/0 0/0 .rodata          @5106 */
SECTION_RODATA static f32 const lit_5106 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CB8458, &lit_5106);

/* 80CB7D14-80CB7D98 002674 0084+00 1/1 0/0 0/0 .text            setSmokePrtcl__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setSmokePrtcl() {
    // NONMATCHING
}

/* 80CB7D98-80CB7E98 0026F8 0100+00 1/1 0/0 0/0 .text            setWaterPrtcl__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setWaterPrtcl() {
    static u8 emttrId[8] = {
        0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
    };
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB845C-80CB8460 0000EC 0004+00 1/1 0/0 0/0 .rodata          @5155 */
SECTION_RODATA static f32 const lit_5155 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CB845C, &lit_5155);

/* 80CB7E98-80CB7EF4 0027F8 005C+00 1/1 0/0 0/0 .text            setHamonPrtcl__15daObj_Pumpkin_cFv
 */
void daObj_Pumpkin_c::setHamonPrtcl() {
    // NONMATCHING
}

/* 80CB7EF4-80CB81A4 002854 02B0+00 1/1 0/0 0/0 .text            crash__15daObj_Pumpkin_cFv */
void daObj_Pumpkin_c::crash() {
    // NONMATCHING
}

/* 80CB81A4-80CB81C4 002B04 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Create__FPv */
static int daObj_Pumpkin_Create(void* i_this) {
    // NONMATCHING
}

/* 80CB81C4-80CB81E4 002B24 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Delete__FPv */
static int daObj_Pumpkin_Delete(void* i_this) {
    // NONMATCHING
}

/* 80CB81E4-80CB8204 002B44 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Execute__FPv */
static int daObj_Pumpkin_Execute(void* i_this) {
    // NONMATCHING
}

/* 80CB8204-80CB8224 002B64 0020+00 1/0 0/0 0/0 .text            daObj_Pumpkin_Draw__FPv */
static int daObj_Pumpkin_Draw(void* i_this) {
    // NONMATCHING
}

/* 80CB8224-80CB822C 002B84 0008+00 1/0 0/0 0/0 .text            daObj_Pumpkin_IsDelete__FPv */
static int daObj_Pumpkin_IsDelete(void*) {
    return 1;
}

/* 80CB84E8-80CB8508 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Pumpkin_MethodTable */
static actor_method_class daObj_Pumpkin_MethodTable = {
    (process_method_func)daObj_Pumpkin_Create,
    (process_method_func)daObj_Pumpkin_Delete,
    (process_method_func)daObj_Pumpkin_Execute,
    (process_method_func)daObj_Pumpkin_IsDelete,
    (process_method_func)daObj_Pumpkin_Draw,
};

/* 80CB8508-80CB8538 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_PUMPKIN */
extern actor_process_profile_definition g_profile_OBJ_PUMPKIN = {
  fpcLy_CURRENT_e,            // mLayerID
  8,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_OBJ_PUMPKIN,           // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daObj_Pumpkin_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  716,                        // mPriority
  &daObj_Pumpkin_MethodTable, // sub_method
  0x00044100,                 // mStatus
  fopAc_ACTOR_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};
