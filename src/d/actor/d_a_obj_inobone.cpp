/**
 * @file d_a_obj_inobone.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_inobone.h"
#include "d/actor/d_a_player.h"

//
// Declarations:
//

/* 80C276B8-80C27714 000078 005C+00 1/1 0/0 0/0 .text
 * bornTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void bornTgCallBack(fopAc_ac_c* i_tgActor, dCcD_GObjInf* i_tgObjInf,
                           fopAc_ac_c* i_atActor, dCcD_GObjInf* i_atObjInf) {
    daObjIBone_c* a_tgActor = (daObjIBone_c*)i_tgActor;
    
    if (i_tgActor == NULL) return;
    
    if (i_atObjInf->ChkAtType(AT_TYPE_NORMAL_SWORD) ||
        i_atObjInf->ChkAtType(AT_TYPE_IRON_BALL) ||
        i_atObjInf->ChkAtType(AT_TYPE_SPINNER) ||
        i_atObjInf->ChkAtType(AT_TYPE_UNK) ||
        i_atObjInf->ChkAtType(AT_TYPE_BOMB) ||
        i_atObjInf->ChkAtType(AT_TYPE_HOOKSHOT))
    {
        a_tgActor->field_0x828 = 2;
    } else if (i_atObjInf->ChkAtType(AT_TYPE_CSTATUE_SWING)) {
        a_tgActor->field_0x828 = 3;
    }
}

/* 80C27714-80C27780 0000D4 006C+00 1/1 0/0 0/0 .text
 * bornCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void bornCoCallBack(fopAc_ac_c* i_coActorA, dCcD_GObjInf* i_coObjInfA,
                           fopAc_ac_c* i_coActorB, dCcD_GObjInf* i_coObjInfB) {
    daObjIBone_c* a_coActorA = (daObjIBone_c*)i_coActorA;

    if (i_coActorA != NULL && i_coActorB != NULL &&
        fopAcM_GetName(i_coActorB) == PROC_HORSE &&
        daPy_getPlayerActorClass()->checkHorseRide())
    {
        a_coActorA->field_0x828 = 1;
    }
}

/* 80C28120-80C28164 000000 0044+00 3/3 0/0 0/0 .rodata          l_cyl_src */
static const dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1f}, {0xd8fafdff, 0x11}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        140.0f, // mRadius
        70.0f // mHeight
    } // mCyl
};

/* 80C28164-80C281A8 000044 0044+00 0/1 0/0 0/0 .rodata          l_cyl_src2 */
static const dCcD_SrcCyl l_cyl_src2 = {
    {
        {0x0, {{0x0, 0x0, 0x1f}, {0x2000, 0x11}, 0x78}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        140.0f, // mRadius
        70.0f // mHeight
    } // mCyl
};

/* 80C27780-80C27810 000140 0090+00 1/1 0/0 0/0 .text            s_boar_sub__FPvPv */
static void* s_boar_sub(void* i_actor, void* i_data) {
    if (fopAc_IsActor(i_actor)) {
        fopAc_ac_c* actor = (fopAc_ac_c*)i_actor;
        fopAc_ac_c* data = (fopAc_ac_c*)i_data;

        if (fopAcM_GetName(actor) == PROC_E_WB) {
            f32 xz_dist = fopAcM_searchActorDistanceXZ(data, actor);
            f32 y_dist = fopAcM_searchActorDistanceY(data, actor);

            if (xz_dist < 100.0f && y_dist < 240.0f) {
                return i_actor;
            }
        }
    }

    return NULL;
}

/* 80C27810-80C27830 0001D0 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static void CheckCreateHeap(fopAc_ac_c* i_this) {
    static_cast<daObjIBone_c*>(i_this)->CreateHeap();
}

/* 80C27830-80C2786C 0001F0 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjIBone_cFv */
void daObjIBone_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C2786C-80C278CC 00022C 0060+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjIBone_cFv */
void daObjIBone_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(csXyz(shape_angle.x, 0, 0));

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C278CC-80C279A8 00028C 00DC+00 1/1 0/0 0/0 .text            Create__12daObjIBone_cFv */
int daObjIBone_c::Create() {
    scale.setall(1.35f);

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

    mStts.Init(0xFF, 0xFF, this);

    mCyl.Set(l_cyl_src);
    mCyl.SetStts(&mStts);
    mCyl.SetCoHitCallback(bornCoCallBack);
    mCyl.SetTgHitCallback(bornTgCallBack);

    mCyl2.Set(l_cyl_src2);
    mCyl2.SetStts(&mStts);

    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    mSound.init(&current.pos, 1);

    return 1;
}

/* 80C281F8-80C281FC -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName = "Obj_Ibone";

/* 80C281FC-80C28200 -00001 0004+00 1/1 0/0 0/0 .data            l_bmdName */
static const char* l_bmdName = "A_InoBone.bmd";

/* 80C279A8-80C27A20 000368 0078+00 1/1 0/0 0/0 .text            CreateHeap__12daObjIBone_cFv */
int daObjIBone_c::CreateHeap() {
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_arcName, l_bmdName);
    JUT_ASSERT(407, modelData != NULL);
    
    mpModel =
        mDoExt_J3DModel__create(modelData, J3DMdlFlag_DifferedDLBuffer,
            BMD_DEFAULT_DIFF_FLAGS);

    return mpModel != NULL ? 1 : 0;
}

/* 80C27A20-80C27BBC 0003E0 019C+00 1/1 0/0 0/0 .text            create__12daObjIBone_cFv */
int daObjIBone_c::create() {
    fopAcM_ct(this, daObjIBone_c)

    int result = dComIfG_resLoad(&mPhase, l_arcName);
            
    if (result == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)CheckCreateHeap, 0x860)) {
            return cPhs_ERROR_e;
        } else if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return result;
}

/* 80C27C4C-80C27E48 00060C 01FC+00 1/1 0/0 0/0 .text            execute__12daObjIBone_cFv */
int daObjIBone_c::execute() {
    f32 xz_distance = fopAcM_searchPlayerDistanceXZ(this);
    f32 y_distance = fopAcM_searchPlayerDistanceY(this);

    if (
        xz_distance < 100.0f &&
        y_distance < 240.0f &&
        daPy_getPlayerActorClass()->checkHorseRide())
    {
        field_0x828 = 1;
    }
    if (fopAcM_Search(s_boar_sub, this) != NULL) {
        field_0x828 = 3;
    }
    
    switch (field_0x828) {
        case 0:
            break;
        
        case 1:
            fopAcM_createItemForDirectGet(&current.pos, fpcNm_ITEM_HEART,
                fopAcM_GetRoomNo(this), NULL, NULL, 0.0f, 0.0f);
            setBreakEffect();
            fopAcM_delete(this);
            break;
            
        case 2:
        case 3: {
            csXyz angle(0, home.angle.y, 0);

            fopAcM_createItem(&current.pos, fpcNm_ITEM_HEART, -1,
                fopAcM_GetHomeRoomNo(this), &angle, NULL, 0);
            setBreakEffect();
            fopAcM_delete(this);
            break;
        }
    }
    
    if (mCyl2.ChkTgHit() && mCyl2.GetTgHitObj() != NULL) {
        Z2SoundID se_id = dCcD_GObjInf::getHitSeID(mCyl2.GetTgHitObjSe(), 1);

        mSound.startCollisionSE(se_id, 2, NULL);
    }

    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    mCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl);

    mCyl2.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl2);

    return 1;
}

/* 80C281C4-80C281C4 0000A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
static const char* l_effbmdName = "BreakBoarBone.bmd";  // unused

/* 80C27E48-80C27FEC 000808 01A4+00 1/1 0/0 0/0 .text            setBreakEffect__12daObjIBone_cFv */
void daObjIBone_c::setBreakEffect() {
    static const u16 particle_id[] = { dPa_RM(ID_ZM_S_BOARBONEBREAK00) };
    
    cXyz pos = current.pos;

    J3DModelData* tubo_bmd = (J3DModelData*)dComIfG_getObjectRes("Always", 0x20);
    J3DAnmTexPattern* tubo_btp = (J3DAnmTexPattern*)dComIfG_getObjectRes("Always", 0x42);
    
    JUT_ASSERT(561, tubo_bmd != NULL);
    JUT_ASSERT(562, tubo_btp != NULL);

    s8 room_no = fopAcM_GetRoomNo(this);
    dPa_levelEcallBack* callback = &dPa_modelEcallBack::getEcallback();

    JPABaseEmitter* emitter =
        dComIfGp_particle_set(dPa_RM(ID_ZM_S_M_BOARBONEBREAK00), &current.pos,
            NULL, NULL, 0xFF, callback, room_no, NULL, NULL, &scale);
    
    dPa_modelEcallBack::setModel(emitter, tubo_bmd,
        tevStr, 3, tubo_btp, 6);
    
    for (int i = 0; i < 1; i++) {
        dComIfGp_particle_set(particle_id[i], &pos, NULL, &scale,
            0xFF, NULL, -1, NULL, NULL, NULL);
    }

    mDoAud_seStart(Z2SE_OBJ_BONES_BREAK_L, &current.pos, 0, 0);
}

/* 80C27FEC-80C28050 0009AC 0064+00 1/1 0/0 0/0 .text            draw__12daObjIBone_cFv */
int daObjIBone_c::draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);

    return 1;
}

/* 80C28050-80C28098 000A10 0048+00 1/1 0/0 0/0 .text            _delete__12daObjIBone_cFv */
int daObjIBone_c::_delete() {
    mSound.deleteObject();
    dComIfG_resDelete(&mPhase, l_arcName);

    return 1;
}

/* 80C28098-80C280B8 000A58 0020+00 1/0 0/0 0/0 .text            daObjIBone_Draw__FP12daObjIBone_c
 */
static int daObjIBone_Draw(daObjIBone_c* i_this) {
    return i_this->draw();
}

/* 80C280B8-80C280D8 000A78 0020+00 1/0 0/0 0/0 .text daObjIBone_Execute__FP12daObjIBone_c */
static int daObjIBone_Execute(daObjIBone_c* i_this) {
    return i_this->execute();
}

/* 80C280D8-80C280F8 000A98 0020+00 1/0 0/0 0/0 .text            daObjIBone_Delete__FP12daObjIBone_c
 */
static int daObjIBone_Delete(daObjIBone_c* i_this) {
    return i_this->_delete();
}

/* 80C280F8-80C28118 000AB8 0020+00 1/0 0/0 0/0 .text            daObjIBone_Create__FP10fopAc_ac_c
 */
static int daObjIBone_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjIBone_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80C28200-80C28220 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjIBone_Method */
static actor_method_class l_daObjIBone_Method = {
    (process_method_func)daObjIBone_Create,
    (process_method_func)daObjIBone_Delete,
    (process_method_func)daObjIBone_Execute,
    (process_method_func)0,
    (process_method_func)daObjIBone_Draw,
};

/* 80C28220-80C28250 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_InoBone */
extern actor_process_profile_definition g_profile_Obj_InoBone = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_InoBone,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjIBone_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  729,                    // mPriority
  &l_daObjIBone_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
