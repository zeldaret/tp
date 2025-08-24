/**
 * @file d_a_mant.cpp
 *
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_mant.h"
#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "d/actor/d_a_b_gnd.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"

/* 80862D40-80866D40 000020 4000+00 2/1 0/0 0/0 .data            l_Egnd_mantTEX */
#include "assets/l_Egnd_mantTEX.h"

/* 80866D40-8086AD40 004020 4000+00 3/3 0/0 0/0 .data            l_Egnd_mantTEX_U */
#include "assets/l_Egnd_mantTEX_U.h"

/* 8086AD40-8086ADA0 008020 0060+00 1/0 0/0 0/0 .data            l_Egnd_mantPAL */
#include "assets/l_Egnd_mantPAL.h"

/* 8086ADA0-8086B58C 008080 07EC+00 0/0 0/0 0/0 .data            l_pos */
static u32 l_pos[507] = {
    0x42480000, 0x3F5CFC93, 0xC365BD9C, 0x4226AAAA,
    0x3F5CFC93, 0xC365BD9C, 0x42055556, 0x3F5CFC93,
    0xC365BD9C, 0x41C80000, 0x3F5CFC93, 0xC365BD9C,
    0x41855556, 0x3F5CFC93, 0xC365BD9C, 0x41055556,
    0x3F5CFC93, 0xC365BD9C, 0x358637BD, 0x3F5CFC93,
    0xC365BD9C, 0xC1055554, 0x3F5CFC93, 0xC365BD9C,
    0xC1855554, 0x3F5CFC93, 0xC365BD9C, 0xC1C7FFFF,
    0x3F5CFC93, 0xC365BD9C, 0xC2055554, 0x3F5CFC93,
    0xC365BD9C, 0xC226AAAA, 0x3F5CFC93, 0xC365BD9C,
    0xC2480000, 0x3F5CFC93, 0xC365BD9C, 0x42480000,
    0x3F5CFC93, 0xC35292F0, 0x4226AAAA, 0x3F5CFC93,
    0xC35292F0, 0x42055556, 0x3F5CFC93, 0xC35292F0,
    0x41C80000, 0x3F5CFC93, 0xC35292F0, 0x41855556,
    0x3F5CFC93, 0xC35292F0, 0x41055556, 0x3F5CFC93,
    0xC35292F0, 0x358637BD, 0x3F5CFC93, 0xC35292F0,
    0xC1055554, 0x3F5CFC93, 0xC35292F0, 0xC1855554,
    0x3F5CFC93, 0xC35292F0, 0xC1C7FFFF, 0x3F5CFC93,
    0xC35292F0, 0xC2055554, 0x3F5CFC93, 0xC35292F0,
    0xC226AAAA, 0x3F5CFC93, 0xC35292F0, 0xC2480000,
    0x3F5CFC93, 0xC35292F0, 0x42480000, 0x3F5CFC93,
    0xC33F6846, 0x4226AAAA, 0x3F5CFC93, 0xC33F6846,
    0x42055556, 0x3F5CFC93, 0xC33F6846, 0x41C80000,
    0x3F5CFC93, 0xC33F6846, 0x41855556, 0x3F5CFC93,
    0xC33F6846, 0x41055556, 0x3F5CFC93, 0xC33F6846,
    0x358637BD, 0x3F5CFC93, 0xC33F6846, 0xC1055554,
    0x3F5CFC93, 0xC33F6846, 0xC1855554, 0x3F5CFC93,
    0xC33F6846, 0xC1C7FFFF, 0x3F5CFC93, 0xC33F6846,
    0xC2055554, 0x3F5CFC93, 0xC33F6846, 0xC226AAAA,
    0x3F5CFC93, 0xC33F6846, 0xC2480000, 0x3F5CFC93,
    0xC33F6846, 0x42480000, 0x3F5CFC93, 0xC32C3D9C,
    0x4226AAAA, 0x3F5CFC93, 0xC32C3D9C, 0x42055556,
    0x3F5CFC93, 0xC32C3D9C, 0x41C80000, 0x3F5CFC93,
    0xC32C3D9C, 0x41855556, 0x3F5CFC93, 0xC32C3D9C,
    0x41055556, 0x3F5CFC93, 0xC32C3D9C, 0x358637BD,
    0x3F5CFC93, 0xC32C3D9C, 0xC1055554, 0x3F5CFC93,
    0xC32C3D9C, 0xC1855554, 0x3F5CFC93, 0xC32C3D9C,
    0xC1C7FFFF, 0x3F5CFC93, 0xC32C3D9C, 0xC2055554,
    0x3F5CFC93, 0xC32C3D9C, 0xC226AAAA, 0x3F5CFC93,
    0xC32C3D9C, 0xC2480000, 0x3F5CFC93, 0xC32C3D9C,
    0x42480000, 0x3F5CFC93, 0xC31912F1, 0x4226AAAA,
    0x3F5CFC93, 0xC31912F1, 0x42055556, 0x3F5CFC93,
    0xC31912F1, 0x41C80000, 0x3F5CFC93, 0xC31912F1,
    0x41855556, 0x3F5CFC93, 0xC31912F1, 0x41055556,
    0x3F5CFC93, 0xC31912F1, 0x358637BD, 0x3F5CFC93,
    0xC31912F1, 0xC1055554, 0x3F5CFC93, 0xC31912F1,
    0xC1855554, 0x3F5CFC93, 0xC31912F1, 0xC1C7FFFF,
    0x3F5CFC93, 0xC31912F1, 0xC2055554, 0x3F5CFC93,
    0xC31912F1, 0xC226AAAA, 0x3F5CFC93, 0xC31912F1,
    0xC2480000, 0x3F5CFC93, 0xC31912F1, 0x42480000,
    0x3F5CFC93, 0xC305E846, 0x4226AAAA, 0x3F5CFC93,
    0xC305E846, 0x42055556, 0x3F5CFC93, 0xC305E846,
    0x41C80000, 0x3F5CFC93, 0xC305E846, 0x41855556,
    0x3F5CFC93, 0xC305E846, 0x41055556, 0x3F5CFC93,
    0xC305E846, 0x358637BD, 0x3F5CFC93, 0xC305E846,
    0xC1055554, 0x3F5CFC93, 0xC305E846, 0xC1855554,
    0x3F5CFC93, 0xC305E846, 0xC1C7FFFF, 0x3F5CFC93,
    0xC305E846, 0xC2055554, 0x3F5CFC93, 0xC305E846,
    0xC226AAAA, 0x3F5CFC93, 0xC305E846, 0xC2480000,
    0x3F5CFC93, 0xC305E846, 0x42480000, 0x3F5CFC93,
    0xC2E57B38, 0x4226AAAA, 0x3F5CFC93, 0xC2E57B38,
    0x42055556, 0x3F5CFC93, 0xC2E57B38, 0x41C80000,
    0x3F5CFC93, 0xC2E57B38, 0x41855556, 0x3F5CFC93,
    0xC2E57B38, 0x41055556, 0x3F5CFC93, 0xC2E57B38,
    0x358637BD, 0x3F5CFC93, 0xC2E57B38, 0xC1055554,
    0x3F5CFC93, 0xC2E57B38, 0xC1855554, 0x3F5CFC93,
    0xC2E57B38, 0xC1C7FFFF, 0x3F5CFC93, 0xC2E57B38,
    0xC2055554, 0x3F5CFC93, 0xC2E57B38, 0xC226AAAA,
    0x3F5CFC93, 0xC2E57B38, 0xC2480000, 0x3F5CFC93,
    0xC2E57B38, 0x42480000, 0x3F5CFC93, 0xC2BF25E2,
    0x4226AAAA, 0x3F5CFC93, 0xC2BF25E2, 0x42055556,
    0x3F5CFC93, 0xC2BF25E2, 0x41C80000, 0x3F5CFC93,
    0xC2BF25E2, 0x41855556, 0x3F5CFC93, 0xC2BF25E2,
    0x41055556, 0x3F5CFC93, 0xC2BF25E2, 0x358637BD,
    0x3F5CFC93, 0xC2BF25E2, 0xC1055554, 0x3F5CFC93,
    0xC2BF25E2, 0xC1855554, 0x3F5CFC93, 0xC2BF25E2,
    0xC1C7FFFF, 0x3F5CFC93, 0xC2BF25E2, 0xC2055554,
    0x3F5CFC93, 0xC2BF25E2, 0xC226AAAA, 0x3F5CFC93,
    0xC2BF25E2, 0xC2480000, 0x3F5CFC93, 0xC2BF25E2,
    0x42480000, 0x3F5CFC93, 0xC298D08D, 0x4226AAAA,
    0x3F5CFC93, 0xC298D08D, 0x42055556, 0x3F5CFC93,
    0xC298D08D, 0x41C80000, 0x3F5CFC93, 0xC298D08D,
    0x41855556, 0x3F5CFC93, 0xC298D08D, 0x41055556,
    0x3F5CFC93, 0xC298D08D, 0x358637BD, 0x3F5CFC93,
    0xC298D08D, 0xC1055554, 0x3F5CFC93, 0xC298D08D,
    0xC1855554, 0x3F5CFC93, 0xC298D08D, 0xC1C7FFFF,
    0x3F5CFC93, 0xC298D08D, 0xC2055554, 0x3F5CFC93,
    0xC298D08D, 0xC226AAAA, 0x3F5CFC93, 0xC298D08D,
    0xC2480000, 0x3F5CFC93, 0xC298D08D, 0x42480000,
    0x3F5CFC93, 0xC264F66F, 0x4226AAAA, 0x3F5CFC93,
    0xC264F66F, 0x42055556, 0x3F5CFC93, 0xC264F66F,
    0x41C80000, 0x3F5CFC93, 0xC264F66F, 0x41855556,
    0x3F5CFC93, 0xC264F66F, 0x41055556, 0x3F5CFC93,
    0xC264F66F, 0x358637BD, 0x3F5CFC93, 0xC264F66F,
    0xC1055554, 0x3F5CFC93, 0xC264F66F, 0xC1855554,
    0x3F5CFC93, 0xC264F66F, 0xC1C7FFFF, 0x3F5CFC93,
    0xC264F66F, 0xC2055554, 0x3F5CFC93, 0xC264F66F,
    0xC226AAAA, 0x3F5CFC93, 0xC264F66F, 0xC2480000,
    0x3F5CFC93, 0xC264F66F, 0x42480000, 0x3F5CFC93,
    0xC2184BC4, 0x4226AAAA, 0x3F5CFC93, 0xC2184BC4,
    0x42055556, 0x3F5CFC93, 0xC2184BC4, 0x41C80000,
    0x3F5CFC93, 0xC2184BC4, 0x41855556, 0x3F5CFC93,
    0xC2184BC4, 0x41055556, 0x3F5CFC93, 0xC2184BC4,
    0x358637BD, 0x3F5CFC93, 0xC2184BC4, 0xC1055554,
    0x3F5CFC93, 0xC2184BC4, 0xC1855554, 0x3F5CFC93,
    0xC2184BC4, 0xC1C7FFFF, 0x3F5CFC93, 0xC2184BC4,
    0xC2055554, 0x3F5CFC93, 0xC2184BC4, 0xC226AAAA,
    0x3F5CFC93, 0xC2184BC4, 0xC2480000, 0x3F5CFC93,
    0xC2184BC4, 0x42480000, 0x3F5CFC93, 0xC1974231,
    0x4226AAAA, 0x3F5CFC93, 0xC1974231, 0x42055556,
    0x3F5CFC93, 0xC1974231, 0x41C80000, 0x3F5CFC93,
    0xC1974231, 0x41855556, 0x3F5CFC93, 0xC1974231,
    0x41055556, 0x3F5CFC93, 0xC1974231, 0x358637BD,
    0x3F5CFC93, 0xC1974231, 0xC1055554, 0x3F5CFC93,
    0xC1974231, 0xC1855554, 0x3F5CFC93, 0xC1974231,
    0xC1C7FFFF, 0x3F5CFC93, 0xC1974231, 0xC2055554,
    0x3F5CFC93, 0xC1974231, 0xC226AAAA, 0x3F5CFC93,
    0xC1974231, 0xC2480000, 0x3F5CFC93, 0xC1974231,
    0x42480000, 0x3F5CFC93, 0x3E84C964, 0x4226AAAA,
    0x3F5CFC93, 0x3E84C964, 0x42055556, 0x3F5CFC93,
    0x3E84C964, 0x41C80000, 0x3F5CFC93, 0x3E84C964,
    0x41855556, 0x3F5CFC93, 0x3E84C964, 0x41055556,
    0x3F5CFC93, 0x3E84C964, 0x358637BD, 0x3F5CFC93,
    0x3E84C964, 0xC1055554, 0x3F5CFC93, 0x3E84C964,
    0xC1855554, 0x3F5CFC93, 0x3E84C964, 0xC1C7FFFF,
    0x3F5CFC93, 0x3E84C964, 0xC2055554, 0x3F5CFC93,
    0x3E84C964, 0xC226AAAA, 0x3F5CFC93, 0x3E84C964,
    0xC2480000, 0x3F5CFC93, 0x3E84C964,
};

/* 8086B5EC-8086B5F7 .data          l_normal */
static u32 l_normal[3] = {
    0x00000000, 0x3F800000, 0x00000000,
};

// /* 8086BF70-8086BF74 000000 0004+00 3/3 0/0 0/0 .bss             None */
// static u8 data_8086BF70[4];

/* 8086B598-8086BAE0 008878 0548+00 0/0 0/0 0/0 .data            l_texCoord */
static u32 l_texCoord[338] = {
    0x00000000, 0x3F6AAAB0, 0x3DAAAA7E, 0x3F6AAAB0,
    0x3DAAAA7E, 0x3F800000, 0x00000000, 0x3F800000,
    0x3E2AAAC1, 0x3F6AAAB0, 0x3E2AAAC1, 0x3F800000,
    0x3E800000, 0x3F6AAAB0, 0x3E800000, 0x3F800000,
    0x3EAAAA9F, 0x3F6AAAB0, 0x3EAAAA9F, 0x3F800000,
    0x3ED55561, 0x3F6AAAB0, 0x3ED55561, 0x3F800000,
    0x3F000000, 0x3F6AAAB0, 0x3F000000, 0x3F800000,
    0x3F155550, 0x3F6AAAB0, 0x3F155550, 0x3F800000,
    0x3F2AAAB0, 0x3F6AAAB0, 0x3F2AAAB0, 0x3F800000,
    0x3F400000, 0x3F6AAAB0, 0x3F400000, 0x3F800000,
    0x3F555550, 0x3F6AAAB0, 0x3F555550, 0x3F800000,
    0x3F6AAAB0, 0x3F6AAAB0, 0x3F6AAAB0, 0x3F800000,
    0x3F800000, 0x3F6AAAB0, 0x3F800000, 0x3F800000,
    0x00000000, 0x3F555550, 0x3DAAAA7E, 0x3F555550,
    0x3E2AAAC1, 0x3F555550, 0x3E800000, 0x3F555550,
    0x3EAAAA9F, 0x3F555550, 0x3ED55561, 0x3F555550,
    0x3F000000, 0x3F555550, 0x3F155550, 0x3F555550,
    0x3F2AAAB0, 0x3F555550, 0x3F400000, 0x3F555550,
    0x3F555550, 0x3F555550, 0x3F6AAAB0, 0x3F555550,
    0x3F800000, 0x3F555550, 0x00000000, 0x3F400000,
    0x3DAAAA7E, 0x3F400000, 0x3E2AAAC1, 0x3F400000,
    0x3E800000, 0x3F400000, 0x3EAAAA9F, 0x3F400000,
    0x3ED55561, 0x3F400000, 0x3F000000, 0x3F400000,
    0x3F155550, 0x3F400000, 0x3F2AAAB0, 0x3F400000,
    0x3F400000, 0x3F400000, 0x3F555550, 0x3F400000,
    0x3F6AAAB0, 0x3F400000, 0x3F800000, 0x3F400000,
    0x00000000, 0x3F2AAAB0, 0x3DAAAA7E, 0x3F2AAAB0,
    0x3E2AAAC1, 0x3F2AAAB0, 0x3E800000, 0x3F2AAAB0,
    0x3EAAAA9F, 0x3F2AAAB0, 0x3ED55561, 0x3F2AAAB0,
    0x3F000000, 0x3F2AAAB0, 0x3F155550, 0x3F2AAAB0,
    0x3F2AAAB0, 0x3F2AAAB0, 0x3F400000, 0x3F2AAAB0,
    0x3F555550, 0x3F2AAAB0, 0x3F6AAAB0, 0x3F2AAAB0,
    0x3F800000, 0x3F2AAAB0, 0x00000000, 0x3F155550,
    0x3DAAAA7E, 0x3F155550, 0x3E2AAAC1, 0x3F155550,
    0x3E800000, 0x3F155550, 0x3EAAAA9F, 0x3F155550,
    0x3ED55561, 0x3F155550, 0x3F000000, 0x3F155550,
    0x3F155550, 0x3F155550, 0x3F2AAAB0, 0x3F155550,
    0x3F400000, 0x3F155550, 0x3F555550, 0x3F155550,
    0x3F6AAAB0, 0x3F155550, 0x3F800000, 0x3F155550,
    0x00000000, 0x3F000000, 0x3DAAAA7E, 0x3F000000,
    0x3E2AAAC1, 0x3F000000, 0x3E800000, 0x3F000000,
    0x3EAAAA9F, 0x3F000000, 0x3ED55561, 0x3F000000,
    0x3F000000, 0x3F000000, 0x3F155550, 0x3F000000,
    0x3F2AAAB0, 0x3F000000, 0x3F400000, 0x3F000000,
    0x3F555550, 0x3F000000, 0x3F6AAAB0, 0x3F000000,
    0x3F800000, 0x3F000000, 0x00000000, 0x3ED55561,
    0x3DAAAA7E, 0x3ED55561, 0x3E2AAAC1, 0x3ED55561,
    0x3E800000, 0x3ED55561, 0x3EAAAA9F, 0x3ED55561,
    0x3ED55561, 0x3ED55561, 0x3F000000, 0x3ED55561,
    0x3F155550, 0x3ED55561, 0x3F2AAAB0, 0x3ED55561,
    0x3F400000, 0x3ED55561, 0x3F555550, 0x3ED55561,
    0x3F6AAAB0, 0x3ED55561, 0x3F800000, 0x3ED55561,
    0x00000000, 0x3EAAAA9F, 0x3DAAAA7E, 0x3EAAAA9F,
    0x3E2AAAC1, 0x3EAAAA9F, 0x3E800000, 0x3EAAAA9F,
    0x3EAAAA9F, 0x3EAAAA9F, 0x3ED55561, 0x3EAAAA9F,
    0x3F000000, 0x3EAAAA9F, 0x3F155550, 0x3EAAAA9F,
    0x3F2AAAB0, 0x3EAAAA9F, 0x3F400000, 0x3EAAAA9F,
    0x3F555550, 0x3EAAAA9F, 0x3F6AAAB0, 0x3EAAAA9F,
    0x3F800000, 0x3EAAAA9F, 0x00000000, 0x3E800000,
    0x3DAAAA7E, 0x3E800000, 0x3E2AAAC1, 0x3E800000,
    0x3E800000, 0x3E800000, 0x3EAAAA9F, 0x3E800000,
    0x3ED55561, 0x3E800000, 0x3F000000, 0x3E800000,
    0x3F155550, 0x3E800000, 0x3F2AAAB0, 0x3E800000,
    0x3F400000, 0x3E800000, 0x3F555550, 0x3E800000,
    0x3F6AAAB0, 0x3E800000, 0x3F800000, 0x3E800000,
    0x00000000, 0x3E2AAAC1, 0x3DAAAA7E, 0x3E2AAAC1,
    0x3E2AAAC1, 0x3E2AAAC1, 0x3E800000, 0x3E2AAAC1,
    0x3EAAAA9F, 0x3E2AAAC1, 0x3ED55561, 0x3E2AAAC1,
    0x3F000000, 0x3E2AAAC1, 0x3F155550, 0x3E2AAAC1,
    0x3F2AAAB0, 0x3E2AAAC1, 0x3F400000, 0x3E2AAAC1,
    0x3F555550, 0x3E2AAAC1, 0x3F6AAAB0, 0x3E2AAAC1,
    0x3F800000, 0x3E2AAAC1, 0x00000000, 0x3DAAAA7E,
    0x3DAAAA7E, 0x3DAAAA7E, 0x3E2AAAC1, 0x3DAAAA7E,
    0x3E800000, 0x3DAAAA7E, 0x3EAAAA9F, 0x3DAAAA7E,
    0x3ED55561, 0x3DAAAA7E, 0x3F000000, 0x3DAAAA7E,
    0x3F155550, 0x3DAAAA7E, 0x3F2AAAB0, 0x3DAAAA7E,
    0x3F400000, 0x3DAAAA7E, 0x3F555550, 0x3DAAAA7E,
    0x3F6AAAB0, 0x3DAAAA7E, 0x3F800000, 0x3DAAAA7E,
    0x00000000, 0x00000000, 0x3DAAAA7E, 0x00000000,
    0x3E2AAAC1, 0x00000000, 0x3E800000, 0x00000000,
    0x3EAAAA9F, 0x00000000, 0x3ED55561, 0x00000000,
    0x3F000000, 0x00000000, 0x3F155550, 0x00000000,
    0x3F2AAAB0, 0x00000000, 0x3F400000, 0x00000000,
    0x3F555550, 0x00000000, 0x3F6AAAB0, 0x00000000,
    0x3F800000, 0x00000000,
};

/* 8086BAE0-8086BECC 008DC0 03EC+00 0/0 0/0 0/0 .data            l_Egnd_mantDL */
#include "assets/l_Egnd_mantDL.h"

/* 8086BECC-8086BED0 -00001 0004+00 0/0 0/0 0/0 .data            pal_d */
static void* pal_d = (void*)&l_Egnd_mantPAL;

/* 8086BED0-8086BED8 -00001 0008+00 0/0 0/0 0/0 .data            tex_d */
static void* tex_d[2] = {
    (void*)&l_Egnd_mantTEX,
    (void*)&l_Egnd_mantTEX_U,
};

static char lbl_277_bss_0;

/* 80861298-808616B8 000078 0420+00 1/0 0/0 0/0 .text            draw__15daMant_packet_cFv */
// NONMATCHING - missing some weird stack duplication
void daMant_packet_c::draw() {
    void* image = tex_d[0];
    void* lut = pal_d;

    j3dSys.reinitGX();
    GXSetNumIndStages(0);
    dKy_setLight_again();
    dKy_GxFog_tevstr_set(this->mTevStr);
    GXClearVtxDesc();

    GXSetVtxDesc(GX_VA_POS, GX_INDEX8);
    GXSetVtxDesc(GX_VA_NRM, GX_INDEX8);
    GXSetVtxDesc(GX_VA_TEX0, GX_INDEX8);

    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_CLR_RGB, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_F32, 0);

    GXSetArray(GX_VA_POS, this->getPos(), 12);
    GXSetArray(GX_VA_NRM, this->getNrm(), 12);
    GXSetArray(GX_VA_TEX0, &l_texCoord, 8);

    GXSetZCompLoc(0);
    GXSetZMode(GX_ENABLE, GX_LEQUAL, GX_ENABLE);
    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0, GX_ENABLE, GX_SRC_REG, GX_SRC_REG, 0xff, GX_DF_CLAMP, GX_AF_SPOT);
    GXSetNumTexGens(1);
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 0x3c);
    GXSetNumTevStages(1);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);

    dKy_Global_amb_set(this->mTevStr);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);

    GXColor local_84 = {1, 0, 0, 0};
    GXSetTevColor(GX_TEVREG0, local_84);
    GXColor local_8c = {1, 0, 0, 0};
    GXSetTevKColor(GX_KCOLOR0, local_8c);

    GXSetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_KONST, GX_CC_TEXC, GX_CC_RASC, GX_CC_C0);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_4, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_KONST, GX_CA_TEXA, GX_CA_ZERO);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_K3_A);
    GXSetAlphaCompare(GX_GREATER, 0, GX_AOP_OR, GX_GREATER, 0);

    GXTlutObj GStack_80;
    GXInitTlutObj(&GStack_80, lut, GX_TL_RGB5A3, 0x100);

    GXTexObj GStack_74;
    GXInitTexObjCI(&GStack_74, image, 0x80, 0x80, GX_TF_C8, GX_CLAMP, GX_CLAMP, 0, 0);
    GXInitTexObjLOD(&GStack_74, GX_LINEAR, GX_LINEAR, 0.0, 0.0, 0.0, 0, 0, GX_ANISO_1);

    GXLoadTlut(&GStack_80, 0);
    GXLoadTexObj(&GStack_74, GX_TEXMAP0);

    GXSetCullMode(GX_CULL_BACK);

    GXLoadPosMtxImm(this->mMtx, GX_PNMTX0);
    Mtx MStack_54;
    cMtx_inverseTranspose(this->mMtx, MStack_54);

    GXLoadNrmMtxImm(MStack_54, GX_PNMTX0);
    GXCallDisplayList(l_Egnd_mantDL, 0x3e0);

    GXInitTexObjCI(&GStack_74, l_Egnd_mantTEX_U, 0x80, 0x80, GX_TF_C8, GX_CLAMP, GX_CLAMP, 0, 0);
    GXInitTexObjLOD(&GStack_74, GX_LINEAR, GX_LINEAR, 0.0, 0.0, 0.0, 0, 0, GX_ANISO_1);
    GXLoadTexObj(&GStack_74, GX_TEXMAP0);

    GXColor local_94 = {0, 0, 0, 0};
    GXSetTevColor(GX_TEVREG0, local_94);
    GXColor local_9c = {0, 0, 0, 0};
    GXSetTevKColor(GX_KCOLOR0, local_9c);

    GXSetCullMode(GX_CULL_FRONT);
    GXLoadPosMtxImm(this->mMtx2, GX_PNMTX0);
    cMtx_inverseTranspose(this->mMtx2, MStack_54);

    GXLoadNrmMtxImm(MStack_54, GX_PNMTX0);
    GXCallDisplayList(l_Egnd_mantDL, 0x3e0);

    this->field_0x74 = lbl_277_bss_0 & 1;
    J3DShape::resetVcdVatCache();
}

/* 808616B8-8086176C 000498 00B4+00 1/0 0/0 0/0 .text            daMant_Draw__FP10mant_class */
static int daMant_Draw(mant_class* i_this) {
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);

    MtxTrans(0.0f, 0.0f, 0.0f, 0.0f);

    cMtx_concat(j3dSys.getViewMtx(), *calc_mtx, i_this->field_0x0570.getMtx());

    cMtx_concat(j3dSys.getViewMtx(), *calc_mtx, i_this->field_0x0570.getMtx2());

    i_this->field_0x0570.setTevStr(&i_this->tevStr);

    j3dSys.getDrawBuffer(0)->entryImm(&i_this->field_0x0570, 0);

    return 1;
}

/* 8086176C-80861F60 00054C 07F4+00 1/1 0/0 0/0 .text joint_control__FP10mant_classP8mant_j_siff */
// NONMATCHING - regalloc
static void joint_control(mant_class* i_this, mant_j_s* param_2, int param_3, f32 param_4, f32 param_5) {
    static f32 d_p[12] = {
        1.4000001f, 0.6f, 0.35f, 0.3f, 0.3f, 0.3f, 0.25f, 0.2f, 0.2f, 0.2f, 0.15f, 0.1f
    };

    cXyz local_134, local_140, local_14c, local_158, local_164;
    BOOL bVar2 = FALSE;
    f32 dVar14, dVar16, dVar17, dVar18, dVar19, dVar20;
    f32 fVar1;
    b_gnd_class* gndActor = (b_gnd_class*)fopAcM_SearchByID(i_this->parentActorID);

    if (gndActor->mDrawHorse != 0) {
        bVar2 = TRUE;
        local_158 = gndActor->field_0x1fb8;
    } else if (i_this->field_0x3966 != 0) {
        local_158 = i_this->field_0x3928[0] + ((i_this->field_0x3928[1] - i_this->field_0x3928[0]) * 0.5f);
        local_158.y += -60.0f;
    }

    cXyz* vec_p = param_2->field_0x0;
    cXyz* pcVar9 = param_2->field_0x9c;
    dBgS_GndChk(dStack_f8);
    local_164 = param_2->field_0x0[0];
    local_164.y += 50.0f;

    dStack_f8.SetPos((Vec*)&local_164);
    dVar17 = dComIfG_Bgsp().GroundCross(&dStack_f8) + 3.0f;

    if (dVar17 - param_2->field_0x0[0].y > 50.0f) {
        dVar17 = param_2->field_0x0[0].y;
    }

    cXyz cStack_170, local_17c;
    cXyz local_188(0.0f, 0.0f, 0.0f);
    cXyz local_194(0.0f, 0.0f, 0.0f);
    cXyz local_1a0(0.0f, 0.0f, 0.0f);

    cMtx_YrotS(*calc_mtx, param_2->field_0x013a);
    local_134.x = 0.0f;
    local_134.y = 0.0f;
    local_134.z = i_this->field_0x3954 * (cM_ssin(param_3 * 23000) * 0.05f + 1.0f);
    MtxPosition(&local_134, &cStack_170);

    cXyz local_1ac;

    s16 sVar3 = param_3 + -6;
    if (sVar3 < 0) {
        sVar3 *= -1;
    }

    sVar3 *= -4000;
    local_134.x = 0.0f;
    local_134.y = 0.0f;
    local_134.z = i_this->field_0x394c;
    local_134.z *= i_this->scale.y;

    for (int i = 0; i < 13; i++, vec_p++, pcVar9++) {
        if (0 < i) {
            dVar16 = i_this->field_0x3950;

            local_17c = cStack_170 * d_p[i - 1];

            dVar18 = i_this->field_0x3958;
            dVar18 *= 1.0f - i * 0.07f;

            local_1ac.zero();


            // (1.0f / 100.0f)
            if (param_4 > 0.01f) {
                dVar16 = 0.0f;
                f32 dVar14 = param_4 * (i * 0.2f + 1.0f);
                cMtx_YrotS(*calc_mtx, param_2->field_0x013a);
                cMtx_XrotM(*calc_mtx, param_2->field_0x0138);

                local_140.x = (dVar14 * 2.0f) * cM_ssin(i_this->field_0x25a0 * 0x1000 + (i * -7500) + sVar3);
                local_140.y = (dVar14 * 5.0f) * cM_ssin(i_this->field_0x25a0 * 0x1800 + (i * -7000) + sVar3);
                local_140.z = -15.0f;
                MtxPosition(&local_140, &local_1ac);
            }

            if (param_5 > 0.01f) {
                dVar14 = param_5 * (i * 0.2f + 1.0f);
                cMtx_YrotS(*calc_mtx, param_2->field_0x013a + -6000);
                cMtx_XrotM(*calc_mtx, -5000);

                local_140.x = (dVar14 * 2.0f) * cM_ssin(i_this->field_0x25a0 * 0x448 + (i * -7000) + sVar3);
                local_140.y = (dVar14 * 6.0f) * cM_ssin(i_this->field_0x25a0 * 0xc48 + (i * -7500) + sVar3);
                local_140.z = param_5 * -15.0f;
                MtxPosition(&local_140, &local_14c);
                local_1ac += local_14c;
            }

            if (i_this->field_0x3960 > 0.1f) {
                local_1ac.y = i_this->field_0x3960 * cM_ssin(i_this->field_0x25a0 * 0x1100 + (i * -7000) + sVar3);
            }

            dVar20 = (vec_p->x - vec_p[-1].x) + pcVar9->x + local_17c.x + local_1ac.x;
            dVar19 = (vec_p->z - vec_p[-1].z) + pcVar9->z + local_17c.z + local_1ac.z;
            dVar14 = local_1ac.y + (vec_p->y + pcVar9->y + dVar18);

            if (bVar2) {
                dVar18 = dVar17;
                local_14c = local_158 - *vec_p;
                fVar1 = JMAFastSqrt(local_14c.x * local_14c.x + local_14c.z * local_14c.z);
                if (fVar1 < 85.0f) {
                    dVar18 = local_158.y + 1.0f * JMAFastSqrt(7225.0f - fVar1 * fVar1);
                }

                if (dVar14 < dVar18) {
                    dVar14 = dVar18;
                }
            } else if (i_this->field_0x3966 != 0) {
                dVar18 = dVar17;
                local_14c = local_158 - *vec_p;
                fVar1 = JMAFastSqrt(local_14c.x * local_14c.x + local_14c.z * local_14c.z);

                if (fVar1 < 85.0f) {
                    dVar18 = local_158.y + JMAFastSqrt(7225.0f - fVar1 * fVar1);
                }

                if (dVar14 < dVar18) {
                    dVar14 = dVar18;
                }
            } else {
                if (dVar14 < dVar17) {
                    dVar14 = dVar17;
                }
            }

            dVar14 -= vec_p[-1].y;
            s16 sVar4 = -cM_atan2s(dVar14, dVar19);
            s16 sVar5 = (s16)cM_atan2s(dVar20, JMAFastSqrt(dVar14 * dVar14 + dVar19 * dVar19));

            cMtx_XrotS(*calc_mtx, sVar4);
            cMtx_YrotM(*calc_mtx, sVar5);
            MtxPosition(&local_134, &local_14c);

            *pcVar9 = *vec_p;

            vec_p->x = vec_p[-1].x + local_14c.x;
            vec_p->y = vec_p[-1].y + local_14c.y;
            vec_p->z = vec_p[-1].z + local_14c.z;

            pcVar9->x = dVar16 * (vec_p->x - pcVar9->x);
            pcVar9->y = dVar16 * (vec_p->y - pcVar9->y);
            pcVar9->z = dVar16 * (vec_p->z - pcVar9->z);
        }
    }
}

/* 80861F9C-80862424 000D7C 0488+00 1/1 0/0 0/0 .text            mant_v_calc__FP10mant_class */
static void mant_v_calc(mant_class* i_this) {
    cXyz local_e4, cStack_f0, local_fc, local_108;
    f32 dVar16, dVar15, dVar14, uVar15;
    csXyz local_134(0, 0, 0);
    mant_j_s* mantJS;

    local_fc = i_this->field_0x3928[0] - i_this->field_0x3928[1];
    local_134.y = cM_atan2s(local_fc.x, local_fc.z) + 0x4000;

    mantJS = i_this->field_0x25a8;

    local_e4.x = 0.0f;

    dVar16 = local_fc.x / 12.0f;
    dVar15 = local_fc.y / 12.0f;
    dVar14 = local_fc.z / 12.0f;

    local_108 = (i_this->current.pos - i_this->field_0x3940) * 0.9f;

    if (local_108.abs() < 10.0f) {
        uVar15 = 0.0f;
    } else {
        local_134.y = cM_atan2s(local_108.x, local_108.z);
        local_134.x = -cM_atan2s(local_108.y, JMAFastSqrt(local_108.x * local_108.x + local_108.z * local_108.z));

        if (i_this->field_0x3964 != 0) {
            uVar15 = 4.0f;
            i_this->field_0x3964 = 0;
        } else {
            uVar15 = 1.0f;
        }
    }

    f32 uVar14 = 0.0f;
    if (i_this->field_0x3965 == 0) {
        if (i_this->field_0x3969 == 1) {
            uVar14 = (1.0f / 5.0f);
        } else if (i_this->field_0x3969 == 2) {
            uVar14 = 0.6f;
        } else if (i_this->field_0x3969 == 3) {
            uVar14 = (7.0f / 100.0f);
        }
    }

    for (int i = 0; i < 13; i++, mantJS++) {
        i_this->field_0x25a8[i].field_0x0[0].x = i_this->field_0x3928[1].x + (dVar16 * i);
        i_this->field_0x25a8[i].field_0x0[0].y = i_this->field_0x3928[1].y + (dVar15 * i);
        i_this->field_0x25a8[i].field_0x0[0].z = i_this->field_0x3928[1].z + (dVar14 * i);

        cMtx_YrotS(*calc_mtx, local_134.y);

        f32 temp = cM_fsin(i * 0.2617994f);
        local_e4.y = temp * -10.0f;
        local_e4.z = temp * -20.0f;

        MtxPosition(&local_e4, &cStack_f0);

        i_this->field_0x25a8[i].field_0x0[0] += cStack_f0;

        i_this->field_0x25a8[i].field_0x0138 = local_134.x;
        i_this->field_0x25a8[i].field_0x013a = local_134.y + (i + -6) * 0x5dc;

        for (int j = 1; j < 13; j++) {
            i_this->field_0x25a8[i].field_0x0[j].x += local_108.x;
            i_this->field_0x25a8[i].field_0x0[j].z += local_108.z;
        }

        joint_control(i_this, mantJS, i, uVar15, uVar14);
    }
}

/* 80862424-808624E8 001204 00C4+00 1/1 0/0 0/0 .text            mant_move__FP10mant_class */
static void mant_move(mant_class* i_this) {
    u8 uVar1 = i_this->field_0x0570.field_0x74;
    cXyz* pcVar5 = i_this->field_0x0570.getPos();
    mant_v_calc(i_this);
    for (int i = 0; i < 13; i++) {
        for (int j = 0; j < 13; j++) {
            pcVar5[i + j * 13] = i_this->field_0x25a8[i].field_0x0[12 - j];
        }
    }

    DCStoreRangeNoSync(i_this->field_0x0570.getPos(), 0x7ec);
}

/* 8086BF74-8086BF78 000004 0004+00 1/1 0/0 0/0 .bss             mant_cut_type */
static int mant_cut_type;

/* 808624E8-80862908 0012C8 0420+00 2/1 0/0 0/0 .text            daMant_Execute__FP10mant_class */
static int daMant_Execute(mant_class* i_this) {
    f32 var_f31, var_f30;
    int iVar8, unaff_r29, iVar2, uVar1, uVar4;

    i_this->field_0x25a0++;
    lbl_277_bss_0++;

    if (i_this->field_0x399e != 0) {
        i_this->field_0x399e--;
    }

    b_gnd_class* gndActor = (b_gnd_class*)fopAcM_SearchByID(i_this->parentActorID);

    if (gndActor && gndActor->mDrawHorse != 0) {
        i_this->field_0x394c = 21.0f;
        i_this->field_0x3950 = 0.75f;
        i_this->field_0x3958 = -5.0f;
        i_this->field_0x3954 = -3.0f;
    } else {
        i_this->field_0x394c = 25.0f;
        i_this->field_0x3950 = 0.55f + i_this->field_0x395c * 0.2f;
        i_this->field_0x3958 = -20.0f + i_this->field_0x395c * 25.0f;
        i_this->field_0x3954 = -13.0f - i_this->field_0x395c * 5.0f;
        cLib_addCalc0(&i_this->field_0x395c, 1.0f, 0.05f);
        cLib_addCalc0(&i_this->field_0x3960, 1.0f, 0.3f);
    }

    if (i_this->field_0x3965 != 0) {
        i_this->field_0x3954 = 0.0f;
        i_this->field_0x3958 = -10.0f;
    }

    mant_move(i_this);

    i_this->field_0x3965 = 0;
    i_this->field_0x3966 = 0;

    i_this->field_0x3940 = i_this->current.pos;

    iVar8 = 0;

    if (i_this->field_0x3967 != 0) {
        mant_cut_type = i_this->field_0x3967;

        if (i_this->field_0x3968 < 15) {
            i_this->field_0x3968++;
            if (mant_cut_type == 0) {
                iVar8 = 40;
            } else if (mant_cut_type == 1) {
                iVar8 = 30;
            } else {
                iVar8 = 20;
            }

            unaff_r29 = cM_rndF(65536.0f);
            var_f31 = cM_rndFX(32.0f);
            var_f30 = cM_rndFX(32.0f);
        }

        i_this->field_0x3967 = 0;
    }

    for (int i = 0; i < iVar8; i++) {
        var_f31 += cM_ssin(unaff_r29);
        var_f30 -= cM_scos(unaff_r29);

        uVar4 = (int)(var_f31 + 64.0f) | (int)(var_f30 + 64.0f) << 7;

        if (mant_cut_type == 0) {
            if (i <= 3 || 36 <= i) {
                iVar2 = 1;
            } else if (i >= 12 && 28 >= i) {
                iVar2 = 9;
            } else {
                iVar2 = 4;
            }
        } else if (mant_cut_type == 1) {
            if (i <= 3 || 26 <= i) {
                iVar2 = 1;
            } else if (i >= 12 && 18 >= i) {
                iVar2 = 9;
            } else {
                iVar2 = 4;
            }
        } else if (i <= 3 || 16 <= i) {
            iVar2 = 1;
        } else {
            iVar2 = 4;
        }

        for (int j = 0; j < iVar2; j++) {
            if (j == 0) {
                uVar1 = uVar4;
            } else if (j == 1) {
                uVar1 = uVar4 + 1;
            } else if (j == 2) {
                uVar1 = uVar4 + 0x80;
            } else if (j == 3) {
                uVar1 = uVar4 + 0x81;
            } else if (j == 3) {
                uVar1 = uVar4 + 0x81;
            } else if (j == 4) {
                uVar1 = uVar4 + 2;
            } else if (j == 5) {
                uVar1 = uVar4 + 0x82;
            } else if (j == 6) {
                uVar1 = uVar4 + 0x102;
            } else if (j == 7) {
                uVar1 = uVar4 + 0x101;
            } else if (j == 8) {
                uVar1 = uVar4 + 0x100;
            }

            if (0 <= uVar1 && uVar1 < 0x4000) {
                int iVar5 = (uVar1 & 7) + (uVar1 & 0x78) * 4 + (uVar1 >> 4 & 0x18) + (uVar1 & 0x3e00);
                l_Egnd_mantTEX_U[iVar5] = 0;
                l_Egnd_mantTEX[iVar5] = 0;
            }
        }
    }

    return 1;
}

/* 80862908-80862910 0016E8 0008+00 1/0 0/0 0/0 .text            daMant_IsDelete__FP10mant_class */
static bool daMant_IsDelete(mant_class* i_this) {
    return true;
}

/* 80862910-80862918 0016F0 0008+00 1/0 0/0 0/0 .text            daMant_Delete__FP10mant_class */
static int daMant_Delete(mant_class* i_this) {
    return 1;
}

/* 80862918-80862AC0 0016F8 01A8+00 1/0 0/0 0/0 .text            daMant_Create__FP10fopAc_ac_c */
static int daMant_Create(fopAc_ac_c* i_this) {
    mant_class* m_this = (mant_class*)i_this;

    fopAcM_SetupActor(m_this, mant_class);
    //m_this->field_0x0570.field_0x74 = 0;
    m_this->field_0x259c = fopAcM_GetParam(i_this);

    fopAcM_SetMin(i_this, -2000.0f, -2000.0f, -2000.0f);
    fopAcM_SetMax(i_this, 2000.0f, 2000.0f, 2000.0f);

    m_this->field_0x0570.mArg0 = m_this->field_0x259c;
    m_this->field_0x394c = 30.0f;
    m_this->field_0x3950 = 7.0f / 10.0f;
    m_this->field_0x3958 = -10.0f;
    m_this->scale.set(1.0f, 1.0f, 1.0f);

    for (int i = 0; i < 0x4000; i++) {
        l_Egnd_mantTEX_U[i] = 6;
    }

    lbl_277_bss_0 = 0;
    daMant_Execute(m_this);
    return 4;
}

/* 80862AC0-80862B3C 0018A0 007C+00 1/1 0/0 0/0 .text            __dt__8mant_j_sFv */
mant_j_s::~mant_j_s() {}

/* 80862B3C-80862BA4 00191C 0068+00 1/1 0/0 0/0 .text            __ct__8mant_j_sFv */
mant_j_s::mant_j_s() {}

/* 80862BA4-80862C40 001984 009C+00 1/0 0/0 0/0 .text            __dt__15daMant_packet_cFv */
daMant_packet_c::~daMant_packet_c() {}

/* 80862C40-80862C44 001A20 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8086BF08-8086BF28 -00001 0020+00 1/0 0/0 0/0 .data            l_daMant_Method */
static actor_method_class l_daMant_Method = {
    (process_method_func)daMant_Create,
    (process_method_func)daMant_Delete,
    (process_method_func)daMant_Execute,
    (process_method_func)daMant_IsDelete,
    (process_method_func)daMant_Draw,
};

/* 8086BF28-8086BF58 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_MANT */
extern actor_process_profile_definition g_profile_MANT = {
  fpcLy_CURRENT_e,         // mLayerID
  8,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_MANT,               // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(mant_class),      // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  234,                     // mPriority
  &l_daMant_Method,        // sub_method
  0x00044000,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
