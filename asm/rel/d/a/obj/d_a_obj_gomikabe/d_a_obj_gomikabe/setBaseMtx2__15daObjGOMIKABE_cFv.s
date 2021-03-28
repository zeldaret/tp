lbl_80BFEF84:
/* 80BFEF84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFEF88  7C 08 02 A6 */	mflr r0
/* 80BFEF8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFEF90  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFEF94  4B 76 32 3C */	b _savegpr_26
/* 80BFEF98  7C 7A 1B 78 */	mr r26, r3
/* 80BFEF9C  3B 60 00 00 */	li r27, 0
/* 80BFEFA0  3B E0 00 00 */	li r31, 0
/* 80BFEFA4  3B C0 00 00 */	li r30, 0
/* 80BFEFA8  3B A0 00 00 */	li r29, 0
/* 80BFEFAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BFEFB0  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
lbl_80BFEFB4:
/* 80BFEFB4  38 7D 05 B0 */	addi r3, r29, 0x5b0
/* 80BFEFB8  7C 7A 1A 14 */	add r3, r26, r3
/* 80BFEFBC  4B 40 DD A8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BFEFC0  38 7E 06 10 */	addi r3, r30, 0x610
/* 80BFEFC4  7C 7A 1A 14 */	add r3, r26, r3
/* 80BFEFC8  4B 40 DF 7C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BFEFCC  38 7A 05 A4 */	addi r3, r26, 0x5a4
/* 80BFEFD0  4B 40 DE A0 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80BFEFD4  7F 83 E3 78 */	mr r3, r28
/* 80BFEFD8  38 1F 0F A0 */	addi r0, r31, 0xfa0
/* 80BFEFDC  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80BFEFE0  38 84 00 24 */	addi r4, r4, 0x24
/* 80BFEFE4  4B 74 74 CC */	b PSMTXCopy
/* 80BFEFE8  3B 7B 00 01 */	addi r27, r27, 1
/* 80BFEFEC  2C 1B 00 04 */	cmpwi r27, 4
/* 80BFEFF0  3B FF 00 04 */	addi r31, r31, 4
/* 80BFEFF4  3B DE 00 06 */	addi r30, r30, 6
/* 80BFEFF8  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BFEFFC  41 80 FF B8 */	blt lbl_80BFEFB4
/* 80BFF000  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFF004  4B 76 32 18 */	b _restgpr_26
/* 80BFF008  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFF00C  7C 08 03 A6 */	mtlr r0
/* 80BFF010  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFF014  4E 80 00 20 */	blr 
