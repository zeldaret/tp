/* 80520988-80520AD8 004D28 0150+00 1/1 0/0 0/0 .text WorkCo__14dFlower_data_cFP10fopAc_ac_cUli */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFlower_data_c::WorkCo(fopAc_ac_c* param_0, u32 param_1, int param_2) {
    nofralloc
#include "asm/rel/d/a/d_a_grass/d_a_grass/WorkCo__14dFlower_data_cFP10fopAc_ac_cUli.s"
}
#pragma pop

/* 80520AD8-80520B34 004E78 005C+00 4/4 0/0 0/0 .text            deleteAnm__14dFlower_data_cFv */
void dFlower_data_c::deleteAnm() {
    if (field_0x01 >= 8) {
        daGrass_c::getFlower()->deleteAnm(field_0x01);
        dFlower_anm_c* anm_p = daGrass_c::getFlower()->getAnm(field_0x01);
        field_0x01 = (anm_p->m_angY >> 0xD) & 7;
    }
}

/* 80520B34-80520CFC 004ED4 01C8+00 1/1 0/0 0/0 .text
 * WorkAt_NoCutAnim__14dFlower_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfP8cCcD_Obj */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFlower_data_c::WorkAt_NoCutAnim(fopAc_ac_c* param_0, u32 param_1, int param_2,
                                          dCcMassS_HitInf* param_3, cCcD_Obj* param_4) {
    nofralloc
#include "asm/rel/d/a/d_a_grass/d_a_grass/WorkAt_NoCutAnim__14dFlower_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInfP8cCcD_Obj.s"
}
#pragma pop

/* 80520CFC-80521A3C 00509C 0D40+00 1/1 0/0 0/0 .text
 * WorkAt__14dFlower_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInf  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFlower_data_c::WorkAt(fopAc_ac_c* param_0, u32 param_1, int param_2,
                                dCcMassS_HitInf* param_3) {
    nofralloc
#include "asm/rel/d/a/d_a_grass/d_a_grass/WorkAt__14dFlower_data_cFP10fopAc_ac_cUliP15dCcMassS_HitInf.s"
}
#pragma pop

/* 80521A3C-80521BF8 005DDC 01BC+00 1/1 0/0 0/0 .text hitCheck__14dFlower_data_cFP10fopAc_ac_ci */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFlower_data_c::hitCheck(fopAc_ac_c* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/d_a_grass/d_a_grass/hitCheck__14dFlower_data_cFP10fopAc_ac_ci.s"
}
#pragma pop

/* 80521BF8-80521C08 005F98 0010+00 1/1 0/0 0/0 .text newData__14dFlower_room_cFP14dFlower_data_c
 */
void dFlower_room_c::newData(dFlower_data_c* i_data) {
    i_data->mp_next = mp_data;
    mp_data = i_data;
}

/* 80521C08-80521C64 005FA8 005C+00 1/1 0/0 0/0 .text            deleteData__14dFlower_room_cFv */
void dFlower_room_c::deleteData() {
    while (mp_data != NULL) {
        mp_data->deleteAnm();
        mp_data->m_state = 0;
        mp_data = mp_data->mp_next;
    }
}

/* 80521C64-80521DAC 006004 0148+00 1/1 0/0 0/0 .text            __ct__16dFlower_packet_cFv */
// matches with data
#ifdef NONMATCHING
dFlower_packet_c::dFlower_packet_c() {
    dFlower_data_c* data_p = m_data;
    for (int i = 0; i < 1000; i++) {
        data_p->m_state = 0;
        data_p++;
    }

    dFlower_anm_c* anm_p = m_anm;
    for (int i = 0; i < 72; i++) {
        anm_p->m_state = 0;
        anm_p++;
    }

    s16 unused = 0;
    for (int i = 0; i < 8; i++) {
        setAnm(i, unused);
        unused += 0x2000;
    }

    m_deleteRoom = &deleteRoom;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dFlower_packet_c::dFlower_packet_c() {
    nofralloc
#include "asm/rel/d/a/d_a_grass/d_a_grass/__ct__16dFlower_packet_cFv.s"
}
#pragma pop
#endif

/* 80521DAC-80522774 00614C 09C8+00 2/0 0/0 0/0 .text            draw__16dFlower_packet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dFlower_packet_c::draw() {
extern "C" asm void draw__16dFlower_packet_cFv() {
    nofralloc
#include "asm/rel/d/a/d_a_grass/d_a_grass/draw__16dFlower_packet_cFv.s"
}
#pragma pop

/* 80522774-8052299C 006B14 0228+00 1/1 0/0 0/0 .text            calc__16dFlower_packet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFlower_packet_c::calc() {
    nofralloc
#include "asm/rel/d/a/d_a_grass/d_a_grass/calc__16dFlower_packet_cFv.s"
}
#pragma pop

/* 8052299C-80522A64 006D3C 00C8+00 2/2 0/0 0/0 .text            flowerCheckGroundY__FR4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm f32 flowerCheckGroundY(cXyz& param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_grass/d_a_grass/flowerCheckGroundY__FR4cXyz.s"
}
#pragma pop

/* 80522A64-80522CBC 006E04 0258+00 1/1 0/0 0/0 .text            update__16dFlower_packet_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dFlower_packet_c::update() {
    nofralloc
#include "asm/rel/d/a/d_a_grass/d_a_grass/update__16dFlower_packet_cFv.s"
}
#pragma pop

/* 80522CBC-80522E28 00705C 016C+00 1/1 0/0 0/0 .text
 * setData__16dFlower_packet_cFP14dFlower_data_ciScR4cXyziScs   */
void dFlower_packet_c::setData(dFlower_data_c* i_data, int param_1, s8 param_2, cXyz& i_pos,
                               int i_roomNo, s8 i_tableNo, s16 i_addCol) {
    f32 y_pos;
    if (fopOvlpM_IsPeek()) {
        y_pos = flowerCheckGroundY(i_pos);
        i_data->m_state = 6;
    } else {
        y_pos = i_pos.y;
        i_data->m_state = 38;
    }

    if (param_2 == 2) {
        cLib_onBit(i_data->m_state, 0x40);
    }

    i_data->field_0x01 = cM_rndF(FLOAT_LABEL(lit_6262));
    i_data->m_pos.set(i_pos.x, y_pos, i_pos.z);
    i_data->m_tableNo = i_tableNo;
    i_data->field_0x03 = 0;
    i_data->field_0x04 = i_addCol;

    if (m_room[i_roomNo].mp_data == NULL) {
        mp_pos = (Vec*)l_flowerPos2;
        mp_colors = (GXColor*)l_flowerColor2;
        mp_texCoords = (Vec*)l_flowerTexCoord2;
        mp_mat2DL = l_mat2DL;
        m_mat2DL_size = 0x80;
        mp_mat2Light4DL = l_mat2Light4DL;
        m_mat2Light4DL_size = 0x80;
        mp_Jhana01DL = l_J_hana01DL;
        m_Jhana01DL_size = 0x120;
        mp_Jhana01_cDL = l_J_hana01_c_01DL;
        m_Jhana01_cDL_size = 0x120;
    }

    m_room[i_roomNo].newData(i_data);
    field_0x10 = param_1;
}

/* 80522E28-80522F0C 0071C8 00E4+00 1/1 0/0 0/0 .text newData__16dFlower_packet_cFScR4cXyziScs */
dFlower_data_c* dFlower_packet_c::newData(s8 param_0, cXyz& i_pos, int i_roomNo, s8 i_tableNo,
                                          s16 i_addCol) {
    dFlower_data_c* data_p = m_data + field_0x10;

    for (int i = field_0x10; i < 1000; i++) {
        if (!cLib_checkBit(data_p->m_state, 2)) {
            setData(data_p, i, param_0, i_pos, i_roomNo, i_tableNo, i_addCol);
            return data_p;
        }
        data_p++;
    }

    data_p = m_data;
    for (int i = 0; i < field_0x10; i++) {
        if (!cLib_checkBit(data_p->m_state, 2)) {
            setData(data_p, i, param_0, i_pos, i_roomNo, i_tableNo, i_addCol);
            return data_p;
        }
        data_p++;
    }

    return NULL;
}

/* 80522F0C-80522F40 0072AC 0034+00 1/0 0/0 0/0 .text            deleteRoom__16dFlower_packet_cFi */
void dFlower_packet_c::deleteRoom(int i_roomNo) {
    m_room[i_roomNo].deleteData();
}

/* 80522F40-80522F8C 0072E0 004C+00 2/2 0/0 0/0 .text            newAnm__16dFlower_packet_cFv */
int dFlower_packet_c::newAnm() {
    dFlower_anm_c* anm_p = m_anm + 8;
    for (int i = 8; i < 72; i++) {
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

/* 80522F8C-80522FB4 00732C 0028+00 1/1 0/0 0/0 .text            setAnm__16dFlower_packet_cFis */
void dFlower_packet_c::setAnm(int i_idx, s16 param_1) {
    dFlower_anm_c* anm_p = m_anm + i_idx;

    anm_p->m_state = 1;
    anm_p->m_angY = param_1;
    anm_p->m_angX = 0;
}

/* 80522FB4-80522FC0 007354 000C+00 1/1 0/0 0/0 .text            __ct__14dFlower_room_cFv */
dFlower_room_c::dFlower_room_c() {
    mp_data = NULL;
}

/* 80522FC0-80522FCC 007360 000C+00 1/1 0/0 0/0 .text            __ct__13dFlower_anm_cFv */
dFlower_anm_c::dFlower_anm_c() {
    m_state = 0;
}

/* 80522FCC-80523008 00736C 003C+00 2/2 0/0 0/0 .text            __dt__14dFlower_data_cFv */
dFlower_data_c::~dFlower_data_c() {}

/* 80523008-80523014 0073A8 000C+00 1/1 0/0 0/0 .text            __ct__14dFlower_data_cFv */
dFlower_data_c::dFlower_data_c() {
    m_state = 0;
}