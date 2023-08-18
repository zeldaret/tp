#ifndef D_COM_D_COM_INF_ACTOR_H
#define D_COM_D_COM_INF_ACTOR_H


class dComIfGoat_info_c {
public:
    /* 0x0 */ int field_0x0;
};

class dComIfAc_info_c {
public:
    /* 0x0 */ int field_0x0;
    /* 0x4 */ bool mPause;
};

extern dComIfGoat_info_c g_dComIfGoat_gameInfo;
extern dComIfAc_info_c g_dComIfAc_gameInfo;

inline bool dComIfA_PauseCheck() {
    return g_dComIfAc_gameInfo.mPause;
}

#endif /* D_COM_D_COM_INF_ACTOR_H */
