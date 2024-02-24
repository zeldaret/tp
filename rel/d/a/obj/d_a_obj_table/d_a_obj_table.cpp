/**
 * d_a_obj_table.cpp
 *
 */

#include "rel/d/a/obj/d_a_obj_table/d_a_obj_table.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "d/bg/d_bg_w.h"
#include "d/d_procname.h"
#include "d/meter/d_meter2_info.h"
#include "d/msg/d_msg_object.h"
#include "dol2asm.h"

class daObjTable_c : public dBgS_MoveBgActor {
public:
    /* 80D06560 */ int CreateHeap();
    /* 80D065D0 */ int Create();
    /* 80D0695C */ int Execute(Mtx**);
    /* 80D06AD8 */ int Draw();
    /* 80D06BC8 */ int Delete();

    u32 getMessageNo() { return fopAcM_GetParam(this); }

    request_of_phase_process_class& getPhase() { return mPhaseReq; }

private:
    /* 0x5A0 */ J3DModel* mpModel;
    /* 0x5A4 */ request_of_phase_process_class mPhaseReq;
    /* 0x5AC */ dMsgFlow_c mMsgFlow;
    /* 0x5F8 */ u32 field_0x5f8;
    /* 0x5FC */ s16 field_0x5fc;
};  // Size: 0x600

//
// Forward References:
//

extern "C" extern char const* const d_a_obj_table__stringBase0;

//
// External References:
//

extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setObjectArchive__16dEvent_manager_cFPc();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void endFlowGroup__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];

#define NONMATCHING 0

//
// Declarations:
//

/* 80D06C1C-80D06C20 -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Table";

/* 80D06438-80D06464 000078 002C+00 1/0 0/0 0/0 .text            daObjTable_Draw__FP12daObjTable_c
 */
static int daObjTable_Draw(daObjTable_c* i_this) {
    return i_this->Draw();
}

/* 80D06464-80D06484 0000A4 0020+00 1/0 0/0 0/0 .text daObjTable_Execute__FP12daObjTable_c */
static int daObjTable_Execute(daObjTable_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D06484-80D0648C 0000C4 0008+00 1/0 0/0 0/0 .text daObjTable_IsDelete__FP12daObjTable_c */
static int daObjTable_IsDelete(daObjTable_c* i_this) {
    return 1;
}

/* 80D0648C-80D064B0 0000CC 0024+00 1/0 0/0 0/0 .text            daObjTable_Delete__FP12daObjTable_c
 */
static int daObjTable_Delete(daObjTable_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

/* 80D064B0-80D06560 0000F0 00B0+00 1/0 0/0 0/0 .text            daObjTable_Create__FP10fopAc_ac_c
 */
static void daObjTable_Create(fopAc_ac_c* i_this) {
    daObjTable_c* pTable = static_cast<daObjTable_c*>(i_this);
    fopAcM_SetupActor(pTable, daObjTable_c);

    if (dComIfG_resLoad(&pTable->getPhase(), l_arcName) == cPhs_COMPLEATE_e) {
        if (pTable->MoveBGCreate(l_arcName, 8, NULL, 0x4000, NULL) == cPhs_ERROR_e) {
            return;
        }
    }
}

/* 80D06560-80D065D0 0001A0 0070+00 1/0 0/0 0/0 .text            CreateHeap__12daObjTable_cFv */
int daObjTable_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);

    if (mpModel == NULL) {
        return false;
    }
    return true;
}

/* 80D065D0-80D0695C 000210 038C+00 1/0 0/0 0/0 .text            Create__12daObjTable_cFv */
int daObjTable_c::Create() {
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    if (dKy_darkworld_check() || dComIfGs_isStageSwitch(0x18, 0x4b)) {
        mpModel->getModelData()->getMaterialTable().getMaterialNodePointer(0)->getShape()->onFlag(J3DShpFlag_Visible);
        mpModel->getModelData()->getMaterialTable().getMaterialNodePointer(1)->getShape()->onFlag(J3DShpFlag_Visible);
        mpModel->getModelData()->getMaterialTable().getMaterialNodePointer(2)->getShape()->onFlag(J3DShpFlag_Visible);
    } else {
        if (dComIfG_play_c::getLayerNo(0) == 4) {
            if (!i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361])) {
                mpModel->getModelData()->getMaterialTable().getMaterialNodePointer(0)->getShape()->onFlag(J3DShpFlag_Visible);
            }
            if (i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361]) && 
                i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[266]) && 
                !i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[267])) {
                mpModel->getModelData()->getMaterialTable().getMaterialNodePointer(1)->getShape()->onFlag(J3DShpFlag_Visible);
            }
            if (i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361]) && 
                i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[266]) && 
                i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[267]) && 
                !i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[268])) {
                mpModel->getModelData()->getMaterialTable().getMaterialNodePointer(2)->getShape()->onFlag(J3DShpFlag_Visible);
            }
        } else {
            mpModel->getModelData()->getMaterialTable().getMaterialNodePointer(1)->getShape()->onFlag(J3DShpFlag_Visible);
        }
    }

    if (i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[103]) &&
        !(!i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[268]) && 
            i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[264]))) {

        mpModel->getModelData()->getMaterialTable().getMaterialNodePointer(4)->getShape()->onFlag(J3DShpFlag_Visible);
        mAttentionInfo.mFlags = 0;
    } else {
        mAttentionInfo.mFlags = 0x2000000a;

        mAttentionInfo.field_0x0[0] = dKy_darkworld_check() ? 218 : 98;
        mAttentionInfo.field_0x0[1] = mAttentionInfo.field_0x0[0];
        mAttentionInfo.field_0x0[3] = mAttentionInfo.field_0x0[0];
    }

    f32 z = current.pos.z;
    f32 y = current.pos.y + 100.0f;
    mAttentionInfo.mPosition.x = current.pos.x;
    mAttentionInfo.mPosition.y = y;
    mAttentionInfo.mPosition.z = z;

    mMsgFlow.init(this, (s16)fopAcM_GetParamBit(this, 0, 16), 0, NULL);
    dMsgObject_endFlowGroup();

    mCullMtx = mpModel->mBaseTransformMtx;

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_YrotM(mDoMtx_stack_c::get(), shape_angle.y);

    PSMTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    PSMTXCopy(mDoMtx_stack_c::get(), mpModel->mBaseTransformMtx);

    field_0x5fc = -1;

    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 80D06C0C-80D06C0C 000008 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#if !NONMATCHING
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D06C12 = "TABLE_MAP";
#pragma pop
#else
static char* stringBase_80D06C12 = "TABLE_MAP";
#endif

/* 80D0695C-80D06AD8 00059C 017C+00 1/0 0/0 0/0 .text            Execute__12daObjTable_cFPPA3_A4_f
 */
#if NONMATCHING
int daObjTable_c::Execute(Mtx** i_mtx) {
    mEvtInfo.i_onCondition(1);

    dComIfG_inf_c& gameInfo = g_dComIfG_gameInfo;

    if (gameInfo.getPlay().getEvent().mEventStatus != 0) {
        if (mEvtInfo.checkCommandTalk()) {
            if (mMsgFlow.doFlow(this, NULL, 0) != 0) {
                gameInfo.getPlay().getEvent().reset(this);
                mEvtInfo.setArchiveName(stringBase_80D06C12);
                i_dComIfGp_getEventManager().setObjectArchive(mEvtInfo.getArchiveName());
                field_0x5fc = i_dComIfGp_getEventManager().getEventIdx(this, stringBase_80D06C12, -1);

                fopAcM_orderChangeEventId(this, field_0x5fc, 1, -1);
            }
        } else if (i_dComIfGp_getEventManager().getMyStaffId(l_arcName, NULL, 0) != -1 && 
                    mEvtInfo.mCommand == 2 && 
                    field_0x5fc != -1 && 
                    i_dComIfGp_getEventManager().endCheck(field_0x5fc)) {
            field_0x5fc = -1;                              
            g_meter2_info.setPauseStatus(7);
        }
    } else {
        mMsgFlow.init(this, (s16)fopAcM_GetParamBit(this, 0, 16), 0, NULL);
        dMsgObject_endFlowGroup();
    }

    *i_mtx = &mBgMtx;
    return 1;
}

#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjTable_c::Execute(Mtx** i_mtx) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_table/d_a_obj_table/Execute__12daObjTable_cFPPA3_A4_f.s"
}
#pragma pop
#endif

/* 80D06AD8-80D06BC8 000718 00F0+00 1/0 0/0 0/0 .text            Draw__12daObjTable_cFv */
int daObjTable_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &mTevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &mTevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    cXyz v(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    field_0x5f8 = dComIfGd_setRealShadow(field_0x5f8, 1, mpModel, &v, 500.0f, current.pos.y, &mTevStr);

    return 1;
}

/* 80D06BC8-80D06BFC 000808 0034+00 1/0 0/0 0/0 .text            Delete__12daObjTable_cFv */
int daObjTable_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80D06C20-80D06C40 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjTable_Method */
static actor_method_class l_daObjTable_Method = {
    (process_method_func)daObjTable_Create,
    (process_method_func)daObjTable_Delete,
    (process_method_func)daObjTable_Execute,
    (process_method_func)daObjTable_IsDelete,
    (process_method_func)daObjTable_Draw,
};

/* 80D06C40-80D06C70 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Table */
extern actor_process_profile_definition g_profile_Obj_Table = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Table,
    &g_fpcLf_Method.mBase,
    sizeof(daObjTable_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x02AB,
    &l_daObjTable_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};