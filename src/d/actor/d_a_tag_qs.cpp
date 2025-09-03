//
//  d_a_tag_qs
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_qs.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/actor/d_a_player.h"
#include "d/d_cc_d.h"
#include "d/d_a_item_static.h"
#include "d/d_save.h"
#include "d/d_com_inf_game.h"
#include "SSystem/SComponent/c_math.h"

/* ############################################################################################## */
/* 80D5ED44-80D5ED88 000000 0044+00 1/1 0/0 0/0 .data            l_cc_cyl_src */
static dCcD_SrcCyl l_cc_cyl_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x0, 0x11}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        50.0f, // mRadius
        50.0f // mHeight
    } // mCyl
};

/* 80D5DE78-80D5DFB0 000078 0138+00 1/1 0/0 0/0 .text            __dt__9daTagQs_cFv */
daTagQs_c::~daTagQs_c() {}

/* 80D5DFB0-80D5E110 0001B0 0160+00 1/1 0/0 0/0 .text            create__9daTagQs_cFv */
int daTagQs_c::create() {
    fopAcM_SetupActor(this, daTagQs_c);
    f32 typeScale;
    if (getType() == 0) {
        typeScale = 1.0f;
    } else {
        typeScale = 20.0f;
    }
    field_0x568 = scale.x * 50.0f * typeScale;
    field_0x56c = scale.y * 50.0f * typeScale;
    field_0x570 = 0;
    field_0x574 = 0;
    mStts.Init(0xff, 0, this);
    mCyl.Set(l_cc_cyl_src);
    mCyl.SetStts(&mStts);
    return cPhs_COMPLEATE_e;
}

/* 80D5E1FC-80D5E220 0003FC 0024+00 2/2 0/0 0/0 .text            getPower__9daTagQs_cFv */
f32 daTagQs_c::getPower() {
    return getType() == 0 ? 4.0f : 5.0f;
}

/* 80D5E220-80D5E244 000420 0024+00 1/1 0/0 0/0 .text            getSafeArea__9daTagQs_cFv */
f32 daTagQs_c::getSafeArea() {
    return getType() == 0 ? 0.8f : 0.5f;
}

/* 80D5E244-80D5E268 000444 0024+00 1/1 0/0 0/0 .text            getPower80__9daTagQs_cFv */
f32 daTagQs_c::getPower80() {
    return getType() == 0 ? 6.0f : 10.0f;
}

/* 80D5E268-80D5E28C 000468 0024+00 1/1 0/0 0/0 .text            getCenterPower__9daTagQs_cFv */
f32 daTagQs_c::getCenterPower() {
    return getType() == 0 ? 12.0f : 20.0f;
}

/* 80D5E28C-80D5E3F8 00048C 016C+00 1/1 0/0 0/0 .text            calcPower__9daTagQs_cFff */
f32 daTagQs_c::calcPower(f32 param_1, f32 param_2) {
    f32 dVar12 = 1.0f;
    if (getSwNo() != 0xff) {
        if (fopAcM_isSwitch(this, getSwNo())) {
            dVar12 = field_0x570 / 30.0f;
        } else {
            dVar12 = (30 - field_0x574) / 30.0f;
        }
    }
    if (param_2 > (param_1 * 0.8f)) {
        return dVar12 * getPower();
    }

    return dVar12 *
           ((1.0f - (param_2 / (param_1 * getSafeArea()))) * (getCenterPower() - getPower80()) +
            getPower80());
}

/* 80D5E3F8-80D5E64C 0005F8 0254+00 1/1 0/0 0/0 .text            hikiyose__FP4cXyzP4cXyzP4cXyzf */
static int hikiyose(cXyz* param_1, cXyz* param_2, cXyz* param_3, f32 param_4) {
    cXyz cStack_44 = *param_1 - *param_2;
    cXyz cStack_50(cStack_44);
    cStack_50.y = 0.0f;
    f32 dVar6 = fabsf(cStack_50.getSquareMag());
    if (dVar6 < 4.0f) {
        param_2->x = param_1->x + cM_rndFX(1.0f);
        param_2->y -= 0.5f;
        param_2->z = param_1->z + cM_rndFX(1.0f);
        param_3->y = param_2->y;
        if (param_2->y < param_1->y - 100.0f) {
            return 2;
        }
        return 1;
    } else if (cStack_44.abs() < param_4) {
        param_2->x = param_1->x;
        param_2->y = param_1->y;
        param_2->z = param_1->z;
    } else {
        cStack_44.normalize();
        cStack_44 *= param_4;
        *param_2 += cStack_44;
    }
    return 0;
}

/* 80D5E64C-80D5E9F8 00084C 03AC+00 1/1 0/0 0/0 .text            search__FPvPv */
static void* search(void* param_1, void* param_2) {
    if (param_1 == NULL || !fopAcM_IsActor(param_1)) {
        return NULL;
    }
    fopAc_ac_c* actor1 = (fopAc_ac_c*) param_1;
    daTagQs_c* actor2 = (daTagQs_c*) param_2;
    f32 dVar9 = actor2->current.pos.absXZ(actor1->current.pos);
    if (dVar9 > actor2->field_0x568) {
        return NULL;
    }
    if (actor2->current.pos.y - 110.0f > actor1->current.pos.y ||
        actor2->current.pos.y + actor2->field_0x56c < actor1->current.pos.y)
    {
        return NULL;
    }
    if (actor1->current.pos.y >
        actor2->current.pos.y + (actor2->field_0x56c * dVar9) / (actor2->field_0x568 * 0.9f) + 20.0f)
    {
        return NULL;
    }
    if (fopAcM_GetProfName(param_1) == PROC_ITEM) {
        daItem_c* item = (daItem_c*)param_1;
        item->getItemNo();
        if (item->getItemNo() <= 3) {
            int iVar3 = hikiyose(&actor2->current.pos, &actor1->current.pos, &actor1->old.pos,
                                 actor2->calcPower(actor2->field_0x568, dVar9));
            if (iVar3 == 1) {
                item->startCtrl();
            } else if (iVar3 == 2) {
                fopAcM_delete(actor1);
            }
        }
        return NULL;
    }
    if (fopAcM_GetProfName(param_1) == PROC_Obj_Carry) {
        daObjCarry_c* carry = (daObjCarry_c*)param_1;
        if (carry->getType() == 7 || carry->getType() == 1 || carry->getType() == 5) {
            int iVar3 = hikiyose(&actor2->current.pos, &carry->current.pos, &carry->old.pos, actor2->calcPower(actor2->field_0x568, dVar9));
            if (iVar3 == 1) {
                carry->startCtrl();
            } else if (iVar3 == 2) {
                fopAcM_delete(carry);
            }
        }
        return NULL;
    }
    if (param_1 == daPy_getPlayerActorClass()) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        cXyz local_58 = actor2->current.pos - player->current.pos;
        if (local_58.getSquareMag() >= actor2->getPower()) {
            s16 sVar6 = cM_atan2s(local_58.x, local_58.z);
            if (!player->checkPlayerFly()) {
                player->setOutPower(actor2->calcPower(actor2->field_0x568, dVar9), sVar6, 0);
            }
        }
        return NULL;
    }
    
    return NULL;
}

/* 80D5E9F8-80D5EBF8 000BF8 0200+00 1/1 0/0 0/0 .text            execute__9daTagQs_cFv */
int daTagQs_c::execute() {
    fopAcM_Search(search, this);
    if (getSwNo() != 0xff) {
        int bossLife;
        if (fopAcM_isSwitch(this, getSwNo())) {
            field_0x570++;
            if (field_0x570 > 30) {
                field_0x570 = 30;
            }
            field_0x574 = 0;
            bossLife = (field_0x570 * 100.0f) / 30.0f;
            if (getType() == 0) {
                Z2GetAudioMgr()->seStartLevel(Z2SE_ENV_QUICKSAND_LOOP, &current.pos, 0,
                                              dComIfGp_getReverb(fopAcM_GetRoomNo(this)), 1.0f,
                                              1.0f, -1.0f, -1.0f, 0);
            }
        } else {
            field_0x574++;
            if (field_0x574 > 30) {
                field_0x574 = 30;
            }
            field_0x570 = 0;
            bossLife = 100.0f - field_0x574 * 100.0f / 30.0f;
        }
        dComIfGs_BossLife_public_Set(bossLife);
    } else {
        if (getType() == 0) {
            Z2GetAudioMgr()->seStartLevel(Z2SE_ENV_QUICKSAND_LOOP, &current.pos, 0,
                                          dComIfGp_getReverb(fopAcM_GetRoomNo(this)), 1.0f, 1.0f,
                                          -1.0f, -1.0f, 0);
        }
    }
    return 1;
}

/* 80D5EBF8-80D5EC00 000DF8 0008+00 1/1 0/0 0/0 .text            draw__9daTagQs_cFv */
int daTagQs_c::draw() {
    return 1;
}

/* 80D5EC00-80D5EC20 000E00 0020+00 1/0 0/0 0/0 .text            daTagQs_Draw__FP9daTagQs_c */
static int daTagQs_Draw(daTagQs_c* i_this) {
    return i_this->draw();
}

/* 80D5EC20-80D5EC40 000E20 0020+00 1/0 0/0 0/0 .text            daTagQs_Execute__FP9daTagQs_c */
static int daTagQs_Execute(daTagQs_c* i_this) {
    return i_this->execute();
}

/* 80D5EC40-80D5EC48 000E40 0008+00 1/0 0/0 0/0 .text            daTagQs_IsDelete__FP9daTagQs_c */
static int daTagQs_IsDelete(daTagQs_c* i_this) {
    return 1;
}

/* 80D5EC48-80D5EC70 000E48 0028+00 1/0 0/0 0/0 .text            daTagQs_Delete__FP9daTagQs_c */
static int daTagQs_Delete(daTagQs_c* i_this) {
    i_this->~daTagQs_c();
    return 1;
}

/* 80D5EC70-80D5EC90 000E70 0020+00 1/0 0/0 0/0 .text            daTagQs_Create__FP10fopAc_ac_c */
static int daTagQs_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagQs_c*>(i_this)->create();
}

/* 80D5ED88-80D5EDA8 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagQs_Method */
static actor_method_class l_daTagQs_Method = {
    (process_method_func)daTagQs_Create,     (process_method_func)daTagQs_Delete,
    (process_method_func)daTagQs_Execute, (process_method_func)daTagQs_IsDelete,
    (process_method_func)daTagQs_Draw,
};

/* 80D5EDA8-80D5EDD8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_QS */
extern actor_process_profile_definition g_profile_TAG_QS = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_TAG_QS,
    &g_fpcLf_Method.base,
    sizeof(daTagQs_c),
    0,
    0,
    &g_fopAc_Method.base,
    274,
    &l_daTagQs_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};
