lbl_806DFDA4:
/* 806DFDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DFDA8  7C 08 02 A6 */	mflr r0
/* 806DFDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DFDB0  3C 60 80 6E */	lis r3, l_HIO@ha /* 0x806DFEA8@ha */
/* 806DFDB4  38 63 FE A8 */	addi r3, r3, l_HIO@l /* 0x806DFEA8@l */
/* 806DFDB8  4B FF F6 B5 */	bl __ct__12daE_GS_HIO_cFv
/* 806DFDBC  3C 80 80 6E */	lis r4, __dt__12daE_GS_HIO_cFv@ha /* 0x806DFD5C@ha */
/* 806DFDC0  38 84 FD 5C */	addi r4, r4, __dt__12daE_GS_HIO_cFv@l /* 0x806DFD5C@l */
/* 806DFDC4  3C A0 80 6E */	lis r5, lit_3641@ha /* 0x806DFE9C@ha */
/* 806DFDC8  38 A5 FE 9C */	addi r5, r5, lit_3641@l /* 0x806DFE9C@l */
/* 806DFDCC  4B FF F6 2D */	bl __register_global_object
/* 806DFDD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DFDD4  7C 08 03 A6 */	mtlr r0
/* 806DFDD8  38 21 00 10 */	addi r1, r1, 0x10
/* 806DFDDC  4E 80 00 20 */	blr 
