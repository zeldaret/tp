#ifndef M_DO_DVD_THREAD_H_
#define M_DO_DVD_THREAD_H_

#include "dolphin/types.h"

class mDoDVDThd_command_c {
    public:
    
    private:
};

class mDoDVDThd_callback_c {
    public:
    mDoDVDThd_callback_c(void *(void*),void*);
    ~mDoDVDThd_callback_c();
    mDoDVDThd_command_c* create(void *(void*),void*);
    mDoDVDThd_command_c* execute();
};

#endif