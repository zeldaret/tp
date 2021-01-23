#ifndef M_DO_DVD_THREAD_H_
#define M_DO_DVD_THREAD_H_

#include "dolphin/types.h"

class mDoDvdThd_command_c {
public:
private:
};

class mDoDvdThd_callback_c {
public:
    mDoDvdThd_callback_c(void*(void*), void*);
    ~mDoDvdThd_callback_c();
    mDoDvdThd_command_c* create(void*(void*), void*);
    mDoDvdThd_command_c* execute();
};

#endif