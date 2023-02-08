lbl_806BAEB0:
/* 806BAEB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BAEB4  7C 08 02 A6 */	mflr r0
/* 806BAEB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BAEBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BAEC0  7C 7F 1B 78 */	mr r31, r3
/* 806BAEC4  80 63 0C 30 */	lwz r3, 0xc30(r3)
/* 806BAEC8  80 63 00 04 */	lwz r3, 4(r3)
/* 806BAECC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806BAED0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806BAED4  38 63 04 80 */	addi r3, r3, 0x480
/* 806BAED8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806BAEDC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806BAEE0  4B C8 B5 D1 */	bl PSMTXCopy
/* 806BAEE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806BAEE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806BAEEC  80 9F 0C 3C */	lwz r4, 0xc3c(r31)
/* 806BAEF0  38 84 00 24 */	addi r4, r4, 0x24
/* 806BAEF4  4B C8 B5 BD */	bl PSMTXCopy
/* 806BAEF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BAEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BAF00  7C 08 03 A6 */	mtlr r0
/* 806BAF04  38 21 00 10 */	addi r1, r1, 0x10
/* 806BAF08  4E 80 00 20 */	blr 
