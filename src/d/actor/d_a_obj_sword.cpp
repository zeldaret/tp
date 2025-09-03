/**
* @file d_a_obj_sword.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_sword.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_item_data.h"

/* 80CFDEB4-80CFDECC 000020 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static Vec l_cull_box[2] = {{-200.0f, 0.0f, -200.0f}, {200.0f, 100.0f, 200.0f}};

/* 80CFD558-80CFD594 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjSword_cFv */
void daObjSword_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CFD594-80CFD600 0000B4 006C+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjSword_cFv */
void daObjSword_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CFD600-80CFD67C 000120 007C+00 1/1 0/0 0/0 .text            Create__12daObjSword_cFv */
int daObjSword_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox(this, l_cull_box[0].x, l_cull_box[0].y, l_cull_box[0].z, l_cull_box[1].x,
                          l_cull_box[1].y, l_cull_box[1].z);
    fopAcM_OnCarryType(this, fopAcM_CARRY_UNK_30);
    show();
    execute();
    return 1;
}

/* 80CFD67C-80CFD848 00019C 01CC+00 1/1 0/0 0/0 .text            create__12daObjSword_cFv */
cPhs__Step daObjSword_c::create() {
    fopAcM_SetupActor(this, daObjSword_c);
    m_itemNo = 0x28;
    if (fopAcM_isItem(this, getItemBit())) {
        return cPhs_ERROR_e;
    }

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, dItem_data::getFieldArc(m_itemNo));
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckFieldItemCreateHeap, 0x4000)) {
            return cPhs_ERROR_e;
        }
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }
    return phase;
}

/* 80CFDA14-80CFDA8C 000534 0078+00 1/0 0/0 0/0 .text            actionWait__12daObjSword_cFv */
int daObjSword_c::actionWait() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (fopAcM_checkCarryNow(this)) {
        cLib_offBit<u32>(attention_info.flags, 0x10);
        if (player->getGrabUpStart()) {
            fopAcM_cancelCarryNow(this);
            initActionOrderGetDemo();
        }
    } else {
        cLib_onBit<u32>(attention_info.flags, 0x10);
    }
    return 1;
}

/* 80CFDA8C-80CFDB04 0005AC 0078+00 1/1 0/0 0/0 .text initActionOrderGetDemo__12daObjSword_cFv */
int daObjSword_c::initActionOrderGetDemo() {
    hide();
    fopAcM_orderItemEvent(this, 0, 0);
    eventInfo.onCondition(8);
    mProcID = fopAcM_createItemForTrBoxDemo(&current.pos, m_itemNo, -1, fopAcM_GetRoomNo(this),
                                            NULL, NULL);
    setStatus(1);
    return 1;
}

/* 80CFDB04-80CFDB80 000624 007C+00 1/0 0/0 0/0 .text actionOrderGetDemo__12daObjSword_cFv */
int daObjSword_c::actionOrderGetDemo() {
    if (eventInfo.checkCommandItem()) {
        setStatus(2);
        if (mProcID != fpcM_ERROR_PROCESS_ID_e) {
            dComIfGp_event_setItemPartnerId(mProcID);
        }
    } else {
        fopAcM_orderItemEvent(this, 0, 0);
        eventInfo.onCondition(8);
    }
    return 1;
}

/* 80CFDB80-80CFDC1C 0006A0 009C+00 1/0 0/0 0/0 .text            actionGetDemo__12daObjSword_cFv */
int daObjSword_c::actionGetDemo() {
    if (dComIfGp_evmng_endCheck("DEFAULT_GETITEM")) {
        fopAcM_onItem(this, getItemBit());
        fopAcM_onSwitch(this, getSwbit());
        dComIfGp_event_reset();
        fopAcM_delete(this);
    }
    return 1;
}

/* 80CFDC1C-80CFDD18 00073C 00FC+00 2/2 0/0 0/0 .text            execute__12daObjSword_cFv */
int daObjSword_c::execute() {
    static int (daObjSword_c::* l_demoFunc[])() = {
        &daObjSword_c::actionWait, &daObjSword_c::actionOrderGetDemo, &daObjSword_c::actionGetDemo};
    field_0x92c++;
    (this->*l_demoFunc[mStatus])();
    attention_info.position = current.pos;
    eyePos = current.pos;
    setBaseMtx();
    return 1;
}

/* 80CFDD18-80CFDD6C 000838 0054+00 1/1 0/0 0/0 .text            draw__12daObjSword_cFv */
int daObjSword_c::draw() {
    if (!chkDraw()) {
        return 1;
    }
    DrawBase();
    return 1;
}

/* 80CFDD6C-80CFDDA4 00088C 0038+00 1/1 0/0 0/0 .text            _delete__12daObjSword_cFv */
int daObjSword_c::_delete() {
    DeleteBase(dItem_data::getFieldArc(m_itemNo));
    return 1;
}

/* 80CFDDA4-80CFDDC4 0008C4 0020+00 1/0 0/0 0/0 .text            daObjSword_Draw__FP12daObjSword_c
 */
static int daObjSword_Draw(daObjSword_c* param_0) {
    return param_0->draw();
}

/* 80CFDDC4-80CFDDE4 0008E4 0020+00 1/0 0/0 0/0 .text daObjSword_Execute__FP12daObjSword_c */
static int daObjSword_Execute(daObjSword_c* param_0) {
    return param_0->execute();
}

/* 80CFDDE4-80CFDE04 000904 0020+00 1/0 0/0 0/0 .text            daObjSword_Delete__FP12daObjSword_c
 */
static int daObjSword_Delete(daObjSword_c* param_0) {
    return param_0->_delete();
}

/* 80CFDE04-80CFDE24 000924 0020+00 1/0 0/0 0/0 .text            daObjSword_Create__FP12daObjSword_c
 */
static int daObjSword_Create(daObjSword_c* param_0) {
    return param_0->create();
}

/* 80CFDF14-80CFDF34 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSword_Method */
static actor_method_class l_daObjSword_Method = {
    (process_method_func)daObjSword_Create,  (process_method_func)daObjSword_Delete,
    (process_method_func)daObjSword_Execute, 0,
    (process_method_func)daObjSword_Draw,
};

/* 80CFDF34-80CFDF64 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Sword */
extern actor_process_profile_definition g_profile_Obj_Sword = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Sword,          // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjSword_c),    // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    586,                     // mPriority
    &l_daObjSword_Method,    // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
