/* 800D005C 000CCF9C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D0060 000CCFA0  7C 08 02 A6 */ mflr r0
/* 800D0064 000CCFA4  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D0068 000CCFA8  7C 64 1B 78 */ mr r4, r3
/* 800D006C 000CCFAC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D0070 000CCFB0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D0074 000CCFB4  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800D0078 000CCFB8  4B F7 79 C1 */ bl dEvent_manager_c_NS_startCheckOld
/* 800D007C 000CCFBC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D0080 000CCFC0  7C 08 03 A6 */ mtlr r0
/* 800D0084 000CCFC4  38 21 00 10 */ addi r1, r1, 0x10
/* 800D0088 000CCFC8  4E 80 00 20 */ blr
