#ifndef M_DO_DVD_THREAD_H_
#define M_DO_DVD_THREAD_H_

#include "dolphin/types.h"
#include "SComponent/c_node.h"

typedef void* mDoDvdThd_callback_fn(void*);

struct mDoDvdThd_command_c_inner {
    node_class node;
    bool field_0xc;
};
class mDoDvdThd_command_c : private mDoDvdThd_command_c_inner {
public:
    virtual ~mDoDvdThd_command_c();

    bool sync() { return field_0xc; }

    void destroy() {
        delete this;
    }
};

class mDoDvdThd_callback_c {
public:
    mDoDvdThd_callback_c(void*(void*), void*);
    ~mDoDvdThd_callback_c();
    static mDoDvdThd_command_c* create(mDoDvdThd_callback_fn callback, void*);
    mDoDvdThd_command_c* execute();
};

#endif