lbl_80314DA8:
/* 80314DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80314DAC  7C 08 02 A6 */	mflr r0
/* 80314DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80314DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80314DB8  48 04 D4 1D */	bl _savegpr_27
/* 80314DBC  7C 7B 1B 78 */	mr r27, r3
/* 80314DC0  7C 9C 23 78 */	mr r28, r4
/* 80314DC4  7C BD 2B 78 */	mr r29, r5
/* 80314DC8  7C DE 33 78 */	mr r30, r6
/* 80314DCC  3B E0 00 00 */	li r31, 0
/* 80314DD0  48 00 00 30 */	b lbl_80314E00
lbl_80314DD4:
/* 80314DD4  80 7B 00 38 */	lwz r3, 0x38(r27)
/* 80314DD8  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 80314DDC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80314DE0  7F 84 E3 78 */	mr r4, r28
/* 80314DE4  7F A5 EB 78 */	mr r5, r29
/* 80314DE8  7F C6 F3 78 */	mr r6, r30
/* 80314DEC  81 83 00 00 */	lwz r12, 0(r3)
/* 80314DF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80314DF4  7D 89 03 A6 */	mtctr r12
/* 80314DF8  4E 80 04 21 */	bctrl 
/* 80314DFC  3B FF 00 01 */	addi r31, r31, 1
lbl_80314E00:
/* 80314E00  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 80314E04  A0 1B 00 0A */	lhz r0, 0xa(r27)
/* 80314E08  7C 03 00 40 */	cmplw r3, r0
/* 80314E0C  41 80 FF C8 */	blt lbl_80314DD4
/* 80314E10  39 61 00 20 */	addi r11, r1, 0x20
/* 80314E14  48 04 D4 0D */	bl _restgpr_27
/* 80314E18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80314E1C  7C 08 03 A6 */	mtlr r0
/* 80314E20  38 21 00 20 */	addi r1, r1, 0x20
/* 80314E24  4E 80 00 20 */	blr 
