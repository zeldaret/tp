lbl_80CCC20C:
/* 80CCC20C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCC210  7C 08 02 A6 */	mflr r0
/* 80CCC214  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCC218  3C 60 80 CD */	lis r3, lit_3832@ha
/* 80CCC21C  C0 23 CC 38 */	lfs f1, lit_3832@l(r3)
/* 80CCC220  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CCC224  3C 60 80 CD */	lis r3, lit_3987@ha
/* 80CCC228  C0 03 CC 4C */	lfs f0, lit_3987@l(r3)
/* 80CCC22C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CCC230  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CCC234  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCC238  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCC23C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CCC240  38 80 00 03 */	li r4, 3
/* 80CCC244  38 A0 00 1F */	li r5, 0x1f
/* 80CCC248  38 C1 00 08 */	addi r6, r1, 8
/* 80CCC24C  4B 3A 38 C4 */	b StartQuake__12dVibration_cFii4cXyz
/* 80CCC250  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCC254  7C 08 03 A6 */	mtlr r0
/* 80CCC258  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCC25C  4E 80 00 20 */	blr 
