lbl_8083CA80:
/* 8083CA80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8083CA84  7C 08 02 A6 */	mflr r0
/* 8083CA88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8083CA8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8083CA90  4B B2 57 4D */	bl _savegpr_29
/* 8083CA94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083CA98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083CA9C  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 8083CAA0  3B A0 00 00 */	li r29, 0
/* 8083CAA4  7F BF EB 78 */	mr r31, r29
/* 8083CAA8  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 8083CAAC  28 00 00 3C */	cmplwi r0, 0x3c
/* 8083CAB0  40 82 00 18 */	bne lbl_8083CAC8
/* 8083CAB4  7F C3 F3 78 */	mr r3, r30
/* 8083CAB8  4B 8B 03 0D */	bl checkHorseWaitLashAnime__9daAlink_cCFv
/* 8083CABC  2C 03 00 00 */	cmpwi r3, 0
/* 8083CAC0  40 82 00 08 */	bne lbl_8083CAC8
/* 8083CAC4  3B E0 00 01 */	li r31, 1
lbl_8083CAC8:
/* 8083CAC8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8083CACC  41 82 00 50 */	beq lbl_8083CB1C
/* 8083CAD0  3B E0 00 01 */	li r31, 1
/* 8083CAD4  7F C3 F3 78 */	mr r3, r30
/* 8083CAD8  38 80 00 4D */	li r4, 0x4d
/* 8083CADC  4B 86 FA 7D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8083CAE0  2C 03 00 00 */	cmpwi r3, 0
/* 8083CAE4  41 82 00 2C */	beq lbl_8083CB10
/* 8083CAE8  7F C3 F3 78 */	mr r3, r30
/* 8083CAEC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8083CAF0  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8083CAF4  7D 89 03 A6 */	mtctr r12
/* 8083CAF8  4E 80 04 21 */	bctrl 
/* 8083CAFC  3C 60 80 84 */	lis r3, lit_4304@ha /* 0x808455F4@ha */
/* 8083CB00  C0 03 55 F4 */	lfs f0, lit_4304@l(r3)  /* 0x808455F4@l */
/* 8083CB04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083CB08  41 80 00 08 */	blt lbl_8083CB10
/* 8083CB0C  3B E0 00 00 */	li r31, 0
lbl_8083CB10:
/* 8083CB10  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8083CB14  41 82 00 08 */	beq lbl_8083CB1C
/* 8083CB18  3B A0 00 01 */	li r29, 1
lbl_8083CB1C:
/* 8083CB1C  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 8083CB20  39 61 00 20 */	addi r11, r1, 0x20
/* 8083CB24  4B B2 57 05 */	bl _restgpr_29
/* 8083CB28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8083CB2C  7C 08 03 A6 */	mtlr r0
/* 8083CB30  38 21 00 20 */	addi r1, r1, 0x20
/* 8083CB34  4E 80 00 20 */	blr 
