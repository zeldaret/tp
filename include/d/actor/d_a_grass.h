#ifndef D_A_GRASS_H
#define D_A_GRASS_H

#include "f_op/f_op_actor_mng.h"

class dCcMassS_HitInf;
class cCcD_Obj;

class dGrass_data_c {
public:
    /* 8051D88C */ void WorkCo(fopAc_ac_c*, u32, int);
    /* 8051DA20 */ void WorkAt_NoCutAnim(fopAc_ac_c*, u32, int, dCcMassS_HitInf*, cCcD_Obj*);
    /* 8051DF54 */ void Direction_Set(fopAc_ac_c*, u32, int, dCcMassS_HitInf*, cCcD_Obj*, csXyz*);
    /* 8051E1C8 */ void WorkAt(fopAc_ac_c*, u32, int, dCcMassS_HitInf*, u16);
    /* 8051EB88 */ void hitCheck(int, u16);
    /* 80520940 */ ~dGrass_data_c();
    /* 8052097C */ dGrass_data_c();

    /* 0x00 */ u8 m_state;
    /* 0x01 */ u8 field_0x01;
    /* 0x02 */ s8 field_0x02;
    /* 0x03 */ u8 m_tableNo;
    /* 0x04 */ u8 m_itemBitNo;
    /* 0x05 */ u8 field_0x05;
    /* 0x06 */ u8 field_0x06[0x08 - 0x06];
    /* 0x08 */ s16 m_addCol;
    /* 0x0C */ cXyz m_pos;
    /* 0x18 */ Mtx m_modelMtx;
    /* 0x48 */ dGrass_data_c* mp_next;
};

class dGrass_room_c {
public:
    /* 8051EDE0 */ void newData(dGrass_data_c*);
    /* 8051EDF0 */ void deleteData();
    /* 80520928 */ dGrass_room_c();

    dGrass_data_c* getData() { return mp_data; }

    /* 0x0 */ dGrass_data_c* mp_data;
};

class dGrass_anm_c {
public:
    /* 80520934 */ dGrass_anm_c();

    /* 0x00 */ u8 m_state;
    /* 0x02 */ s16 m_angY;
    /* 0x04 */ s16 m_angX;
    /* 0x08 */ Mtx m_animMtx;
};

class dGrass_packet_c : public J3DPacket {
public:
    /* 8051EE8C */ dGrass_packet_c();
    /* 8051FABC */ void calc();
    /* 80520030 */ void update();
    /* 8052067C */ void setData(dGrass_data_c*, int, cXyz&, int, u8, u8, s16, u8);
    /* 80520770 */ dGrass_data_c* newData(cXyz&, int, u8, u8, s16, u8);
    /* 80520864 */ void deleteRoom(int);
    /* 80520898 */ int newAnm();
    /* 805208E4 */ void setAnm(int, s16);

    /* 8051F03C */ virtual void draw();
    /* 8051BFBC */ virtual ~dGrass_packet_c() {}

    typedef void (dGrass_packet_c::*deleteFunc)(int);
    static deleteFunc m_deleteRoom;

    dGrass_anm_c* getAnm() { return m_anm; }
    dGrass_anm_c* getAnm(int i_no) { return &m_anm[i_no]; }

    dGrass_data_c* getData() { return m_data; }

    void deleteAnm(int i_idx) { m_anm[i_idx].m_state = 0; }

    /* 0x00010 */ u16 m_dataNum;
    /* 0x00014 */ dGrass_data_c m_data[1500];
    /* 0x1BD64 */ dGrass_anm_c m_anm[112];
    /* 0x1D5E4 */ dGrass_room_c m_room[64];
    /* 0x1D6E4 */ Vec* mp_pos;
    /* 0x1D6E8 */ Vec* mp_normal;
    /* 0x1D6EC */ GXColor* mp_colors;
    /* 0x1D6F0 */ Vec* mp_texCoords;
    /* 0x1D6F4 */ u8* mp_kusa9q_DL;
    /* 0x1D6F8 */ u32 m_kusa9q_DL_size;
    /* 0x1D6FC */ u8* mp_kusa9q_14_DL;
    /* 0x1D700 */ u32 m_kusa9q_DL_14_size;
    /* 0x1D704 */ u8* mp_Mkusa_9q_DL;
    /* 0x1D708 */ u32 m_Mkusa_9q_DL_size;
    /* 0x1D70C */ u8* mp_Mkusa_9q_cDL;
    /* 0x1D710 */ u32 m_Mkusa_9q_cDL_size;
    /* 0x1D714 */ s16 field_0x1d714;
};  // Size: 0x1D718

STATIC_ASSERT(sizeof(dGrass_packet_c) == 0x1D718);

class dFlower_data_c {
public:
    /* 80520988 */ void WorkCo(fopAc_ac_c*, u32, int);
    /* 80520AD8 */ void deleteAnm();
    /* 80520B34 */ void WorkAt_NoCutAnim(fopAc_ac_c*, u32, int, dCcMassS_HitInf*, cCcD_Obj*);
    /* 80520CFC */ void WorkAt(fopAc_ac_c*, u32, int, dCcMassS_HitInf*);
    /* 80521A3C */ void hitCheck(fopAc_ac_c*, int);
    /* 80522FCC */ ~dFlower_data_c();
    /* 80523008 */ dFlower_data_c();

    /* 0x00 */ u8 m_state;
    /* 0x01 */ s8 field_0x01;
    /* 0x02 */ s8 m_tableNo;
    /* 0x03 */ u8 field_0x03;
    /* 0x04 */ s16 field_0x04;
    /* 0x08 */ cXyz m_pos;
    /* 0x14 */ Mtx m_modelMtx;
    /* 0x44 */ dFlower_data_c* mp_next;
};

class dFlower_room_c {
public:
    /* 80521BF8 */ void newData(dFlower_data_c*);
    /* 80521C08 */ void deleteData();
    /* 80522FB4 */ dFlower_room_c();

    dFlower_data_c* getData() { return mp_data; }

    /* 0x0 */ dFlower_data_c* mp_data;
};

class dFlower_anm_c {
public:
    /* 80522FC0 */ dFlower_anm_c();

    /* 0x00 */ u8 m_state;
    /* 0x02 */ s16 m_angY;
    /* 0x04 */ s16 m_angX;
    /* 0x08 */ Mtx m_animMtx;
};

class dFlower_packet_c : public J3DPacket {
public:
    /* 80521C64 */ dFlower_packet_c();
    /* 80522774 */ void calc();
    /* 80522A64 */ void update();
    /* 80522CBC */ void setData(dFlower_data_c*, int, s8, cXyz&, int, s8, s16);
    /* 80522E28 */ dFlower_data_c* newData(s8, cXyz&, int, s8, s16);
    /* 80522F0C */ void deleteRoom(int);
    /* 80522F40 */ int newAnm();
    /* 80522F8C */ void setAnm(int, s16);

    /* 80521DAC */ virtual void draw();
    /* 8051C194 */ virtual ~dFlower_packet_c();

    typedef void (dFlower_packet_c::*deleteFunc)(int);
    static deleteFunc m_deleteRoom;

    dFlower_anm_c* getAnm(int i_idx) { return &m_anm[i_idx]; }
    dFlower_anm_c* getAnm() { return &m_anm[0]; }
    dFlower_data_c* getData() { return m_data; }

    void deleteAnm(int i_idx) { m_anm[i_idx].m_state = 0; }

    void setPlayerCutFlg(int i_flag) { m_playerCutFlg = i_flag != 0; }
    void setPlayerSwordAngY(s16 i_angY) { m_playerSwordAngY = i_angY; }
    void setPlayerSwordMoveAngY(s16 i_angY) { m_playerSwordMoveAngY = i_angY; }
    void setPlayerSwordTop(cXyz& i_pos) { m_playerSwordTop = i_pos; }
    cXyz& getPlayerSwordTop() { return m_playerSwordTop; }

    /* 0x00010 */ u16 m_dataNum;
    /* 0x00014 */ dFlower_data_c m_data[1000];
    /* 0x11954 */ dFlower_anm_c m_anm[72];
    /* 0x12914 */ dFlower_room_c m_room[64];
    /* 0x12A14 */ u8 m_playerCutFlg;
    /* 0x12A16 */ s16 m_playerSwordAngY;
    /* 0x12A18 */ s16 m_playerSwordMoveAngY;
    /* 0x12A1C */ cXyz m_playerSwordTop;
    /* 0x12A28 */ Vec* mp_pos;
    /* 0x12A2C */ GXColor* mp_colors;
    /* 0x12A30 */ Vec* mp_texCoords;
    /* 0x12A34 */ u8* mp_mat2DL;
    /* 0x12A38 */ u32 m_mat2DL_size;
    /* 0x12A3C */ u8* mp_mat2Light4DL;
    /* 0x12A40 */ u32 m_mat2Light4DL_size;
    /* 0x12A44 */ u8* mp_Jhana01DL;
    /* 0x12A48 */ u32 m_Jhana01DL_size;
    /* 0x12A4C */ u8* mp_Jhana01_cDL;
    /* 0x12A50 */ u32 m_Jhana01_cDL_size;
};  // Size: 0x12A54

/**
 * @ingroup actors-unsorted
 * @class daGrass_c
 * @brief Grass
 *
 * @details
 *
 */
class daGrass_c : public fopAc_ac_c {
public:
    /* 8051BEFC */ bool createGrass();
    /* 8051BF68 */ void deleteGrass();
    /* 8051C040 */ void executeGrass();
    /* 8051C074 */ void drawGrass();
    /* 8051C0A8 */ void newGrassData(cXyz&, int, u8, u8, s16, u8);
    /* 8051C0D4 */ bool createFlower();
    /* 8051C140 */ void deleteFlower();
    /* 8051C218 */ void executeFlower();
    /* 8051C24C */ void drawFlower();
    /* 8051C280 */ void newFlowerData(s8, cXyz&, int, s8, s16);

    /* 8051C304 */ inline int create();

    inline int Delete();
    inline int execute();
    inline int draw();

    static dGrass_packet_c* getGrass() { return m_grass; }
    static dFlower_packet_c* getFlower() { return m_flower; }

    /* 800319C8 */ static void deleteRoomGrass(int);
    /* 80031A20 */ static void deleteRoomFlower(int);

    static daGrass_c* m_myObj;
    static dGrass_packet_c* m_grass;
    static dFlower_packet_c* m_flower;
};

namespace daGrass_prm {
    inline u8 getKind(daGrass_c* i_this) { return (fopAcM_GetParam(i_this) >> 4) & 3; }
    inline u8 getType(daGrass_c* i_this) { return fopAcM_GetParam(i_this) & 0xF; }
    inline u8 getItemNo(daGrass_c* i_this) { return (fopAcM_GetParam(i_this) >> 0x10) & 0xFF; }
    inline u8 getItemBitNo(daGrass_c* i_this) { return (fopAcM_GetParam(i_this) >> 8) & 0xFF; }
};

struct daGrass_offsetData {
    /* 0x0 */ u8 num;
    /* 0x4 */ csXyz* set_type;
};


#endif /* D_A_GRASS_H */
