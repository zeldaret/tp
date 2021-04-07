lbl_80C9F238:
/* 80C9F238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F23C  7C 08 02 A6 */	mflr r0
/* 80C9F240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F244  3C 60 80 CA */	lis r3, l_HIO@ha /* 0x80C9F328@ha */
/* 80C9F248  38 63 F3 28 */	addi r3, r3, l_HIO@l /* 0x80C9F328@l */
/* 80C9F24C  4B FF F9 61 */	bl __ct__18daObj_Myogan_HIO_cFv
/* 80C9F250  3C 80 80 CA */	lis r4, __dt__18daObj_Myogan_HIO_cFv@ha /* 0x80C9F1F0@ha */
/* 80C9F254  38 84 F1 F0 */	addi r4, r4, __dt__18daObj_Myogan_HIO_cFv@l /* 0x80C9F1F0@l */
/* 80C9F258  3C A0 80 CA */	lis r5, lit_3757@ha /* 0x80C9F31C@ha */
/* 80C9F25C  38 A5 F3 1C */	addi r5, r5, lit_3757@l /* 0x80C9F31C@l */
/* 80C9F260  4B FF F8 D9 */	bl __register_global_object
/* 80C9F264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F268  7C 08 03 A6 */	mtlr r0
/* 80C9F26C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F270  4E 80 00 20 */	blr 
