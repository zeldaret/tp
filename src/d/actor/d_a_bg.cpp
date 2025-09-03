/**
 * @file d_a_bg.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_bg.h"
#include "d/d_com_inf_game.h"
#include "d/d_com_static.h"
#include "d/actor/d_a_grass.h"
#include "d/d_bg_w.h"
#include "m_Do/m_Do_lib.h"
#include "d/d_demo.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"

/* 80457BF8-80457C38 000078 0040+00 1/1 0/0 0/0 .text            setArcName__6daBg_cFv */
const char* daBg_c::setArcName() {
    static char arcName[32];

    strncpy(arcName, dComIfG_getRoomArcName(fopAcM_GetParam(this)), sizeof(arcName));
    return arcName;
}

/* 80457C38-80457D78 0000B8 0140+00 2/2 0/0 0/0 .text            createMatAnm__FP12J3DModelDataUs */
static int createMatAnm(J3DModelData* i_modelData, u16 i_materialID) {
    if (i_materialID != 0xFFFF) {
        J3DMaterial* material = i_modelData->getMaterialNodePointer(i_materialID);
        
        if (material->getMaterialAnm() == NULL) {
            J3DMaterialAnm* anm = new J3DMaterialAnm();
            if (anm == NULL) {
                return 0;
            }

            material->setMaterialAnm(anm);
        }
    }

    return 1;
}

/* 80459374-80459380 000000 000C+00 1/1 0/0 0/0 .rodata          @3756 */
static u8 const lit_3756[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80457F34-80458040 0003B4 010C+00 1/1 0/0 0/0 .text
 * create__13daBg_btkAnm_cFP12J3DModelDataP19J3DAnmTextureSRTKeyi */
int daBg_btkAnm_c::create(J3DModelData* i_modelData, J3DAnmTextureSRTKey* i_btk, int i_anmPlay) {
    mpBtk = new mDoExt_btkAnm();
    if (mpBtk == NULL) {
        return 0;
    }

    if (!mpBtk->init(i_modelData, i_btk, i_anmPlay, -1, 1.0f, 0, -1)) {
        return 0;
    }

    J3DAnmTextureSRTKey* btk = mpBtk->getBtkAnm();
    for (u16 i = 0; i < btk->getUpdateMaterialNum(); i++) {
        u16 id = btk->getUpdateMaterialID(i);
        if (!createMatAnm(i_modelData, id)) {
            return 0;
        }
    }

    return 1;
}

/* 80458088-804580CC 000508 0044+00 1/1 0/0 0/0 .text entry__13daBg_btkAnm_cFP12J3DModelData */
void daBg_btkAnm_c::entry(J3DModelData* i_modelData) {
    mpBtk->entry(i_modelData, 0.0f);
    field_0x4 = 0;
}

/* 804580CC-804580F0 00054C 0024+00 1/1 0/0 0/0 .text            play__13daBg_btkAnm_cFv */
void daBg_btkAnm_c::play() {
    mpBtk->play();
}

/* 804580F0-80458230 000570 0140+00 1/1 0/0 0/0 .text
 * create__13daBg_brkAnm_cFP12J3DModelDataP15J3DAnmTevRegKeyi   */
int daBg_brkAnm_c::create(J3DModelData* i_modelData, J3DAnmTevRegKey* i_brk, int i_anmPlay) {
    mpBrk = new mDoExt_brkAnm();

    if (mpBrk == NULL) {
        return 0;
    }

    if (!mpBrk->init(i_modelData, i_brk, i_anmPlay, -1, 1.0f, 0, -1)) {
        return 0;
    }

    J3DAnmTevRegKey* brk = mpBrk->getBrkAnm();
    for (u16 i = 0; i < brk->getCRegUpdateMaterialNum(); i++) {
        u16 id = brk->getCRegUpdateMaterialID(i);
        if (!createMatAnm(i_modelData, id)) {
            return 0;
        }
    }

    for (u16 i = 0; i < brk->getKRegUpdateMaterialNum(); i++) {
        u16 id = brk->getKRegUpdateMaterialID(i);
        if (!createMatAnm(i_modelData, id)) {
            return 0;
        }
    }

    return 1;
}

/* 80458230-80458274 0006B0 0044+00 1/1 0/0 0/0 .text entry__13daBg_brkAnm_cFP12J3DModelData */
void daBg_brkAnm_c::entry(J3DModelData* i_modelData) {
    mpBrk->entry(i_modelData, 0.0f);
    field_0x4 = 0;
}

/* 80458274-80458298 0006F4 0024+00 1/1 0/0 0/0 .text            play__13daBg_brkAnm_cFv */
void daBg_brkAnm_c::play() {
    mpBrk->play();
}

/* 80458298-804582B8 000718 0020+00 1/1 0/0 0/0 .text            checkCreateHeap__FP10fopAc_ac_c */
static int checkCreateHeap(fopAc_ac_c* i_this) {
    daBg_c* a_this = (daBg_c*)i_this;
    return a_this->createHeap();
}

/* 804582B8-80458750 000738 0498+00 2/2 0/0 1/1 .text            createHeap__6daBg_cFv */
int daBg_c::createHeap() {
    static char l_modelName[6][11] = {"model.bmd", "model1.bmd", "model2.bmd", "model3.bmd", "model4.bmd", "model5.bmd"};
    static char l_modelName2[6][11] = {"model.bdl", "model1.bdl", "model2.bdl", "model3.bdl", "model4.bdl", "model5.bdl"};
    static char l_btkName[6][11] = {"model.btk", "model1.btk", "model2.btk", "model3.btk", "model4.btk", "model5.btk"};
    static char l_brkName[6][11] = {"model.brk", "model1.brk", "model2.brk", "model3.brk", "model4.brk", "model5.brk"};

    const char* arcName = setArcName();
    int roomNo = fopAcM_GetParam(this);
    daBg_Part* bgPart = mBgParts;

    for (int i = 0; i < 6; bgPart++, i++) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getStageRes(arcName, l_modelName[i]);
        if (modelData == NULL) {
            modelData = (J3DModelData*)dComIfG_getStageRes(arcName, l_modelName2[i]);
        }

        if (modelData != NULL) {
            mDoExt_setupStageTexture(modelData);
            u32 modelFlags = 0x11000084;

            for (u16 j = 0; j < modelData->getMaterialNum(); j++) {
                J3DMaterial* material = modelData->getMaterialNodePointer(j);
                material->setMaterialAnm(NULL);
            }

            J3DAnmTextureSRTKey* btk =
                (J3DAnmTextureSRTKey*)dComIfG_getStageRes(arcName, l_btkName[i]);
            if (btk != NULL) {
                bgPart->btk = new daBg_btkAnm_c();
                if (bgPart->btk == NULL) {
                    return 0;
                }

                if (!bgPart->btk->create(modelData, btk, TRUE)) {
                    return 0;
                }

                modelFlags |= 0x1200;
            } else {
                bgPart->btk = NULL;
            }
            bgPart->btk_speed = -1.0f;

            J3DAnmTevRegKey* brk = (J3DAnmTevRegKey*)dComIfG_getStageRes(arcName, l_brkName[i]);
            if (brk != NULL) {
                bgPart->brk = new daBg_brkAnm_c();
                if (bgPart->brk == NULL) {
                    return 0;
                }

                if (!bgPart->brk->create(modelData, brk, TRUE)) {
                    return 0;
                }
            } else {
                bgPart->brk = NULL;
            }

            for (u16 j = 0; j < modelData->getMaterialNum(); j++) {
                JUTNameTab* nametab = modelData->getMaterialName();
                J3DMaterial* material = modelData->getMaterialNodePointer(j);

                const char* name = nametab->getName(j);

                if (name[3] == 'M' && name[4] == 'A') {
                    if (!memcmp(&name[5], "00", 2)) {
                        modelFlags |= 0x1200;
                    } else if (!memcmp(&name[5], "01", 2)) {
                        modelFlags |= 0x20000000;
                    } else if (!memcmp(&name[5], "12", 2) || !memcmp(&name[5], "18", 2)) {
                        field_0x5f0 = 1;
                    }
                }
            }

            bgPart->model = mDoExt_J3DModel__create(modelData, 0, modelFlags);
            if (bgPart->model == NULL) {
                return 0;
            }

            bgPart->tevstr = new dKy_tevstr_c();
            if (bgPart->tevstr == NULL) {
                return 0;
            }

            dKy_tevstr_init(bgPart->tevstr, roomNo, 0xFF);
        }
    }

    cBgD_t* dzb = (cBgD_t*)dComIfG_getStageRes(arcName, "room.dzb");
    if (dzb != NULL) {
        mpKCol = NULL;
        mpBgW = new dBgW();
        if (mpBgW == NULL) {
            return 0;
        }

        if (mpBgW->Set(dzb, cBgW::GLOBAL_e, NULL)) {
            return 0;
        }

        dStage_roomControl_c::setBgW(roomNo, (dBgW_base*)mpBgW);
        mpBgW->SetPriority(dBgW_Base::PRIORITY_0);
    } else {
        void* kcl = dComIfG_getStageRes(arcName, "room.kcl");
        void* plc = dComIfG_getStageRes(arcName, "room.plc");

        if (kcl != NULL && plc != NULL) {
            mpBgW = NULL;
            mpKCol = new dBgWKCol();
            if (mpKCol == NULL) {
                return 0;
            }

            mpKCol->create(kcl, plc);
            mpKCol->SetPriority(dBgW_Base::PRIORITY_0);
        } else {
            mpBgW = NULL;
            mpKCol = NULL;
        }
    }

    return 1;
}

/* 80458788-804588A4 000C08 011C+00 1/1 0/0 0/0 .text            __dt__6daBg_cFv */
daBg_c::~daBg_c() {
    int roomNo = fopAcM_GetParam(this);

    if (heap != NULL && mpBgW != NULL) {
        dComIfG_Bgsp().Release((dBgW_Base*)mpBgW);
        dStage_roomControl_c::setBgW(roomNo, NULL);
    }

    if (heap != NULL && mpKCol != NULL) {
        dComIfG_Bgsp().Release(mpKCol);
        dStage_roomControl_c::setBgW(roomNo, NULL);
    }

    daGrass_c::deleteRoomGrass(roomNo);
    daGrass_c::deleteRoomFlower(roomNo);
    daSus_c::reset(roomNo);
    dComIfGp_roomControl_offStatusFlag(roomNo, 0x10);
}

/* 804588A4-804588C4 000D24 0020+00 1/0 0/0 0/0 .text            daBg_Draw__FP6daBg_c */
static int daBg_Draw(daBg_c* i_this) {
    return i_this->draw();
}

/* 804588C4-80458F38 000D44 0674+00 1/1 0/0 0/0 .text            draw__6daBg_cFv */
// NONMATCHING - just regalloc + some reorder issues
int daBg_c::draw() {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();

    int roomNo = fopAcM_GetParam(this);
    daBg_Part* bgPart = mBgParts;
    J3DModel* bg_model;

    u8 spA;
    u8 sp9;
    u8 sp8 = 0;
    int sp38 = 0;

    dDlst_window_c* sp34 = dComIfGp_getWindow(0);
    camera_class* sp30 = dComIfGp_getCamera(sp34->getCameraID());

    dComIfGd_setListBG();
    mDoLib_clipper::changeFar(1000000.0f);

    J3DModelData* modelData;
    for (int i = 0; i < 6; bgPart++, i++) {
        sp8 = 0;
        spA = 0;
        sp9 = 0;

        bg_model = bgPart->model;
        
        if (bg_model != NULL) {
            modelData = bg_model->getModelData();

            if (bgPart->btk != NULL) {
                bgPart->btk->entryFrame();
            }

            if (bgPart->brk != NULL) {
                if (field_0x5f0 == 9) {
                    bgPart->brk->entryFrame(bgPart->brk->getEndFrame());
                } else {
                    bgPart->brk->entryFrame();
                }
            }

            bg_model->calc();

            for (u16 j = 0; j < modelData->getShapeNum(); j++) {
                J3DShape* shape = modelData->getShapeNodePointer(j);

                if (mDoLib_clipper::clip(j3dSys.getViewMtx(), shape->getMin(), shape->getMax())) {
                    shape->hide();
                } else {
                    shape->show();
                }
            }

            static int l_tevStrType[6] = {32, 33, 34, 35, 35, 32};
            g_env_light.settingTevStruct(l_tevStrType[i], NULL, bgPart->tevstr);
            g_env_light.setLightTevColorType_MAJI(bg_model, bgPart->tevstr);
            dKy_bg_MAxx_proc(bg_model);

            if (bg_model != NULL) {
                modelData = bg_model->getModelData();

                for (u16 j = 0; j < modelData->getMaterialNum(); j++) {
                    const char* name;
                    J3DMaterial* mat;
                    JUTNameTab* nametab;

                    mat = modelData->getMaterialNodePointer(j);
                    nametab = modelData->getMaterialName();
                    name = nametab->getName(j);

                    if (!memcmp(&name[3], "MA12", 4)) {
                        if (g_env_light.wether_pat1 == 6) {
                            field_0x5f0 = 0;
                        }
                    } else if (!memcmp(&name[3], "MA18", 4)) {
                        if (dDemo_c::getFrame() >= 1118) {
                            field_0x5f0 = 0;
                        }

                            /* Main Event - Get shadow crystal (can now transform) */
                        if (dComIfGs_isEventBit(dSv_event_flag_c::M_077)) {
                            field_0x5f0 = 9;
                        }
                    } else if (!memcmp(&name[3], "MA15", 4)) {
                        if (dComIfGs_BossLife_public_Get() != -1) {
                            field_0x5f1 = dComIfGs_BossLife_public_Get() + 1;
                        } else {
                            field_0x5f1 = 0;
                        }
                    } else if (!memcmp(&name[3], "MA09", 4)) {
                        bgPart->btk_speed = 1.0f - (1.0f - g_env_light.mWaterSurfaceShineRate) * 0.9f;
                    } else if (!memcmp(&name[3], "MA05", 4)) {
                        bgPart->tevstr->Material_id |= (u8)j;
                    }

                    if (!strcmp(dComIfGp_getStartStageName(), "F_SP127") ||
                        !strcmp(dComIfGp_getStartStageName(), "R_SP127")) {
                        if (!memcmp(&name[3], "MA00_Enkei_Tree_Color", 21) ||
                            !memcmp(&name[3], "MA00_Gake", 9) ||
                            !memcmp(&name[3], "MA00_Kusa", 9)) {
                            J3DGXColorS10 colorS10;
                            J3DGXColor color;

                            GXColorS10 sp50;
                            switch (g_env_light.fishing_hole_season) {
                            case 2:
                                sp50.r = -3;
                                sp50.g = 0;
                                sp50.b = -4;
                                break;
                            case 3:
                                sp50.r = 0;
                                sp50.g = -10;
                                sp50.b = -13;
                                break;
                            case 4:
                                sp50.r = 18;
                                sp50.g = 17;
                                sp50.b = 25;
                                break;
                            default:
                                sp50.r = 0;
                                sp50.g = 0;
                                sp50.b = 0;
                                break;
                            }

                            f32 var_f31 = bgPart->tevstr->AmbCol.r / 10.0f;
                            var_f31 *= var_f31;
                            if (var_f31 > 1.0f) {
                                var_f31 = 1.0f;
                            }
                            colorS10.r = sp50.r * var_f31;

                            var_f31 = bgPart->tevstr->AmbCol.g / 10.0f;
                            var_f31 *= var_f31;
                            if (var_f31 > 1.0f) {
                                var_f31 = 1.0f;
                            }
                            colorS10.g = sp50.g * var_f31;

                            var_f31 = bgPart->tevstr->AmbCol.b / 10.0f;
                            var_f31 *= var_f31;
                            if (var_f31 > 1.0f) {
                                var_f31 = 1.0f;
                            }
                            colorS10.b = sp50.b * var_f31;
                            colorS10.a = 255;
                            mat->setTevColor(0, &colorS10);

                            color.r = 0;
                            color.g = 0;
                            color.b = 0;
                            color.a = 255;
                            mat->setTevKColor(0, &color);
                        }
                    }
                }
            }

            mDoExt_modelEntryDL(bg_model);
            dComIfGd_setListBG();
        }
    }

    dComIfGd_setList();
    g_env_light.settingTevStruct(0x10, NULL, dComIfGp_roomControl_getTevStr(roomNo));

    return 1;
}

int daBg_c::execute() {
    daBg_Part* bgPart = mBgParts;

    for (int i = 0; i < 6; i++) {
        if (bgPart->btk != NULL) {
            if (field_0x5f1 != 0) {
                bgPart->btk->playspeed((field_0x5f1 - 1) / 100.0f);
            }

            if (bgPart->btk_speed >= 0.0f) {
                bgPart->btk->playspeed(bgPart->btk_speed);
            }
            bgPart->btk->play();
        }

        if (bgPart->brk != NULL && field_0x5f0 == 0) {
            bgPart->brk->play();
        }

        bgPart++;
    }

    return 1;
}

/* 80458F38-8045901C 0013B8 00E4+00 1/0 0/0 0/0 .text            daBg_Execute__FP6daBg_c */
static int daBg_Execute(daBg_c* i_this) {
    return i_this->execute();
}

/* 8045901C-80459024 00149C 0008+00 1/0 0/0 0/0 .text            daBg_IsDelete__FP6daBg_c */
static int daBg_IsDelete(daBg_c* i_this) {
    return 1;
}

/* 80459024-8045904C 0014A4 0028+00 1/0 0/0 0/0 .text            daBg_Delete__FP6daBg_c */
static int daBg_Delete(daBg_c* i_this) {
    i_this->~daBg_c();
    return 1;
}

/* 8045904C-8045906C 0014CC 0020+00 1/0 0/0 0/0 .text            daBg_Create__FP10fopAc_ac_c */
static int daBg_Create(fopAc_ac_c* i_this) {
    daBg_c* a_this = (daBg_c*)i_this;
    int rt = a_this->create();
    return rt;
}

/* 8045906C-8045933C 0014EC 02D0+00 1/1 0/0 0/0 .text            create__6daBg_cFv */
int daBg_c::create() {
    int roomNo = fopAcM_GetParam(this);
    field_0x5f0 = 0;
    field_0x5f1 = 0;

    if (this->heap == NULL) {
        fopAcM_SetupActor(this, daBg_c);

        home.roomNo = roomNo;
        current.roomNo = roomNo;

        JKRExpHeap* room_heap = dStage_roomControl_c::getMemoryBlock(roomNo);
        if (room_heap != NULL) {
            this->heap = JKRCreateSolidHeap(-1, room_heap, false);
            JUT_ASSERT(471, heap != 0);

            JKRHeap* old = mDoExt_setCurrentHeap(this->heap);
            int rt = createHeap();
            JUT_ASSERT(476, rt == 1);

            mDoExt_setCurrentHeap(old);
            this->heap->adjustSize();
        } else {
            u32 size = 0x20040;
            size |= 0x80000000;
            if (!fopAcM_entrySolidHeap(this, checkCreateHeap, size)) {
                return cPhs_ERROR_e;
            }
        }

        daBg_Part* bgPart = mBgParts;
        J3DModelData* modelData;
        for (int i = 0; i < 6; i++) {
            if (bgPart->model != NULL) {
                J3DModelData* modelData = bgPart->model->getModelData();

                if (bgPart->btk != NULL) {
                    bgPart->btk->entry(modelData);
                }

                if (bgPart->brk != NULL) {
                    bgPart->brk->entry(modelData);
                }
            }
            bgPart++;
        }

        f32 transX;
        f32 transY;
        s16 angle;
        if (dComIfGp_getMapTrans(roomNo, &transX, &transY, &angle)) {
            daBg_Part* bgPart = mBgParts;
            for (int i = 0; i < 6; i++) {
                J3DModel* model = bgPart->model;

                if (model != NULL) {
                    mDoMtx_stack_c::transS(transX, 0.0f, transY);
                    mDoMtx_stack_c::YrotM(angle);
                    model->setBaseTRMtx(mDoMtx_stack_c::get());

                    modelData = model->getModelData();
                    for (u16 j = 0; j < modelData->getMaterialNum(); j++) {
                        JUTNameTab* nametab = modelData->getMaterialName();
                        const char* name = nametab->getName(j);

                        if (name[3] == 'M' && name[4] == 'A' && name[5] == '0' && name[6] == '8') {
                            J3DMaterial* material = modelData->getMaterialNodePointer(j);
                            J3DShape* shape = material->getShape();
                            shape->setTexMtxLoadType(0x2000);
                        }
                    }
                }
                bgPart++;
            }
        }

        if (mpBgW != NULL) {
            if (dComIfG_Bgsp().Regist(mpBgW, this)) {
                return cPhs_ERROR_e;
            }
        }

        if (mpKCol != NULL) {
            if (dComIfG_Bgsp().Regist(mpKCol, this)) {
                return cPhs_ERROR_e;
            }
        }

        dKy_tevstr_c* tevstr = dComIfGp_roomControl_getTevStr(roomNo);
        dKy_tevstr_init(tevstr, roomNo, 0xFF);
    }

    dComIfGp_roomControl_onStatusFlag(roomNo, 0x10);
    OS_REPORT("<BG> room%d\n", roomNo);
    return cPhs_COMPLEATE_e;
}

/* 8045954C-8045956C -00001 0020+00 1/0 0/0 0/0 .data            l_daBg_Method */
static actor_method_class l_daBg_Method = {
    (process_method_func)daBg_Create,
    (process_method_func)daBg_Delete,
    (process_method_func)daBg_Execute,
    (process_method_func)daBg_IsDelete,
    (process_method_func)daBg_Draw,
};

/* 8045956C-804595A0 -00001 0034+00 0/0 0/0 1/0 .data            g_profile_BG */
extern actor_process_profile_definition2 g_profile_BG = {
    fpcLy_CURRENT_e,       // mLayerID
    7,                     // mListID
    fpcPi_CURRENT_e,       // mListPrio
    PROC_BG,        // mProcName
    &g_fpcLf_Method.base, // sub_method
    sizeof(daBg_c),            // mSize
    0,                     // mSizeOther
    0,                     // mParameters
    &g_fopAc_Method.base,  // sub_method
    753,                   // mPriority
    &l_daBg_Method, // sub_method
    0x00060000,            // mStatus
    fopAc_ACTOR_e,   // mActorType
    fopAc_CULLBOX_0_e,     // cullType
    0,
};
