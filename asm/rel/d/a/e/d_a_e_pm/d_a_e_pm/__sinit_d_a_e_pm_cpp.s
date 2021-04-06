lbl_8074BAB0:
/* 8074BAB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074BAB4  7C 08 02 A6 */	mflr r0
/* 8074BAB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074BABC  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x8074C394@ha */
/* 8074BAC0  38 63 C3 94 */	addi r3, r3, l_HIO@l /* 0x8074C394@l */
/* 8074BAC4  4B FF 64 29 */	bl __ct__12daE_PM_HIO_cFv
/* 8074BAC8  3C 80 80 75 */	lis r4, __dt__12daE_PM_HIO_cFv@ha /* 0x8074BA68@ha */
/* 8074BACC  38 84 BA 68 */	addi r4, r4, __dt__12daE_PM_HIO_cFv@l /* 0x8074BA68@l */
/* 8074BAD0  3C A0 80 75 */	lis r5, lit_3928@ha /* 0x8074C388@ha */
/* 8074BAD4  38 A5 C3 88 */	addi r5, r5, lit_3928@l /* 0x8074C388@l */
/* 8074BAD8  4B FF 63 A1 */	bl __register_global_object
/* 8074BADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074BAE0  7C 08 03 A6 */	mtlr r0
/* 8074BAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8074BAE8  4E 80 00 20 */	blr 
