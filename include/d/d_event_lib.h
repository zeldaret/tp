#ifndef D_EVENT_D_EVENT_LIB_H
#define D_EVENT_D_EVENT_LIB_H

#include "dolphin/types.h"

class fopAc_ac_c;

template <typename A0>
struct action_class {
    typedef bool (A0::*fptr)();
    fptr init;
    fptr execute;

    action_class(fptr pInit, fptr pExecute) {
        init = pInit;
        execute = pExecute;
    }

    fptr& getInit() { return init; }

    fptr& getExecute() { return execute; }
};

class dEvLib_callback_c {
public:
    dEvLib_callback_c(fopAc_ac_c* param_0) {
        mActor = param_0;
        mAction = NULL;
    }

    /* 8004886C */ bool eventUpdate();
    /* 800488A4 */ bool setEvent(int, int, int);
    /* 80048940 */ void orderEvent(int, int, int);
    /* 80048970 */ bool setAction(action_class<dEvLib_callback_c>*);
    /* 800489A8 */ bool initAction();
    /* 800489F8 */ bool executeAction();
    /* 80048A50 */ bool initStart();
    /* 80048A70 */ bool executeStart();
    /* 80048B1C */ bool initRun();
    /* 80048B48 */ bool executeRun();

    virtual ~dEvLib_callback_c() {}
    virtual bool eventStart() { return true; }
    virtual bool eventRun() { return true; }
    virtual bool eventEnd() { return true; }

    /* 0x4 */ fopAc_ac_c* mActor;
    /* 0x8 */ action_class<dEvLib_callback_c>* mAction;
    /* 0xC */ u16 _C;
};

#endif /* D_EVENT_D_EVENT_LIB_H */
