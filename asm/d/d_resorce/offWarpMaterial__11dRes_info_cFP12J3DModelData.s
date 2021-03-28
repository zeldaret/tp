lbl_8003AC1C:
/* 8003AC1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003AC20  7C 08 02 A6 */	mflr r0
/* 8003AC24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003AC28  39 61 00 20 */	addi r11, r1, 0x20
/* 8003AC2C  48 32 75 A9 */	bl _savegpr_27
/* 8003AC30  7C 7B 1B 78 */	mr r27, r3
/* 8003AC34  3B 80 00 00 */	li r28, 0
/* 8003AC38  48 00 00 A8 */	b lbl_8003ACE0
lbl_8003AC3C:
/* 8003AC3C  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 8003AC40  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 8003AC44  7F E3 00 2E */	lwzx r31, r3, r0
/* 8003AC48  83 DF 00 2C */	lwz r30, 0x2c(r31)
/* 8003AC4C  7F C3 F3 78 */	mr r3, r30
/* 8003AC50  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003AC54  81 8C 00 98 */	lwz r12, 0x98(r12)
/* 8003AC58  7D 89 03 A6 */	mtctr r12
/* 8003AC5C  4E 80 04 21 */	bctrl 
/* 8003AC60  7C 60 1B 78 */	mr r0, r3
/* 8003AC64  7F C3 F3 78 */	mr r3, r30
/* 8003AC68  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8003AC6C  3B A4 FF FF */	addi r29, r4, -1
/* 8003AC70  7F A4 EB 78 */	mr r4, r29
/* 8003AC74  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003AC78  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 8003AC7C  7D 89 03 A6 */	mtctr r12
/* 8003AC80  4E 80 04 21 */	bctrl 
/* 8003AC84  88 03 00 01 */	lbz r0, 1(r3)
/* 8003AC88  28 00 00 03 */	cmplwi r0, 3
/* 8003AC8C  40 82 00 64 */	bne lbl_8003ACF0
/* 8003AC90  7F C3 F3 78 */	mr r3, r30
/* 8003AC94  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 8003AC98  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003AC9C  81 8C 00 94 */	lwz r12, 0x94(r12)
/* 8003ACA0  7D 89 03 A6 */	mtctr r12
/* 8003ACA4  4E 80 04 21 */	bctrl 
/* 8003ACA8  83 DF 00 28 */	lwz r30, 0x28(r31)
/* 8003ACAC  7F C3 F3 78 */	mr r3, r30
/* 8003ACB0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003ACB4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8003ACB8  7D 89 03 A6 */	mtctr r12
/* 8003ACBC  4E 80 04 21 */	bctrl 
/* 8003ACC0  7C 64 1B 78 */	mr r4, r3
/* 8003ACC4  7F C3 F3 78 */	mr r3, r30
/* 8003ACC8  38 84 FF FF */	addi r4, r4, -1
/* 8003ACCC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8003ACD0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8003ACD4  7D 89 03 A6 */	mtctr r12
/* 8003ACD8  4E 80 04 21 */	bctrl 
/* 8003ACDC  3B 9C 00 01 */	addi r28, r28, 1
lbl_8003ACE0:
/* 8003ACE0  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8003ACE4  A0 1B 00 5C */	lhz r0, 0x5c(r27)
/* 8003ACE8  7C 03 00 40 */	cmplw r3, r0
/* 8003ACEC  41 80 FF 50 */	blt lbl_8003AC3C
lbl_8003ACF0:
/* 8003ACF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8003ACF4  48 32 75 2D */	bl _restgpr_27
/* 8003ACF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003ACFC  7C 08 03 A6 */	mtlr r0
/* 8003AD00  38 21 00 20 */	addi r1, r1, 0x20
/* 8003AD04  4E 80 00 20 */	blr 
