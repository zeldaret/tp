#ifndef D_A_OBJ_ZCLOTH_H
#define D_A_OBJ_ZCLOTH_H

#include "d/a/d_a_itembase.h"

class daObjZCloth_c : public daItemBase_c {
public:
    /* 80D3EE18 */ void initBaseMtx();
    /* 80D3EE54 */ void setBaseMtx();
    /* 80D3EEC0 */ int Create();
    /* 80D3EF0C */ int create();
    /* 80D3F1AC */ int execute();
    /* 80D3F1D0 */ int draw();
    /* 80D3F200 */ int _delete();
};  // Size: 0x92C

#endif /* D_A_OBJ_ZCLOTH_H */
