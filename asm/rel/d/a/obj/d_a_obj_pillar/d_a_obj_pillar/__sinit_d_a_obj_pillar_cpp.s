lbl_80CB0984:
/* 80CB0984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB0988  7C 08 02 A6 */	mflr r0
/* 80CB098C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0990  3C 60 80 CB */	lis r3, l_HIO@ha /* 0x80CB0C2C@ha */
/* 80CB0994  38 63 0C 2C */	addi r3, r3, l_HIO@l /* 0x80CB0C2C@l */
/* 80CB0998  4B FF E9 95 */	bl __ct__14daPillar_HIO_cFv
/* 80CB099C  3C 80 80 CB */	lis r4, __dt__14daPillar_HIO_cFv@ha /* 0x80CB0928@ha */
/* 80CB09A0  38 84 09 28 */	addi r4, r4, __dt__14daPillar_HIO_cFv@l /* 0x80CB0928@l */
/* 80CB09A4  3C A0 80 CB */	lis r5, lit_3657@ha /* 0x80CB0C20@ha */
/* 80CB09A8  38 A5 0C 20 */	addi r5, r5, lit_3657@l /* 0x80CB0C20@l */
/* 80CB09AC  4B FF E9 0D */	bl __register_global_object
/* 80CB09B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB09B4  7C 08 03 A6 */	mtlr r0
/* 80CB09B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB09BC  4E 80 00 20 */	blr 
