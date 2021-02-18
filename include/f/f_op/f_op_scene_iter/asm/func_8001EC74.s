/* 8001EC74 0001BBB4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8001EC78 0001BBB8  7C 08 02 A6 */ mflr r0
/* 8001EC7C 0001BBBC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8001EC80 0001BBC0  90 61 00 08 */ stw r3, 8(r1)
/* 8001EC84 0001BBC4  90 81 00 0C */ stw r4, 0xc(r1)
/* 8001EC88 0001BBC8  3C 60 80 3A */ lis r3, lbl_803A3918@ha
/* 8001EC8C 0001BBCC  38 63 39 18 */ addi r3, r3, lbl_803A3918@l
/*.global cTgIt_JudgeFilter*/
/* 8001EC90 0001BBD0  3C 80 80 26 */ lis r4, cTgIt_JudgeFilter@ha
/*.global cTgIt_JudgeFilter*/
/* 8001EC94 0001BBD4  38 84 6A B0 */ addi r4, r4, cTgIt_JudgeFilter@l
/* 8001EC98 0001BBD8  38 A1 00 08 */ addi r5, r1, 8
/* 8001EC9C 0001BBDC  48 24 73 FD */ bl cLsIt_Judge
/* 8001ECA0 0001BBE0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8001ECA4 0001BBE4  7C 08 03 A6 */ mtlr r0
/* 8001ECA8 0001BBE8  38 21 00 10 */ addi r1, r1, 0x10
/* 8001ECAC 0001BBEC  4E 80 00 20 */ blr
