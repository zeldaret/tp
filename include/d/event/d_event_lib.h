#ifndef D_EVENT_D_EVENT_LIB_H
#define D_EVENT_D_EVENT_LIB_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

template <typename A0>
struct action_class {
    typedef BOOL (A0::*fptr)();
    fptr init;
    fptr execute;

    action_class(fptr pInit, fptr pExecute) {
        init = pInit;
        execute = pExecute;
    }

    fptr& getInit() { return init; }

    fptr& getExecute() { return execute; }
};

struct dEvLib_callback_c {
    /* 8004886C */ BOOL eventUpdate();
    /* 800488A4 */ BOOL setEvent(int, int, int);
    /* 80048940 */ void orderEvent(int, int, int);
    /* 80048970 */ BOOL setAction(action_class<dEvLib_callback_c>*);
    /* 800489A8 */ BOOL initAction();
    /* 800489F8 */ BOOL executeAction();
    /* 80048A50 */ BOOL initStart();
    /* 80048A70 */ BOOL executeStart();
    /* 80048B1C */ BOOL initRun();
    /* 80048B48 */ BOOL executeRun();

    virtual ~dEvLib_callback_c() {}
    virtual BOOL eventStart() { return TRUE; }
    virtual BOOL eventRun() { return TRUE; }
    virtual BOOL eventEnd() { return TRUE; }

    /* 0x4 */ fopAc_ac_c* mActor;
    /* 0x8 */ action_class<dEvLib_callback_c>* mAction;
    /* 0xC */ u16 _C;
};

#endif /* D_EVENT_D_EVENT_LIB_H */
