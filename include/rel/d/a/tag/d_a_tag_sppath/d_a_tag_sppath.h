#ifndef D_A_TAG_SPPATH_H
#define D_A_TAG_SPPATH_H

#include "f_op/f_op_actor.h"
#include "d/d_path.h"

class daTagSppath_c : public fopAc_ac_c {
public:
    /* 80D61C18 */ void create();
    /* 80D61EC4 */ ~daTagSppath_c();
    /* 80D62024 */ void getNearPathPos(cXyz*, dPath*);
    /* 80D629C0 */ void execute();
};

#endif /* D_A_TAG_SPPATH_H */
