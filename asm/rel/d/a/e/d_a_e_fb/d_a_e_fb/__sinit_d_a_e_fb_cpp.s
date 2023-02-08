lbl_806B8F2C:
/* 806B8F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B8F30  7C 08 02 A6 */	mflr r0
/* 806B8F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B8F38  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806B91FC@ha */
/* 806B8F3C  38 63 91 FC */	addi r3, r3, l_HIO@l /* 0x806B91FC@l */
/* 806B8F40  4B FF D5 6D */	bl __ct__12daE_FB_HIO_cFv
/* 806B8F44  3C 80 80 6C */	lis r4, __dt__12daE_FB_HIO_cFv@ha /* 0x806B8EE4@ha */
/* 806B8F48  38 84 8E E4 */	addi r4, r4, __dt__12daE_FB_HIO_cFv@l /* 0x806B8EE4@l */
/* 806B8F4C  3C A0 80 6C */	lis r5, lit_3657@ha /* 0x806B91F0@ha */
/* 806B8F50  38 A5 91 F0 */	addi r5, r5, lit_3657@l /* 0x806B91F0@l */
/* 806B8F54  4B FF D4 E5 */	bl __register_global_object
/* 806B8F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B8F5C  7C 08 03 A6 */	mtlr r0
/* 806B8F60  38 21 00 10 */	addi r1, r1, 0x10
/* 806B8F64  4E 80 00 20 */	blr 
