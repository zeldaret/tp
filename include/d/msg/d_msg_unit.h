#ifndef D_MSG_D_MSG_UNIT_H
#define D_MSG_D_MSG_UNIT_H


class dMsgUnit_c {
public:
    /* 80238C94 */ dMsgUnit_c();
    /* 80238CEC */ void setTag(int, int, char*, bool);

    /* 80238CA4 */ virtual ~dMsgUnit_c();
};

extern dMsgUnit_c g_msg_unit;

inline void dMsgUnit_setTag(int param_0, int param_1, char* param_2) {
    g_msg_unit.setTag(param_0, param_1, param_2, true);
}

#endif /* D_MSG_D_MSG_UNIT_H */
