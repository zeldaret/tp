#include "d/d_save/d_save/d_save.h"

class dComIfG_gameInfo{
   public:
    dSv_save_c save_file;
    u8 padding[0x1dc25]; //temp padding
};

extern dComIfG_gameInfo lbl_804061C0;