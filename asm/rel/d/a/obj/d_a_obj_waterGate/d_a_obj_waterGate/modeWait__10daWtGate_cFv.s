lbl_80D2BF94:
/* 80D2BF94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2BF98  7C 08 02 A6 */	mflr r0
/* 80D2BF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2BFA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2BFA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2BFA8  7C 7E 1B 78 */	mr r30, r3
/* 80D2BFAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2BFB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D2BFB4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D2BFB8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D2BFBC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D2BFC0  7C 05 07 74 */	extsb r5, r0
/* 80D2BFC4  4B 30 93 9C */	b isSwitch__10dSv_info_cCFii
/* 80D2BFC8  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80D2BFCC  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80D2BFD0  7C 1F 00 40 */	cmplw r31, r0
/* 80D2BFD4  41 82 00 24 */	beq lbl_80D2BFF8
/* 80D2BFD8  28 1F 00 00 */	cmplwi r31, 0
/* 80D2BFDC  41 82 00 10 */	beq lbl_80D2BFEC
/* 80D2BFE0  7F C3 F3 78 */	mr r3, r30
/* 80D2BFE4  48 00 00 2D */	bl init_modeOpen__10daWtGate_cFv
/* 80D2BFE8  48 00 00 0C */	b lbl_80D2BFF4
lbl_80D2BFEC:
/* 80D2BFEC  7F C3 F3 78 */	mr r3, r30
/* 80D2BFF0  48 00 01 45 */	bl init_modeClose__10daWtGate_cFv
lbl_80D2BFF4:
/* 80D2BFF4  9B FE 05 AE */	stb r31, 0x5ae(r30)
lbl_80D2BFF8:
/* 80D2BFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2BFFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2C000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C004  7C 08 03 A6 */	mtlr r0
/* 80D2C008  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C00C  4E 80 00 20 */	blr 
