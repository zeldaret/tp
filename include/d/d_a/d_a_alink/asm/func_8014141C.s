/* 8014141C 0013E35C  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 80141420 0013E360  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 80141424 0013E364  54 60 18 38 */ slwi r0, r3, 3
/* 80141428 0013E368  7C 64 02 14 */ add r3, r4, r0
/* 8014142C 0013E36C  88 63 5D B0 */ lbz r3, 0x5db0(r3)
/* 80141430 0013E370  7C 63 07 74 */ extsb r3, r3
/* 80141434 0013E374  4E 80 00 20 */ blr
