lbl_805EBAB8:
/* 805EBAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EBABC  7C 08 02 A6 */	mflr r0
/* 805EBAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EBAC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EBAC8  7C 7F 1B 78 */	mr r31, r3
/* 805EBACC  88 03 05 B1 */	lbz r0, 0x5b1(r3)
/* 805EBAD0  28 00 00 00 */	cmplwi r0, 0
/* 805EBAD4  40 82 00 3C */	bne lbl_805EBB10
/* 805EBAD8  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805EBADC  80 63 00 04 */	lwz r3, 4(r3)
/* 805EBAE0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805EBAE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805EBAE8  38 63 00 F0 */	addi r3, r3, 0xf0
/* 805EBAEC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805EBAF0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805EBAF4  4B D5 A9 BD */	bl PSMTXCopy
/* 805EBAF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805EBAFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805EBB00  80 9F 0E 3C */	lwz r4, 0xe3c(r31)
/* 805EBB04  38 84 00 24 */	addi r4, r4, 0x24
/* 805EBB08  4B D5 A9 A9 */	bl PSMTXCopy
/* 805EBB0C  48 00 00 10 */	b lbl_805EBB1C
lbl_805EBB10:
/* 805EBB10  28 00 00 01 */	cmplwi r0, 1
/* 805EBB14  40 82 00 08 */	bne lbl_805EBB1C
/* 805EBB18  48 00 00 19 */	bl setHeadMtx1__8daB_GG_cFv
lbl_805EBB1C:
/* 805EBB1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EBB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EBB24  7C 08 03 A6 */	mtlr r0
/* 805EBB28  38 21 00 10 */	addi r1, r1, 0x10
/* 805EBB2C  4E 80 00 20 */	blr 
