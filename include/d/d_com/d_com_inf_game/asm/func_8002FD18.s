/* 8002FD18 0002CC58  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002FD1C 0002CC5C  7C 08 02 A6 */ mflr r0
/* 8002FD20 0002CC60  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002FD24 0002CC64  38 00 FF FF */ li r0, -1
/* 8002FD28 0002CC68  3C 60 80 40 */ lis r3, lbl_804061A0@ha
/* 8002FD2C 0002CC6C  38 63 61 A0 */ addi r3, r3, lbl_804061A0@l
/* 8002FD30 0002CC70  90 03 00 0C */ stw r0, 0xc(r3)
/* 8002FD34 0002CC74  38 00 00 00 */ li r0, 0
/* 8002FD38 0002CC78  90 03 00 08 */ stw r0, 8(r3)
/* 8002FD3C 0002CC7C  90 03 00 04 */ stw r0, 4(r3)
/* 8002FD40 0002CC80  90 03 00 00 */ stw r0, 0(r3)
/* 8002FD44 0002CC84  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002FD48 0002CC88  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002FD4C 0002CC8C  48 00 04 F9 */ bl __ct__13dComIfG_inf_cFv
/*.global __dt__13dComIfG_inf_cFv*/
/* 8002FD50 0002CC90  3C 80 80 03 */ lis r4, __dt__13dComIfG_inf_cFv@ha
/*.global __dt__13dComIfG_inf_cFv*/
/* 8002FD54 0002CC94  38 84 FD 74 */ addi r4, r4, __dt__13dComIfG_inf_cFv@l
/* 8002FD58 0002CC98  3C A0 80 40 */ lis r5, lbl_804061B4@ha
/* 8002FD5C 0002CC9C  38 A5 61 B4 */ addi r5, r5, lbl_804061B4@l
/* 8002FD60 0002CCA0  48 33 1E C5 */ bl func_80361C24
/* 8002FD64 0002CCA4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002FD68 0002CCA8  7C 08 03 A6 */ mtlr r0
/* 8002FD6C 0002CCAC  38 21 00 10 */ addi r1, r1, 0x10
/* 8002FD70 0002CCB0  4E 80 00 20 */ blr