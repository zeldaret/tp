// Translation Unit: d_a_tag_myna_light

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_myna_light.h"
#include "d/d_com_inf_game.h"
#include "d/d_stage.h"
#include "d/d_particle.h"

/* 80D5CB38-80D5CB9C 000078 0064+00 1/1 0/0 0/0 .text            create__17daTag_MynaLight_cFv */
int daTag_MynaLight_c::create() {
    fopAcM_SetupActor(this, daTag_MynaLight_c);
    initialize();
    return 4;
}

/* 80D5CB9C-80D5CBF4 0000DC 0058+00 1/1 0/0 0/0 .text            Delete__17daTag_MynaLight_cFv */
int daTag_MynaLight_c::Delete() {
    for (int i = 0; i < 2; i++) {
        if (field_0x570[i] != NULL) {
            field_0x570[i]->quitImmortalEmitter();
            field_0x570[i]->becomeInvalidEmitter();
            field_0x570[i] = NULL;
        }
    }
    return 1;
}

/* 80D5CBF4-80D5CD94 000134 01A0+00 1/1 0/0 0/0 .text            Execute__17daTag_MynaLight_cFv */
int daTag_MynaLight_c::Execute() {
    u8 uVar1 = (int)(dComIfGs_getTime() * 0.06666667f) & 0xFF;
    u8 turn_on_time = getTurnOnTime() & 0xFF;
    u8 turn_off_time = getTurnOffTime() & 0xFF;

    if (turn_off_time > turn_on_time) {
        if (uVar1 >= (getTurnOnTime() & 0xFF) && uVar1 < (getTurnOffTime() & 0xFF)) {
            field_0x578 = true;
        } else {
            field_0x578 = false;
        }
    } else {
        if (uVar1 >= (getTurnOffTime() & 0xFF) && uVar1 < (getTurnOnTime() & 0xFF)) {
            field_0x578 = false;
        } else {
            field_0x578 = true;
        }
    }

    if (mTurnOnFlag) {
        if (dComIfGp_roomControl_getStayNo() != 0) {
            mDoAud_seStartLevel(Z2SE_OBJ_MYNA_LIGHT_BURNING, (Vec*)&current.pos, 0,
                                  dComIfGp_getReverb(dComIfGp_roomControl_getStayNo()));
        } else {
            mDoAud_seStartLevel(Z2SE_OBJ_MYNA_LIGHT_BURNING, (Vec*)&current.pos, 0, 0);
        }
    }
    return 1;
}

/* 80D5CD94-80D5CE40 0002D4 00AC+00 1/1 0/0 0/0 .text            Draw__17daTag_MynaLight_cFv */
int daTag_MynaLight_c::Draw() {
    if (mTurnOnFlag) {
        cLib_addCalc(&field_0x56c, 1.0f, 0.5f, 0.1f, 0.0001f);
    } else {
        cLib_addCalc(&field_0x56c, 0.0f, 0.5f, 0.1f, 0.0001f);
    }

    if (field_0x56c >= 0.000001f) {
        GXColor color = {0xBC, 0x66, 0x42, 0xFF};
        dKy_BossLight_set(&current.pos, &color, field_0x56c, 0);
    }
    return 1;
}

/* 80D5CE40-80D5D148 000380 0308+00 0/0 0/0 1/1 .text setTurnOnOffChange__17daTag_MynaLight_cFv */
bool daTag_MynaLight_c::setTurnOnOffChange() {
    if (checkTurnOnOffChange()) {
        mTurnOnFlag = field_0x578;
        if (mTurnOnFlag) {
            if (dComIfGp_roomControl_getStayNo() != 0) {
                mDoAud_seStart(Z2SE_OBJ_MYNA_LIGHT_ON, (Vec*)&current.pos, 0,
                               dComIfGp_getReverb(dComIfGp_roomControl_getStayNo()));
            } else {
                mDoAud_seStart(Z2SE_OBJ_MYNA_LIGHT_ON, (Vec*)&current.pos, 0, 0);
            }

            cXyz unused_scale = cXyz(-5122.0f, -124.0f, -3067.0f);
            cXyz scale_1 = cXyz(0.4f, 0.4f, 0.4f);
            cXyz scale_2 = cXyz(0.25f, 0.25f, 0.25f);
            if (field_0x570[0] == NULL) {
                field_0x570[0] =
                    dComIfGp_particle_set(0x3AD, &current.pos, &current.angle, &scale_1);
            }
            if (field_0x570[1] == NULL) {
                field_0x570[1] =
                    dComIfGp_particle_set(0x3AF, &current.pos, &current.angle, &scale_2);
            }
        } else {
            if (dComIfGp_roomControl_getStayNo() != 0) {
                mDoAud_seStart(Z2SE_OBJ_MYNA_LIGHT_OFF, (Vec*)&current.pos, 0,
                               dComIfGp_getReverb(dComIfGp_roomControl_getStayNo()));
            } else {
                mDoAud_seStart(Z2SE_OBJ_MYNA_LIGHT_OFF, (Vec*)&current.pos, 0, 0);
            }

            for (int i = 0; i < 2; i++) {
                if (field_0x570[i] != NULL) {
                    field_0x570[i]->quitImmortalEmitter();
                    field_0x570[i]->becomeInvalidEmitter();
                    field_0x570[i] = NULL;
                }
            }
        }
    }
    return mTurnOnFlag;
}

/* 80D5D148-80D5D154 000688 000C+00 1/1 0/0 0/0 .text getTurnOnTime__17daTag_MynaLight_cFv */
u32 daTag_MynaLight_c::getTurnOnTime() {
    return fopAcM_GetParamBit(this, 0, 5);
}

/* 80D5D154-80D5D160 000694 000C+00 1/1 0/0 0/0 .text getTurnOffTime__17daTag_MynaLight_cFv */
u32 daTag_MynaLight_c::getTurnOffTime() {
    return fopAcM_GetParamBit(this, 5, 5);
}

/* 80D5D160-80D5D210 0006A0 00B0+00 1/1 0/0 0/0 .text            initialize__17daTag_MynaLight_cFv
 */
void daTag_MynaLight_c::initialize() {
    fopAcM_setCullSizeBox(this, -30.0, -15.0, -30.0, 30.0, 45.0, 30.0);
    attention_info.flags = 0;
    current.angle.set(0, home.angle.y, 0);
    shape_angle = current.angle;
    field_0x56c = 0.0f;
    mTurnOnFlag = false;
    field_0x578 = false;
    for (int i = 0; i < 2; i++) {
        field_0x570[i] = NULL;
    }
}

/* 80D5D210-80D5D230 000750 0020+00 1/0 0/0 0/0 .text            daTag_MynaLight_Create__FPv */
static int daTag_MynaLight_Create(void* i_this) {
    return static_cast<daTag_MynaLight_c*>(i_this)->create();
}

/* 80D5D230-80D5D250 000770 0020+00 1/0 0/0 0/0 .text            daTag_MynaLight_Delete__FPv */
static int daTag_MynaLight_Delete(void* i_this) {
    return static_cast<daTag_MynaLight_c*>(i_this)->Delete();
}

/* 80D5D250-80D5D270 000790 0020+00 1/0 0/0 0/0 .text            daTag_MynaLight_Execute__FPv */
static int daTag_MynaLight_Execute(void* i_this) {
    return static_cast<daTag_MynaLight_c*>(i_this)->Execute();
}

/* 80D5D270-80D5D290 0007B0 0020+00 1/0 0/0 0/0 .text            daTag_MynaLight_Draw__FPv */
static int daTag_MynaLight_Draw(void* i_this) {
    return static_cast<daTag_MynaLight_c*>(i_this)->Draw();
}

/* 80D5D290-80D5D298 0007D0 0008+00 1/0 0/0 0/0 .text            daTag_MynaLight_IsDelete__FPv */
static int daTag_MynaLight_IsDelete(void* i_this) {
    return 1;
}

/* 80D5D298-80D5D2F8 0007D8 0060+00 1/0 0/0 0/0 .text            __dt__17daTag_MynaLight_cFv */
daTag_MynaLight_c::~daTag_MynaLight_c() {}

/* ############################################################################################## */
/* 80D5D348-80D5D368 -00001 0020+00 1/0 0/0 0/0 .data            daTag_MynaLight_MethodTable */
static actor_method_class daTag_MynaLight_MethodTable = {
    (process_method_func)daTag_MynaLight_Create,  (process_method_func)daTag_MynaLight_Delete,
    (process_method_func)daTag_MynaLight_Execute, (process_method_func)daTag_MynaLight_IsDelete,
    (process_method_func)daTag_MynaLight_Draw,
};

/* 80D5D368-80D5D398 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_MNLIGHT */
extern actor_process_profile_definition g_profile_TAG_MNLIGHT = {
    fpcLy_CURRENT_e,
    7,
    fpcLy_CURRENT_e,
    PROC_TAG_MNLIGHT,
    &g_fpcLf_Method.base,
    sizeof(daTag_MynaLight_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x49,
    &daTag_MynaLight_MethodTable,
    0x64100,
    0x05,
    fopAc_CULLBOX_CUSTOM_e,
};
