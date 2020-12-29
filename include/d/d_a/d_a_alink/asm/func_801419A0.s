/* 801419A0 0013E8E0  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 801419A4 0013E8E4  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 801419A8 0013E8E8  80 04 5D C4 */ lwz r0, 0x5dc4(r4)
/* 801419AC 0013E8EC  7C 00 1A 14 */ add r0, r0, r3
/* 801419B0 0013E8F0  90 04 5D C4 */ stw r0, 0x5dc4(r4)
/* 801419B4 0013E8F4  4E 80 00 20 */ blr
