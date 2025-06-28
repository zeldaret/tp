/**
 * @file d_a_obj_mhole.cpp
 *
 */

#include "d/actor/d_a_obj_mhole.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "d/d_debug_viewer.h"
#include "m_Do/m_Do_graphic.h"

/* ############################################################################################## */
/* 80C93D88-80C93D90 000000 0008+00 5/5 0/0 0/0 .rodata          l_bmd */
static u32 const l_bmd[2] = {5, 5};

/* 80C93D90-80C93D98 000008 0008+00 0/1 0/0 0/0 .rodata          l_brk */
static u32 const l_brk[2] = {8, 8};

/* 80C93D98-80C93DA0 000010 0008+00 0/1 0/0 0/0 .rodata          l_btk1 */
static u32 const l_btk1[2] = {11, 11};

/* 80C93DA0-80C93DA8 000018 0008+00 0/1 0/0 0/0 .rodata          l_btk2 */
static u32 const l_btk2[2] = {12, 12};

/* 80C93DA8-80C93DB0 000020 0008+00 0/1 0/0 0/0 .rodata          l_length */
static f32 const l_length[2] = {2000.0f, 1000.0f};

/* 80C93DB0-80C93DB8 000028 0008+00 0/1 0/0 0/0 .rodata          l_size */
static f32 const l_size[2] = {150.0f, 370.0f};

/* 80C93E14-80C93E1C -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char const* l_arcName[2] = {"ef_MgnF_L", "ef_MgnF_S"};

/* 80C93E1C-80C93E68 000008 004C+00 1/1 0/0 0/0 .data            l_cps_src */
dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{AT_TYPE_40000, 0x0, 0x1d}, {0x0, 0x0}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6},                    // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                    // mGObjTg
        {0x0},                                                 // mGObjCo
    },                                                         // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 1000.0f, 0.0f}, 150.0f},  // mCps
    }  // mCpsAttr
};

#ifdef DEBUG
static daObjMHole_HIO_c l_HIO;

daObjMHole_HIO_c::daObjMHole_HIO_c() {
    scale.set(1.0f, 1.0f, 1.0f);
    scale_adjust_on = 0x0;
    collision_display = 0x0;
    angle = 0x0;
    angl.set(0, 0, 0);
}

void daObjMHole_HIO_c::genMessage(JORMContext* mctx) {
    mctx->genLabel("マグネホール", 0, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genCheckBox("スケール調整ＯＮ", &scale_adjust_on, 0x1, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("Ｘスケール", &scale.x, 0.1f, 10.0f, 0, NULL, 0xffff, 0xffff, 0x200, 24);
    mctx->genSlider("Ｙスケール", &scale.y, 0.1f, 10.0f, 0, NULL, 0xffff, 0xffff, 0x200, 24);
    mctx->genSlider("Ｚスケール", &scale.z, 0.1f, 10.0f, 0, NULL, 0xffff, 0xffff, 0x200, 24);
    mctx->genCheckBox("当たり表示", &collision_display, 0x1, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genCheckBox("アングル", &angle, 0x1, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("Ｘ", &angl.x, -0x7FFF, 0x7FFF, 0, NULL, 0xffff, 0xffff, 0x200, 24);
    mctx->genSlider("Ｙ", &angl.y, -0x7FFF, 0x7FFF, 0, NULL, 0xffff, 0xffff, 0x200, 24);
    mctx->genSlider("Ｚ", &angl.z, -0x7FFF, 0x7FFF, 0, NULL, 0xffff, 0xffff, 0x200, 24);
}
#endif

/* 80C92E58-80C92FB8 000078 0160+00 1/1 0/0 0/0 .text            searchParentSub__FPvPv */
static void* searchParentSub(void* i_magLift, void* i_mhole) {
    daObjMHole_c* mhole = (daObjMHole_c*)i_mhole;
    fopAc_ac_c* mag_lift = (fopAc_ac_c*)i_magLift;

    if (mag_lift != NULL && fopAcM_IsActor(mag_lift) &&
        fopAcM_GetProfName(mag_lift) == PROC_Obj_MagLift &&
        mag_lift->home.pos.abs(mhole->home.pos) < 10.0f)
    {
        return mag_lift;
    }

    return NULL;
}

/* 80C92FB8-80C92FD8 0001D8 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* p_actor) {
    return static_cast<daObjMHole_c*>(p_actor)->CreateHeap();
}

/* 80C92FD8-80C93014 0001F8 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjMHole_cFv */
void daObjMHole_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C93014-80C9307C 000234 0068+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjMHole_cFv */
void daObjMHole_c::setBaseMtx() {
#ifdef DEBUG
    if (l_HIO.scale_adjust_on != 0) {
        scale = l_HIO.scale;
    }
    if (l_HIO.angle != 0) {
        current.angle = l_HIO.angl;
        shape_angle = current.angle;
    }
#endif

    mpModel->setBaseScale(scale);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C9307C-80C93198 00029C 011C+00 1/1 0/0 0/0 .text            Create__12daObjMHole_cFv */
int daObjMHole_c::Create() {
    if (getType() != 0x2) {
        u8 sw_bit = getSwbit();
        u8 state = TRUE;
        if (sw_bit != 0xFF && !fopAcM_isSwitch(this, sw_bit)) {
            state = FALSE;
        }
        mIsOn = state;
    }
    if (mIsOn) {
        mpBtk2Anm->setFrame(mpBtk2Anm->getEndFrame());
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    mStts.Init(0xFF, 0xFF, this);
    mCps.Set(l_cps_src);
    mCps.SetStts(&mStts);
    mSound.init(&current.pos, 1);

    return 1;
}

/* 80C93198-80C93204 0003B8 006C+00 1/1 0/0 0/0 .text            checkParent__12daObjMHole_cFv */
int daObjMHole_c::checkParent() {
    parentActorID = fopAcM_GetID(fpcM_Search(searchParentSub, this));
    if (parentActorID == fpcM_ERROR_PROCESS_ID_e) {
        return FALSE;
    }
    return TRUE;
}

/* ############################################################################################## */
/* 80C93204-80C93498 000424 0294+00 1/1 0/0 0/0 .text            CreateHeap__12daObjMHole_cFv */
int daObjMHole_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mKind], l_bmd[mKind]);
    JUT_ASSERT(336, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0, 0x19000284);
    if (mpModel == NULL) {
        return FALSE;
    }

    J3DAnmTevRegKey* pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName[mKind], l_brk[mKind]);
    JUT_ASSERT(360,  pbrk != 0);
    mpBrkAnm = new mDoExt_brkAnm();
    if (mpBrkAnm == NULL ||
        !mpBrkAnm->init(modelData, pbrk, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1))
    {
        return FALSE;
    }
    mpBrkAnm->setPlaySpeed(1.0f);

    {
        J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[mKind], l_btk1[mKind]);
        JUT_ASSERT(375,  pbtk != 0);
        mpBtk1Anm = new mDoExt_btkAnm();
        if (mpBtk1Anm == NULL ||
            !mpBtk1Anm->init(modelData, pbtk, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1))
        {
            return FALSE;
        }
        mpBtk1Anm->setPlaySpeed(1.0f);
    }

    {
        J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[mKind], l_btk2[mKind]);
        JUT_ASSERT(391,  pbtk != 0);
        mpBtk2Anm = new mDoExt_btkAnm();
        if (mpBtk2Anm == NULL ||
            !mpBtk2Anm->init(modelData, pbtk, TRUE, J3DFrameCtrl::EMode_NONE, 1.0f, 0, -1))
        {
            return FALSE;
        }
        mpBtk2Anm->setPlaySpeed(0.0f);
        mpBtk2Anm->setFrame(0.0f);
    }

    return TRUE;
}

/* 80C934E0-80C93660 000700 0180+00 1/1 0/0 0/0 .text            create__12daObjMHole_cFv */
int daObjMHole_c::create() {
    fopAcM_SetupActor(this, daObjMHole_c);


    mKind = getKind();
    if (getType() == 0x1 && !checkParent()) {
        return cPhs_INIT_e;
    }

    int phase = dComIfG_resLoad(&mPhase, l_arcName[mKind]);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x4000)) {
            return cPhs_ERROR_e;
        }
        if (Create() == 0) {
            return cPhs_ERROR_e;
        }
#ifdef DEBUG
        OSReport("MHole Param<%x> arc<%s>\n", fopAcM_GetParam(this), l_arcName[mKind]);
        l_HIO.entryHIO("マグネホール");
#endif
    }

    return phase;
}

/* 80C936A8-80C93928 0008C8 0280+00 1/1 0/0 0/0 .text            execute__12daObjMHole_cFv */
int daObjMHole_c::execute() {
    if (getType() == 0x1 && parentActorID != fpcM_ERROR_PROCESS_ID_e) {
        fopAc_ac_c* actor = fopAcM_SearchByID(parentActorID);
        if (actor != NULL) {
            current.pos = actor->current.pos;
            home.pos = current.pos;
        }
    }

    if (getType() != 0x2) {
        u8 sw_bit = getSwbit();
        u8 state = TRUE;
        if (sw_bit != 0xFF && !fopAcM_isSwitch(this, sw_bit)) {
            state = FALSE;
        }
        mIsOn = state;
    }

    cXyz end_pos = home.pos;
    cXyz start_pos;
    f32 start_y;

    if (mIsOn) {
        start_y = scale.y * -l_length[mKind];
    } else {
        start_y = 0.0f;
    }

    start_pos.set(0.0f, start_y, 0.0f);
    mDoMtx_stack_c::transS(home.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(&start_pos, &start_pos);
    mCps.cCcD_CpsAttr::Set(start_pos, end_pos, scale.x * l_size[mKind]);
    cXyz length = end_pos - start_pos;
    mCps.SetAtVec(length);
    setBaseMtx();

    if (mIsOn) {
        dComIfG_Ccsp()->Set(&mCps);
        mpBtk2Anm->setPlaySpeed(1.0f);
        effectSet();
    }

    mpBrkAnm->play();
    mpBtk1Anm->play();
    mpBtk2Anm->play();
    if (mpEmitter[0] != NULL) {
        mSound.startLevelSound(Z2SE_OBJ_MAGNE_EFFECT, 0, -1);
    }
    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    field_0x701 = mIsOn;

    return 1;
}

/* ############################################################################################## */
/* 80C93928-80C93A88 000B48 0160+00 1/1 0/0 0/0 .text            effectSet__12daObjMHole_cFv */
void daObjMHole_c::effectSet() {
    static u16 const l_eff_id_L[4] = {0x86EF, 0x86F0, 0x86F1, 0x86F2};
    static u16 const l_eff_id_S[4] = {0x86F3, 0x86F4, 0x86F5, 0x86F6};

    for (int i = 0; i < 4; i++) {
        if (mpEmitter[i] == NULL) {
            if (mKind == EFF_LARGE_e) {
                mpEmitter[i] = dComIfGp_particle_set(l_eff_id_L[i], &current.pos, &shape_angle,
                                                     NULL, -1, NULL, -1, NULL, NULL, NULL);
            } else if (mKind == EFF_SMALL_e) {
                mpEmitter[i] = dComIfGp_particle_set(l_eff_id_S[i], &current.pos, &shape_angle,
                                                     NULL, -1, NULL, -1, NULL, NULL, NULL);
            }
        } else {
            JGeometry::TVec3<s16> emitter_rot;
            emitter_rot.x = shape_angle.x;
            emitter_rot.y = shape_angle.y;
            emitter_rot.z = shape_angle.z;
            mpEmitter[i]->setGlobalTranslation(current.pos);
            mpEmitter[i]->setGlobalRotation(emitter_rot);
        }
    }
}

/* 80C93A88-80C93ADC 000CA8 0054+00 1/1 0/0 0/0 .text            effectEnd__12daObjMHole_cFv */
void daObjMHole_c::effectEnd() {
    for (int i = 0; i < 4; i++) {
        if (mpEmitter[i] != NULL) {
            mpEmitter[i]->becomeInvalidEmitter();
            mpEmitter[i]->quitImmortalEmitter();
            mpEmitter[i] = NULL;
        }
    }
}

/* ############################################################################################## */
/* 80C93ADC-80C93CAC 000CFC 01D0+00 1/1 0/0 0/0 .text            draw__12daObjMHole_cFv */
int daObjMHole_c::draw() {
    g_env_light.settingTevStruct(0x0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    mpBrkAnm->entry(mpModel->getModelData());
    mpBtk1Anm->entry(mpModel->getModelData());
    mpBtk2Anm->entry(mpModel->getModelData());

    dComIfGd_setListFilter();
    J3DModelData* modelData = mpModel->getModelData();
    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        if (i == 0 || i == 1) {
            J3DMaterial* material = modelData->getMaterialNodePointer(i);
            if (material->getTexGenBlock()->getTexMtx(0) != NULL) {
                J3DTexMtxInfo* tex_mtx_info =
                    &material->getTexGenBlock()->getTexMtx(0)->getTexMtxInfo();
                if (tex_mtx_info != NULL) {
                    cXyz* unused = dKyw_get_wind_vec();
                    cXyz unused2;
                    Mtx effect_mtx;
                    MTXLightPerspective(effect_mtx, dComIfGd_getView()->fovy,
                                          dComIfGd_getView()->aspect, 1.0f, 1.0f, -0.01f, 0.0f);
                    mDoGph_gInf_c::setWideZoomLightProjection(effect_mtx);
                    tex_mtx_info->setEffectMtx(effect_mtx);
                    modelData->simpleCalcMaterial((MtxP)j3dDefaultMtx);
                }
            }
        }
    }

    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    mDoExt_brkAnmRemove(mpModel->getModelData());
    mDoExt_btkAnmRemove(mpModel->getModelData());

#ifdef DEBUG
    if (l_HIO.collision_display != 0) {
        GXColor color = {0xFF, 0x0, 0x0, 0xFF};
        if (mCps.GetAtVecP() != NULL) {
            dDbVw_drawArrowXlu(mCps.GetStart(), mCps.GetEnd(), color, 1, 12);
        }
    }
#endif

    return 1;
}

/* 80C93CAC-80C93D00 000ECC 0054+00 1/1 0/0 0/0 .text            _delete__12daObjMHole_cFv */
int daObjMHole_c::_delete() {
    effectEnd();
    mSound.deleteObject();
    dComIfG_resDelete(&mPhase, l_arcName[mKind]);
#ifdef DEBUG
    l_HIO.removeHIO();
#endif

    return 1;
}

/* 80C93D00-80C93D20 000F20 0020+00 1/0 0/0 0/0 .text            daObjMHole_Draw__FP12daObjMHole_c */
static int daObjMHole_Draw(daObjMHole_c* i_this) {
    return i_this->draw();
}

/* 80C93D20-80C93D40 000F40 0020+00 1/0 0/0 0/0 .text daObjMHole_Execute__FP12daObjMHole_c */
static int daObjMHole_Execute(daObjMHole_c* i_this) {
    return i_this->execute();
}

/* 80C93D40-80C93D60 000F60 0020+00 1/0 0/0 0/0 .text            daObjMHole_Delete__FP12daObjMHole_c */
static int daObjMHole_Delete(daObjMHole_c* i_this) {
    fopAcM_RegisterDeleteID(i_this, "Hasu");
    return i_this->_delete();
}

/* 80C93D60-80C93D80 000F80 0020+00 1/0 0/0 0/0 .text            daObjMHole_Create__FP10fopAc_ac_c */
static int daObjMHole_Create(fopAc_ac_c* i_this) {
    fopAcM_RegisterCreateID(daObjMHole_c,i_this, "MHole");
    return static_cast<daObjMHole_c*>(i_this)->create();
}

/* 80C93E68-80C93E88 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjMHole_Method */
static actor_method_class l_daObjMHole_Method = {
    (process_method_func)daObjMHole_Create,  
    (process_method_func)daObjMHole_Delete,
    (process_method_func)daObjMHole_Execute, 
    NULL,
    (process_method_func)daObjMHole_Draw,
};

/* 80C93E88-80C93EB8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MHole */
extern actor_process_profile_definition g_profile_Obj_MHole = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_MHole,          // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjMHole_c),    // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    589,                     // mPriority
    &l_daObjMHole_Method,    // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C93E00-80C93E00 000078 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
