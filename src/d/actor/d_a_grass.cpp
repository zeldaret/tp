/**
 * @file d_a_grass.cpp
 * 
*/

#include "d/actor/d_a_grass.h"
#include "SSystem/SComponent/c_counter.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "m_Do/m_Do_lib.h"
#include "Z2AudioLib/Z2Instances.h"
#include <string.h>
#include <dolphin/gd.h>

UNK_REL_DATA
UNK_REL_BSS;

#include "d/actor/d_grass.inc"
#include "d/actor/d_flower.inc"

/* 8051BD4C-8051BEFC 0000EC 01B0+00 1/1 0/0 0/0 .text            randam_addcol_set__FPs */
static void randam_addcol_set(s16* param_0) {
    s16 temp_r4 = *param_0;
    s16 var_r30 = temp_r4 & 0x1F;
    s16 var_r29 = (temp_r4 >> 5) & 0x1F;
    s16 var_r28 = (temp_r4 >> 10) & 0x1F;

    f32 temp_f31_2 = (0.2f + (0.8f * ((f32)var_r30 / 31.0f)));
    temp_f31_2 *= cM_rndF(10.0f);

    if (var_r30 != 0x1F) {
        var_r30 = ((f32)var_r30 - temp_f31_2);
        if (var_r30 < 0) {
            var_r30 = 0;
        }

        if (var_r30 > 0x1F) {
            var_r30 = 0x1F;
        }
    }

    if (var_r29 != 0x1F) {
        var_r29 = ((f32)var_r29 - temp_f31_2);
        if (var_r29 < 0) {
            var_r29 = 0;
        }

        if (var_r29 > 0x1F) {
            var_r29 = 0x1F;
        }
    }

    if (var_r28 != 0x1F) {
        var_r28 = ((f32)var_r28 - temp_f31_2);
        if (var_r28 < 0) {
            var_r28 = 0;
        }

        if (var_r28 > 0x1F) {
            var_r28 = 0x1F;
        }
    }
    s16 x = (((u16)var_r28 & 0x1f) << 5) | (var_r29 & ~0x3E0);
    *param_0 = ((x) << 5) | (var_r30 & 0x1F);
}

/* 8051BEFC-8051BF68 00029C 006C+00 1/1 0/0 0/0 .text            createGrass__9daGrass_cFv */
bool daGrass_c::createGrass() {
    if (m_grass != NULL) {
        return 1;
    }

    m_grass = new dGrass_packet_c();
    if (m_grass == NULL) {
        return 0;
    }

    return 1;
}

/* 8051BF68-8051BFBC 000308 0054+00 1/1 0/0 0/0 .text            deleteGrass__9daGrass_cFv */
void daGrass_c::deleteGrass() {
    if (m_grass != NULL) {
        delete m_grass;
        m_grass = NULL;
    }
}

/* 8051C040-8051C074 0003E0 0034+00 1/1 0/0 0/0 .text            executeGrass__9daGrass_cFv */
void daGrass_c::executeGrass() {
    if (m_grass != NULL) {
        m_grass->calc();
    }
}

/* 8051C074-8051C0A8 000414 0034+00 1/1 0/0 0/0 .text            drawGrass__9daGrass_cFv */
void daGrass_c::drawGrass() {
    if (m_grass != NULL) {
        m_grass->update();
    }
}

/* 8051C0A8-8051C0D4 000448 002C+00 1/1 0/0 0/0 .text newGrassData__9daGrass_cFR4cXyziUcUcsUc */
void daGrass_c::newGrassData(cXyz& i_pos, int i_roomNo, u8 i_itemNo, u8 i_itemBitNo, s16 i_addCol,
                             u8 param_5) {
    m_grass->newData(i_pos, i_roomNo, i_itemNo, i_itemBitNo, i_addCol, param_5);
}

/* 8051C0D4-8051C140 000474 006C+00 1/1 0/0 0/0 .text            createFlower__9daGrass_cFv */
bool daGrass_c::createFlower() {
    if (m_flower != NULL) {
        return 1;
    }

    m_flower = new dFlower_packet_c();
    if (m_flower == NULL) {
        return 0;
    }

    return 1;
}

/* 8051C140-8051C194 0004E0 0054+00 1/1 0/0 0/0 .text            deleteFlower__9daGrass_cFv */
void daGrass_c::deleteFlower() {
    if (m_flower != NULL) {
        delete m_flower;
        m_flower = NULL;
    }
}

/* 8051C194-8051C218 000534 0084+00 1/0 0/0 0/0 .text            __dt__16dFlower_packet_cFv */
dFlower_packet_c::~dFlower_packet_c() {}

/* 8051C218-8051C24C 0005B8 0034+00 1/1 0/0 0/0 .text            executeFlower__9daGrass_cFv */
void daGrass_c::executeFlower() {
    if (m_flower != NULL) {
        m_flower->calc();
    }
}

/* 8051C24C-8051C280 0005EC 0034+00 1/1 0/0 0/0 .text            drawFlower__9daGrass_cFv */
void daGrass_c::drawFlower() {
    if (m_flower != NULL) {
        m_flower->update();
    }
}

/* 8051C280-8051C2AC 000620 002C+00 1/1 0/0 0/0 .text newFlowerData__9daGrass_cFScR4cXyziScs */
void daGrass_c::newFlowerData(s8 param_0, cXyz& i_pos, int i_roomNo, s8 i_tableNo, s16 i_addCol) {
    m_flower->newData(param_0, i_pos, i_roomNo, i_tableNo, i_addCol);
}

/* 8051C2AC-8051C2B0 00064C 0004+00 1/1 0/0 0/0 .text            dGrass_Tex_Change__Fv */
static void dGrass_Tex_Change() {}

/* 8051C2B0-8051C304 000650 0054+00 1/0 0/0 0/0 .text            daGrass_create__FP9daGrass_c */
static int daGrass_create(daGrass_c* i_this) {
    fopAcM_SetupActor(i_this, daGrass_c);
    return i_this->create();
}

/* 8051C304-8051D6CC 0006A4 13C8+00 1/1 0/0 0/0 .text            create__9daGrass_cFv */
int daGrass_c::create() {
    static csXyz l_setType0[] = {
        csXyz(0, 0, 0),
        csXyz(3, 0, -50),
        csXyz(-2, 0, 50),
        csXyz(50, 0, 27),
        csXyz(52, 0, -25),
        csXyz(-50, 0, 22),
        csXyz(-50, 0, -29)
    };

    static csXyz l_setType1[] = {
        csXyz(-18, 0, 76),
        csXyz(-15, 0, 26),
        csXyz(133, 0, 0),
        csXyz(80, 0, 23),
        csXyz(86, 0, -83),
        csXyz(33, 0, -56),
        csXyz(83, 0, -27),
        csXyz(-120, 0, -26),
        csXyz(-18, 0, -74),
        csXyz(-20, 0, -21),
        csXyz(-73, 0, 1),
        csXyz(-67, 0, -102),
        csXyz(-21, 0, 126),
        csXyz(-120, 0, -78),
        csXyz(-70, 0, -49),
        csXyz(32, 0, 103),
        csXyz(34, 0, 51),
        csXyz(-72, 0, 98),
        csXyz(-68, 0, 47),
        csXyz(33, 0, -5),
        csXyz(135, 0, -53)
    };

    static csXyz l_setType2[] = {
        csXyz(25, 0, 25),
        csXyz(25, 0, -25),
        csXyz(-25, 0, 0)
    };

    static csXyz l_setType3[] = {
        csXyz(-24, 0, -28),
        csXyz(27, 0, -28),
        csXyz(-21, 0, 33),
        csXyz(-18, 0, -34),
        csXyz(44, 0, -4),
        csXyz(41, 0, 10),
        csXyz(24, 0, 39)
    };

    static csXyz l_setType4[] = {
        csXyz(-55, 0, -22),
        csXyz(-28, 0, -50),
        csXyz(-77, 0, 11),
        csXyz(55, 0, -44),
        csXyz(83, 0, -71),
        csXyz(11, 0, -48),
        csXyz(97, 0, -34),
        csXyz(-74, 0, -57),
        csXyz(31, 0, 58),
        csXyz(59, 0, 30),
        csXyz(13, 0, 23),
        csXyz(-12, 0, 54),
        csXyz(55, 0, 97),
        csXyz(10, 0, 92),
        csXyz(33, 0, -10),
        csXyz(-99, 0, -27),
        csXyz(40, 0, -87)
    };

    static csXyz l_setType5[] = {
        csXyz(0, 0, 3),
        csXyz(-26, 0, -29),
        csXyz(7, 0, -25),
        csXyz(31, 0, -5),
        csXyz(-7, 0, 40),
        csXyz(-35, 0, 15),
        csXyz(23, 0, 32)
    };

    static daGrass_offsetData l_offsetData[] = {
        {3, l_setType2}, {7, l_setType0},  {21, l_setType1}, {7, l_setType0},
        {7, l_setType3}, {17, l_setType4}, {7, l_setType5},  {7, l_setType0},
    };

    daGrass_offsetData* offset_data = l_offsetData;

    int temp_r26 = current.angle.x & 0xFF;
    u8 kind = daGrass_prm::getKind(this);
    s16 add_col = current.angle.z;

    int type;
    if ((u32)temp_r26 >= 1 && kind == 0) {
        type = ((temp_r26 - 1) % 3);
        offset_data = &offset_data[type];
    } else {
        type = daGrass_prm::getType(this);
        offset_data = &offset_data[type];
    }

    csXyz* set_type = offset_data->set_type;

    if (kind == 0) {
        dGrass_Tex_Change();

        if (createGrass()) {
            u8 itemNo = daGrass_prm::getItemNo(this);
            u8 itemBitNo = daGrass_prm::getItemBitNo(this);
            cXyz pos;

            if (dKy_get_dayofweek() == 6 && strcmp(dComIfGp_getStartStageName(), "D_MN07A") == 0) {
                int angle = 0;
                int iterations = 0;
                f32 size = 1200.0f;

                for (int i = 0; i < 500; i++) {
                    add_col = current.angle.z;
                    if (i != 0) {
                        randam_addcol_set(&add_col);
                    }

                    pos.x = size * cM_ssin(angle);
                    pos.y = 0.0f;
                    pos.z = size * cM_scos(angle);

                    angle += 0x157;
                    if (angle > 0xFFFF) {
                        angle += 0xFFFF0001;
                        size += 75.0f;
                        iterations++;

                        if (iterations > 1000) {
                            break;
                        }
                    }

                    if (cM_rndF(1.0f) < 0.83f) {
                        i--;
                    } else {
                        newGrassData(pos, fopAcM_GetRoomNo(this), itemNo, itemBitNo, add_col,
                                     temp_r26);
                    }
                }
            } else {
                for (int i = 0; i < offset_data->num; i++) {
                    add_col = current.angle.z;
                    if (i != 0) {
                        randam_addcol_set(&add_col);
                    }

                    if ((u32)temp_r26 < 10) {
                        pos.x = current.pos.x + set_type->x;
                        pos.y = current.pos.y;
                        pos.z = current.pos.z + set_type->z;
                    } else {
                        pos.x = current.pos.x + set_type->x * 2.3f;
                        pos.y = current.pos.y;
                        pos.z = current.pos.z + set_type->z * 2.3f;
                    }

                    u8 num = offset_data->num;
                    if ((num == 3 && i != 0) ||
                        (num >= 16 && num <= 21 && i >= 16) ||
                        (num >= 4 && num <= 7 && i >= 4))
                    {
                        newGrassData(pos, fopAcM_GetRoomNo(this), fpcNm_ITEM_NONE, 0xFF, add_col, temp_r26);
                    } else {
                        newGrassData(pos, fopAcM_GetRoomNo(this), itemNo, itemBitNo, add_col, temp_r26);
                    }

                    set_type++;
                }
            }
        }
    } else if ((kind == 2 || kind == 3) && createFlower()) {
        u8 item_no = daGrass_prm::getItemNo(this);
        s8 temp_r28;
        if (kind == 2) {
            temp_r28 = 1;
        } else if (kind == 3) {
            temp_r28 = 2;
        }

        cXyz pos;
        for (int i = 0; i < offset_data->num; i++) {
            add_col = current.angle.z;
            if (i != 0) {
                randam_addcol_set(&add_col);
            }

            pos.x = current.pos.x + set_type->x;
            pos.y = current.pos.y;
            pos.z = current.pos.z + set_type->z;

            newFlowerData(temp_r28, pos, fopAcM_GetRoomNo(this), item_no, add_col);
            set_type++;
        }
    }

    if (m_myObj != NULL) {
        return cPhs_ERROR_e;
    }

    m_myObj = this;
    fopAcM_setStageLayer(this);
    return cPhs_COMPLEATE_e;
}

int daGrass_c::Delete() {
    if (m_myObj == this) {
        deleteGrass();
        deleteFlower();
        m_myObj = NULL;
    }

    return 1;
}

/* 8051D6CC-8051D720 001A6C 0054+00 1/0 0/0 0/0 .text            daGrass_Delete__FP9daGrass_c */
static int daGrass_Delete(daGrass_c* i_this) {
    return i_this->Delete();
}

int daGrass_c::execute() {
    // fake match, inlines save to register instead of reloading
    // dComIfG_Ccsp()->PrepareMass();
    g_dComIfG_gameInfo.play.mCcs.mMass_Mng.Prepare();

    executeGrass();
    executeFlower();

    // dComIfG_Ccsp()->MassClear();
    g_dComIfG_gameInfo.play.mCcs.MassClear();
    return 1;
}

/* 8051D720-8051D77C 001AC0 005C+00 1/0 0/0 0/0 .text            daGrass_execute__FP9daGrass_c */
static int daGrass_execute(daGrass_c* i_this) {
    return i_this->execute();
}

int daGrass_c::draw() {
    drawGrass();
    drawFlower();
    return 1;
}

/* 8051D77C-8051D7B4 001B1C 0038+00 1/0 0/0 0/0 .text            daGrass_draw__FP9daGrass_c */
static int daGrass_draw(daGrass_c* i_this) {
    return i_this->draw();
}

/* 80527840-80527860 -00001 0020+00 1/0 0/0 0/0 .data            daGrass_METHODS */
static actor_method_class daGrass_METHODS = {
    (process_method_func)daGrass_create,
    (process_method_func)daGrass_Delete,
    (process_method_func)daGrass_execute,
    (process_method_func)NULL,
    (process_method_func)daGrass_draw,
};

/* 80527860-80527890 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_GRASS */
extern actor_process_profile_definition g_profile_GRASS = {
  fpcLy_CURRENT_e,       // mLayerID
  11,                    // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_GRASS,            // mProcName
  &g_fpcLf_Method.base, // sub_method
  0x00000570,            // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  8,                     // mPriority
  &daGrass_METHODS,      // sub_method
  0x00060000,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

AUDIO_INSTANCES;
