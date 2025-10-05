#ifndef D_A_OBJ_NAGAISU_H
#define D_A_OBJ_NAGAISU_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_model.h"

class daObjNagaisu_c;

// child seat / couch?
class daObjIsuChild_c {
public:
    /* 80C9FA90 */ daObjIsuChild_c();
    /* 80C9FCDC */ virtual ~daObjIsuChild_c();
    /* 80C9FD4C */ int createHeap();
    /* 80C9FE28 */ void create(daObjNagaisu_c*, dCcD_Stts*);
    /* 80C9FF54 */ int execute();
    /* 80CA0034 */ int draw(dMdl_c*);
    /* 80CA00B8 */ void Delete();
    /* 80CA0118 */ bool chkHit();
    /* 80CA0180 */ void callEmt();
    
    void setDeadFlg(bool i_flg) { mIsDead = i_flg; }
    bool getDeadFlg() { return mIsDead; }

    void setPos(const cXyz& i_pos) {
        mPos.x = i_pos.x;
        mPos.y = i_pos.y;
        mPos.z = i_pos.z;
    }

    static const dCcD_SrcCyl s_CcDCyl;

    /* 0x004 */ dMdl_obj_c mMdlObj;
    /* 0x038 */ Vec mPos;
    /* 0x044 */ dCcD_Cyl mCcCyl[2];
    /* 0x2BC */ Mtx mBgMtx;
    /* 0x2EC */ dBgW* mpBgW;
    /* 0x2F0 */ bool mIsDead;
};

/**
 * @ingroup actors-objects
 * @class daObjNagaisu_c
 * @brief Couch
 *
 * @details
 *
 */
class daObjNagaisu_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    /* 80C9F3D8 */ daObjNagaisu_c();
    /* 80C9F4B8 */ virtual ~daObjNagaisu_c();
    /* 80C9F5A8 */ int createHeap();
    /* 80C9F668 */ int create();
    /* 80C9F7A8 */ int Delete();
    /* 80C9F81C */ int draw();
    /* 80C9F8C4 */ int execute();
    /* 80C9F914 */ void init();
    /* 80C9F944 */ void setIsu();

    static const int REMOVE_ISU_IDX[];

    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ dCcD_Stts mCcStts;
    /* 0x5B4 */ daObjIsuChild_c mChild[60];
};

STATIC_ASSERT(sizeof(daObjNagaisu_c) == 0xb6e4);

#endif /* D_A_OBJ_NAGAISU_H */
