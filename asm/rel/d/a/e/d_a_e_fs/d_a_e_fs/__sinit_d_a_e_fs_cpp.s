lbl_806BDFDC:
/* 806BDFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BDFE0  7C 08 02 A6 */	mflr r0
/* 806BDFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BDFE8  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806BE7B0@ha */
/* 806BDFEC  38 63 E7 B0 */	addi r3, r3, l_HIO@l /* 0x806BE7B0@l */
/* 806BDFF0  4B FF DA DD */	bl __ct__12daE_Fs_HIO_cFv
/* 806BDFF4  3C 80 80 6C */	lis r4, __dt__12daE_Fs_HIO_cFv@ha /* 0x806BDF94@ha */
/* 806BDFF8  38 84 DF 94 */	addi r4, r4, __dt__12daE_Fs_HIO_cFv@l /* 0x806BDF94@l */
/* 806BDFFC  3C A0 80 6C */	lis r5, lit_3933@ha /* 0x806BE7A4@ha */
/* 806BE000  38 A5 E7 A4 */	addi r5, r5, lit_3933@l /* 0x806BE7A4@l */
/* 806BE004  4B FF DA 55 */	bl __register_global_object
/* 806BE008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BE00C  7C 08 03 A6 */	mtlr r0
/* 806BE010  38 21 00 10 */	addi r1, r1, 0x10
/* 806BE014  4E 80 00 20 */	blr 
