lbl_80255D48:
/* 80255D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80255D4C  7C 08 02 A6 */	mflr r0
/* 80255D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80255D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80255D58  7C 7F 1B 78 */	mr r31, r3
/* 80255D5C  38 00 00 00 */	li r0, 0
/* 80255D60  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80255D64  90 03 00 20 */	stw r0, 0x20(r3)
/* 80255D68  90 03 00 24 */	stw r0, 0x24(r3)
/* 80255D6C  90 03 00 28 */	stw r0, 0x28(r3)
/* 80255D70  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80255D74  28 00 00 00 */	cmplwi r0, 0
/* 80255D78  41 82 00 44 */	beq lbl_80255DBC
/* 80255D7C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80255D80  A8 9F 00 14 */	lha r4, 0x14(r31)
/* 80255D84  38 A0 00 20 */	li r5, 0x20
/* 80255D88  48 07 87 4D */	bl alloc__7JKRHeapFUli
/* 80255D8C  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80255D90  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80255D94  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80255D98  80 7F 00 08 */	lwz r3, 8(r31)
/* 80255D9C  A8 9F 00 14 */	lha r4, 0x14(r31)
/* 80255DA0  38 A0 00 20 */	li r5, 0x20
/* 80255DA4  48 07 87 31 */	bl alloc__7JKRHeapFUli
/* 80255DA8  90 7F 00 24 */	stw r3, 0x24(r31)
/* 80255DAC  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80255DB0  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80255DB4  7F E3 FB 78 */	mr r3, r31
/* 80255DB8  48 00 00 19 */	bl setBackupAlpha__17CPaneMgrAlphaMorfFv
lbl_80255DBC:
/* 80255DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80255DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80255DC4  7C 08 03 A6 */	mtlr r0
/* 80255DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80255DCC  4E 80 00 20 */	blr 
