#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "SSystem/SComponent/c_lib.h"
#include "f_op/f_op_overlap_mng.h"

/* 8051D88C-8051DA20 001C2C 0194+00 1/1 0/0 0/0 .text WorkCo__13dGrass_data_cFP10fopAc_ac_cUli */
void dGrass_data_c::WorkCo(fopAc_ac_c* param_0, u32 param_1, int param_2) {
    // NONMATCHING
}

/* 8051DA20-8051DF54 001DC0 0534+00 1/1 0/0 0/0 .text
 * WorkAt_NoCutAnim__13dGrass_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfP8cCcD_Obj */
void dGrass_data_c::WorkAt_NoCutAnim(fopAc_ac_c* param_0, u32 param_1, int param_2,
                                         dCcMassS_HitInf* param_3, cCcD_Obj* param_4) {
    // NONMATCHING
}

/* 8051DF54-8051E1C8 0022F4 0274+00 1/1 0/0 0/0 .text
 * Direction_Set__13dGrass_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfP8cCcD_ObjP5csXyz */
void dGrass_data_c::Direction_Set(fopAc_ac_c* param_0, u32 param_1, int param_2,
                                      dCcMassS_HitInf* param_3, cCcD_Obj* param_4, csXyz* param_5) {
    // NONMATCHING
}

/* 8051E1C8-8051EB4C 002568 0984+00 1/1 0/0 0/0 .text
 * WorkAt__13dGrass_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfUs */
// literals / regswap, equivalent?
#ifdef NONMATCHING
void dGrass_data_c::WorkAt(fopAc_ac_c* param_0, u32 param_1, int i_roomNo, dCcMassS_HitInf* param_3,
                           u16 i_particleID) {
    cCcD_Obj* hit_obj = param_3->GetAtHitObj();

    if (hit_obj != NULL) {
        if (hit_obj->ChkAtType(0) || hit_obj->ChkAtType(AT_TYPE_ARROW) ||
            hit_obj->ChkAtType(AT_TYPE_SLINGSHOT) || hit_obj->ChkAtType(0x20000000) ||
            hit_obj->ChkAtType(AT_TYPE_SHIELD_ATTACK) || hit_obj->ChkAtType(AT_TYPE_BOOMERANG) ||
            hit_obj->ChkAtType(0x100) || hit_obj->ChkAtType(AT_TYPE_LANTERN_SWING) ||
            hit_obj->ChkAtType(AT_TYPE_HOOKSHOT))
        {
            WorkAt_NoCutAnim(param_0, param_1, i_roomNo, param_3, hit_obj);
            return;
        }
    }

    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    if (hit_obj->ChkAtType(AT_TYPE_BOMB)) {
        if (param_0 != NULL && m_pos.abs(param_0->current.pos) > 200.0f) {
            WorkAt_NoCutAnim(param_0, param_1, i_roomNo, param_3, hit_obj);
            return;
        }
    } else if (daPy_getPlayerActorClass()->getCutType() >= CUT_TYPE_NM_RIGHT &&
               daPy_getPlayerActorClass()->getCutType() <= CUT_TYPE_FINISH_VERTICAL)
    {
        if (m_pos.abs(player_p->current.pos) > 158.0f) {
            if (m_pos.abs(player_p->current.pos) < 200.0f) {
                WorkAt_NoCutAnim(param_0, param_1, i_roomNo, param_3, hit_obj);
            }
            return;
        }
    } else if (daPy_getPlayerActorClass()->getCutType() == CUT_TYPE_TURN_RIGHT ||
               daPy_getPlayerActorClass()->getCutType() == CUT_TYPE_TURN_LEFT)
    {
        if (m_pos.abs(player_p->current.pos) > 200.0f) {
            WorkAt_NoCutAnim(param_0, param_1, i_roomNo, param_3, hit_obj);
            return;
        }
    } else if (daPy_getPlayerActorClass()->getCutType() == CUT_TYPE_LARGE_TURN_RIGHT ||
               daPy_getPlayerActorClass()->getCutType() == CUT_TYPE_LARGE_TURN_LEFT)
    {
        if (m_pos.abs(player_p->current.pos) > 500.0f) {
            WorkAt_NoCutAnim(param_0, param_1, i_roomNo, param_3, hit_obj);
            return;
        }
    } else if (daPy_getPlayerActorClass()->getCutType() == CUT_TYPE_NM_VERTICAL ||
               daPy_getPlayerActorClass()->getCutType() == CUT_TYPE_NM_STAB)
    {
        if (m_pos.abs(player_p->current.pos) > 158.0f) {
            return;
        }
    }

    if (field_0x02 >= 16) {
        daGrass_c::getGrass()->deleteAnm(field_0x02);
    }

    int itemBitNo = m_itemBitNo;
    if (m_itemBitNo == 0xFF) {
        itemBitNo = -1;
    }

    bool create_direct = false;
    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        create_direct = true;
    }

    fopAcM_createItemFromTable(&m_pos, m_tableNo, itemBitNo, i_roomNo, NULL, 0, NULL, NULL, NULL,
                               create_direct);

    field_0x02 = -1;

    static csXyz ang(0, 0, 0);

    cXyz sp50(m_pos.x, m_pos.y + 25.0f, m_pos.z);
    dKy_tevstr_c* tevstr = dComIfGp_roomControl_getTevStr(i_roomNo);

    csXyz sp40;
    Direction_Set(param_0, param_1, i_roomNo, param_3, hit_obj, &sp40);

    GXColor envcolor;
    envcolor.r = (m_addCol >> 8) & 0xFF;
    envcolor.g = m_addCol & 0xFF;
    dComIfGp_particle_set(i_particleID, &sp50, tevstr, &sp40, NULL, 255,
                          dPa_control_c::getLight8EcallBack(), -1, &envcolor, NULL, NULL);

    static bool init;
    if (!init) {
        init = true;
        mDoAud_seStart(JA_SE_LK_CUT_GRASS, &m_pos, 0, dComIfGp_getReverb(i_roomNo));
    }
}
#else
void dGrass_data_c::WorkAt(fopAc_ac_c* param_0, u32 param_1, int param_2,
                               dCcMassS_HitInf* param_3, u16 param_4) {
    // NONMATCHING
}
#endif

/* 8051EB4C-8051EB88 002EEC 003C+00 3/3 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805278B8-805278C4 0046E0 000C+00 3/3 0/0 0/0 .data            __vt__15dCcMassS_HitInf */
SECTION_DATA extern void* __vt__15dCcMassS_HitInf[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15dCcMassS_HitInfFv,
};

/* 8051EB88-8051ED98 002F28 0210+00 1/1 0/0 0/0 .text            hitCheck__13dGrass_data_cFiUs */
void dGrass_data_c::hitCheck(int param_0, u16 param_1) {
    // NONMATCHING
}

/* 8051ED98-8051EDE0 003138 0048+00 1/0 0/0 0/0 .text            __dt__15dCcMassS_HitInfFv */
// dCcMassS_HitInf::~dCcMassS_HitInf() {
extern "C" asm void __dt__15dCcMassS_HitInfFv() {
    // NONMATCHING
}

/* 8051EDE0-8051EDF0 003180 0010+00 1/1 0/0 0/0 .text newData__13dGrass_room_cFP13dGrass_data_c */
void dGrass_room_c::newData(dGrass_data_c* i_data) {
    i_data->mp_next = mp_data;
    mp_data = i_data;
}

/* 8051EDF0-8051EE8C 003190 009C+00 1/1 0/0 0/0 .text            deleteData__13dGrass_room_cFv */
void dGrass_room_c::deleteData() {
    while (mp_data != NULL) {
        mp_data->m_state = 0;

        s8 anm_id = mp_data->field_0x02;
        if (anm_id >= 16) {
            daGrass_c::getGrass()->deleteAnm(anm_id);
            mp_data->field_0x02 = cM_rnd() * FLOAT_LABEL(lit_4600);
        }

        mp_data = mp_data->mp_next;
    }
}

/* 8051EE8C-8051F03C 00322C 01B0+00 1/1 0/0 0/0 .text            __ct__15dGrass_packet_cFv */
dGrass_packet_c::dGrass_packet_c() {
    dGrass_data_c* data_p = m_data;
    for (int i = 0; i < 1500; i++) {
        data_p->m_state = 0;
        data_p++;
    }

    field_0x10 = 0;

    dGrass_anm_c* anm_p = m_anm;
    for (int i = 0; i < 112; i++) {
        anm_p->m_state = 0;
        anm_p++;
    }

    s16 unused = 0;
    for (int i = 0; i < 16; i++) {
        setAnm(i, unused);
        unused += 0x1000;
    }

    mp_pos = (Vec*)l_pos;
    mp_normal = (Vec*)&l_normal;
    mp_colors = (GXColor*)l_color;
    mp_texCoords = (Vec*)l_texCoord;
    mp_kusa9q_DL = l_kusa9q_matDL;
    m_kusa9q_DL_size = 0xA0;
    mp_kusa9q_14_DL = l_kusa9q_l4_matDL;
    m_kusa9q_DL_14_size = 0xA0;
    mp_Mkusa_9q_DL = l_M_Kusa_9qDL;
    m_Mkusa_9q_DL_size = 0xC0;
    mp_Mkusa_9q_cDL = l_M_Kusa_9q_cDL;
    m_Mkusa_9q_cDL_size = 0xC0;
    field_0x1d714 = 0;

    m_deleteRoom = &deleteRoom;
}


/* 8051F03C-8051FABC 0033DC 0A80+00 1/0 0/0 0/0 .text            draw__15dGrass_packet_cFv */
// void dGrass_packet_c::draw() {
extern "C" asm void draw__15dGrass_packet_cFv() {
    // NONMATCHING
}

/* 8051FABC-8051FF88 003E5C 04CC+00 1/1 0/0 0/0 .text            calc__15dGrass_packet_cFv */
void dGrass_packet_c::calc() {
    // NONMATCHING
}

/* 8051FF88-80520030 004328 00A8+00 2/3 0/0 0/1 .text            checkGroundY__FR4cXyz */
static f32 checkGroundY(cXyz& param_0) {
    // NONMATCHING
}

/* 80520030-8052067C 0043D0 064C+00 1/1 0/0 0/0 .text            update__15dGrass_packet_cFv */
// mostly matches except literals, some regalloc, and one out of order block
#ifdef NONMATCHING
void dGrass_packet_c::update() {
    static s16 mAngleZ[1500];

    dGrass_anm_c* anm_p = getAnm();
    for (int i = 0; i < 112; i++) {
        mDoMtx_stack_c::YrotS(anm_p->m_angY);
        mDoMtx_stack_c::XrotM(anm_p->m_angX);
        mDoMtx_stack_c::YrotM(-anm_p->m_angY);
        cMtx_copy(mDoMtx_stack_c::get(), anm_p->m_animMtx);
        anm_p++;
    }

    dGrass_data_c* data_p = getData();
    anm_p = getAnm();

    int var_r26 = 0;

    cXyz sp1C;
    f32 far = mDoLib_clipper::getFar();
    mDoLib_clipper::changeFar(far * 1.636364f);

    for (int i = 0; i < 1500; i++) {
        if (data_p->m_state != 0) {
            if (data_p->m_state == 1 && var_r26 < 30) {
                data_p->m_pos.y = checkGroundY(data_p->m_pos);
                data_p->m_state = 2;
                var_r26++;
            }

            sp1C.set(data_p->m_pos.x, data_p->m_pos.y + 260.0f, data_p->m_pos.z);
            if (mDoLib_clipper::clip(j3dSys.getViewMtx(), sp1C, 260.0f)) {
                cLib_onBit<u8>(data_p->field_0x01, 2);
            } else {
                cLib_offBit<u8>(data_p->field_0x01, 2);

                if (data_p->field_0x02 >= 0) {
                    MtxP mtx = anm_p[data_p->field_0x02].m_animMtx;
                    mtx[0][3] = data_p->m_pos.x;
                    mtx[1][3] = data_p->m_pos.y;
                    mtx[2][3] = data_p->m_pos.z;

                    if (g_env_light.mInitAnmTimer == 1) {
                        mAngleZ[i] = 0;
                    }

                    f32 temp_f2 = ((((s16)data_p->m_pos.x * 3535) & 0xFFF) / 4096.0f) +
                                  ((((s16)data_p->m_pos.z * 3535) & 0xFFF) / 4096.0f);
                    temp_f2 *= 0.5f;

                    f32 var_f31;
                    f32 var_f30;
                    if (data_p->field_0x05 >= 10) {
                        var_f31 = temp_f2 * 0.4f + 0.6f;
                        var_f30 = temp_f2 * 0.3f + 0.7f;
                    } else {
                        var_f31 = temp_f2 * 0.3f + 0.7f;
                        var_f30 = (temp_f2 * 0.3f + 0.7f) * 0.8f;
                    }

                    mDoMtx_stack_c::copy(mtx);

                    if (data_p->field_0x05 >= 7 && data_p->field_0x05 <= 9) {
                        mDoMtx_stack_c::ZrotM(mAngleZ[i]);
                        mDoMtx_stack_c::scaleM(var_f31, var_f30 - 0.22f, var_f31);
                        mDoMtx_stack_c::ZrotM(-mAngleZ[i]);

                        s16 ang = ((i + 1) & 0xF) * 5.0f + 162.0f;
                        mAngleZ[i] += ang;
                    } else {
                        if (data_p->field_0x05 >= 10 &&
                            memcmp(dComIfGp_getStartStageName(), "D_MN54", 6) != 0)
                        {
                            mDoMtx_stack_c::ZrotM(mAngleZ[i]);
                        }

                        mDoMtx_stack_c::scaleM(var_f31, var_f30, var_f31);

                        if (data_p->field_0x05 >= 10 &&
                            memcmp(dComIfGp_getStartStageName(), "D_MN54", 6) != 0)
                        {
                            mDoMtx_stack_c::ZrotM(-mAngleZ[i]);
                        }

                        if (data_p->field_0x05 >= 10) {
                            mDoMtx_stack_c::scaleM(2.0f, (i & 3) * 0.1f + 0.64f, 2.0f);
                        }

                        if (data_p->field_0x05 >= 10 &&
                            memcmp(dComIfGp_getStartStageName(), "D_MN54", 6) != 0)
                        {
                            f32 pow =
                                dKyw_get_wind_pow() * dKyw_get_wind_pow() * dKyw_get_wind_pow();
                            s16 ang = (((i + 1) & 0xF) * 25.0f + 3200.0f) * pow;
                            mAngleZ[i] = mAngleZ[i] + ang;
                        }
                    }

                    cMtx_concat(j3dSys.getViewMtx(), mDoMtx_stack_c::get(), data_p->m_modelMtx);
                } else {
                    mDoMtx_stack_c::transS(data_p->m_pos.x, data_p->m_pos.y, data_p->m_pos.z);
                    mDoMtx_stack_c::YrotM(i * 3535);

                    if (data_p->field_0x02 < -2) {
                        mDoMtx_stack_c::scaleM(1.0f, -data_p->field_0x02 / 40.0f, 1.0f);
                    }

                    f32 scale = ((((s16)data_p->m_pos.x * 3535) & 0xFFF) / 4096.0f) * 0.3f + 0.7f;
                    mDoMtx_stack_c::scaleM(scale, scale, scale);
                    cMtx_concat(j3dSys.getViewMtx(), mDoMtx_stack_c::get(), data_p->m_modelMtx);
                }
            }
        }
        data_p++;
    }

    mDoLib_clipper::resetFar();
    dComIfGd_getListPacket()->entryImm(this, 0);
}
#else
void dGrass_packet_c::update() {
    // NONMATCHING
}
#endif

/* 8052067C-80520770 004A1C 00F4+00 1/1 0/0 0/0 .text
 * setData__15dGrass_packet_cFP13dGrass_data_ciR4cXyziUcUcsUc   */
void dGrass_packet_c::setData(dGrass_data_c* i_data, int param_1, cXyz& i_pos, int i_roomNo,
                              u8 i_tableNo, u8 i_itemBitNo, s16 i_addCol, u8 param_7) {
    f32 y_pos;
    if (fopOvlpM_IsPeek()) {
        y_pos = checkGroundY(i_pos);
        i_data->m_state = 2;
    } else {
        y_pos = i_pos.y;
        i_data->m_state = 1;
    }

    i_data->field_0x01 = 2;
    i_data->field_0x02 = cM_rndF(FLOAT_LABEL(lit_4600));
    i_data->m_pos.set(i_pos.x, y_pos, i_pos.z);
    i_data->m_tableNo = i_tableNo;
    i_data->m_itemBitNo = i_itemBitNo;
    i_data->m_addCol = i_addCol;
    i_data->field_0x05 = param_7;

    m_room[i_roomNo].newData(i_data);
    field_0x10 = param_1;
}

/* 80520770-80520864 004B10 00F4+00 1/1 0/0 0/0 .text newData__15dGrass_packet_cFR4cXyziUcUcsUc */
dGrass_data_c* dGrass_packet_c::newData(cXyz& i_pos, int i_roomNo, u8 i_tableNo, u8 i_itemBitNo,
                                        s16 i_addCol, u8 param_5) {
    dGrass_data_c* data_p = m_data + field_0x10;

    for (int i = field_0x10; i < 1500; i++) {
        if (data_p->m_state == 0) {
            setData(data_p, i, i_pos, i_roomNo, i_tableNo, i_itemBitNo, i_addCol, param_5);
            return data_p;
        }
        data_p++;
    }

    data_p = m_data;
    for (int i = 0; i < field_0x10; i++) {
        if (data_p->m_state == 0) {
            setData(data_p, i, i_pos, i_roomNo, i_tableNo, i_itemBitNo, i_addCol, param_5);
            return data_p;
        }
        data_p++;
    }

    return NULL;
}

/* 80520864-80520898 004C04 0034+00 1/0 0/0 0/0 .text            deleteRoom__15dGrass_packet_cFi */
void dGrass_packet_c::deleteRoom(int i_roomNo) {
    m_room[i_roomNo].deleteData();
}

/* 80520898-805208E4 004C38 004C+00 2/2 0/0 0/0 .text            newAnm__15dGrass_packet_cFv */
int dGrass_packet_c::newAnm() {
    dGrass_anm_c* anm_p = m_anm + 16;
    for (int i = 16; i < 112; i++) {
        if (anm_p->m_state == 0) {
            anm_p->m_state = 1;
            anm_p->m_angY = 0;
            anm_p->m_angX = 0;
            return i;
        }

        anm_p++;
    }

    return -1;
}

/* 805208E4-8052090C 004C84 0028+00 1/1 0/0 0/0 .text            setAnm__15dGrass_packet_cFis */
void dGrass_packet_c::setAnm(int i_idx, s16) {
    dGrass_anm_c* anm_p = m_anm + i_idx;

    anm_p->m_state = 1;
    anm_p->m_angY = 0;
    anm_p->m_angX = 0;
}

/* 8052090C-80520928 004CAC 001C+00 1/1 0/0 0/0 .text            getSwordTopPos__9daPy_py_cCFv */
// void daPy_py_c::getSwordTopPos() const {
extern "C" asm void getSwordTopPos__9daPy_py_cCFv() {
    // NONMATCHING
}

/* 80520928-80520934 004CC8 000C+00 1/1 0/0 0/0 .text            __ct__13dGrass_room_cFv */
dGrass_room_c::dGrass_room_c() {
    mp_data = NULL;
}

/* 80520934-80520940 004CD4 000C+00 1/1 0/0 0/0 .text            __ct__12dGrass_anm_cFv */
dGrass_anm_c::dGrass_anm_c() {
    m_state = 0;
}

/* 80520940-8052097C 004CE0 003C+00 2/2 0/0 0/0 .text            __dt__13dGrass_data_cFv */
dGrass_data_c::~dGrass_data_c() {}

/* 8052097C-80520988 004D1C 000C+00 1/1 0/0 0/0 .text            __ct__13dGrass_data_cFv */
dGrass_data_c::dGrass_data_c() {
    m_state = 0;
}