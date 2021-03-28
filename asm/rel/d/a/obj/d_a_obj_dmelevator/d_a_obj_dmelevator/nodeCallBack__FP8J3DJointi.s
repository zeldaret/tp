lbl_80BDDCA0:
/* 80BDDCA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDDCA4  7C 08 02 A6 */	mflr r0
/* 80BDDCA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDDCAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDDCB0  4B 78 45 28 */	b _savegpr_28
/* 80BDDCB4  2C 04 00 00 */	cmpwi r4, 0
/* 80BDDCB8  40 82 00 64 */	bne lbl_80BDDD1C
/* 80BDDCBC  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80BDDCC0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BDDCC4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80BDDCC8  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80BDDCCC  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80BDDCD0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80BDDCD4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80BDDCD8  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80BDDCDC  7C 60 EA 14 */	add r3, r0, r29
/* 80BDDCE0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80BDDCE4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80BDDCE8  4B 76 87 C8 */	b PSMTXCopy
/* 80BDDCEC  2C 1F 00 02 */	cmpwi r31, 2
/* 80BDDCF0  40 82 00 14 */	bne lbl_80BDDD04
/* 80BDDCF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BDDCF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BDDCFC  A8 9C 05 E4 */	lha r4, 0x5e4(r28)
/* 80BDDD00  4B 42 E6 9C */	b mDoMtx_XrotM__FPA4_fs
lbl_80BDDD04:
/* 80BDDD04  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80BDDD08  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80BDDD0C  7C 80 EA 14 */	add r4, r0, r29
/* 80BDDD10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BDDD14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BDDD18  4B 76 87 98 */	b PSMTXCopy
lbl_80BDDD1C:
/* 80BDDD1C  38 60 00 01 */	li r3, 1
/* 80BDDD20  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDDD24  4B 78 45 00 */	b _restgpr_28
/* 80BDDD28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDDD2C  7C 08 03 A6 */	mtlr r0
/* 80BDDD30  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDDD34  4E 80 00 20 */	blr 
