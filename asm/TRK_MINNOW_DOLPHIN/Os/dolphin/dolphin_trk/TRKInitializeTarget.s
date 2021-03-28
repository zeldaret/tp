lbl_803719AC:
/* 803719AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803719B0  7C 08 02 A6 */	mflr r0
/* 803719B4  3C 60 80 45 */	lis r3, gTRKState@ha
/* 803719B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803719BC  38 00 00 01 */	li r0, 1
/* 803719C0  38 63 F2 94 */	addi r3, r3, gTRKState@l
/* 803719C4  90 03 00 98 */	stw r0, 0x98(r3)
/* 803719C8  4B FF DC 71 */	bl __TRK_get_MSR
/* 803719CC  3C A0 80 45 */	lis r5, gTRKState@ha
/* 803719D0  3C 80 80 45 */	lis r4, lc_base@ha
/* 803719D4  38 A5 F2 94 */	addi r5, r5, gTRKState@l
/* 803719D8  3C 00 E0 00 */	lis r0, 0xe000
/* 803719DC  90 65 00 8C */	stw r3, 0x8c(r5)
/* 803719E0  38 60 00 00 */	li r3, 0
/* 803719E4  90 04 F8 10 */	stw r0, lc_base@l(r4)
/* 803719E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803719EC  7C 08 03 A6 */	mtlr r0
/* 803719F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803719F4  4E 80 00 20 */	blr 
