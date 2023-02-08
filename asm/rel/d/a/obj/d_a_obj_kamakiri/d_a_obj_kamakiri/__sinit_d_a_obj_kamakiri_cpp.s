lbl_80C383A8:
/* 80C383A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C383AC  7C 08 02 A6 */	mflr r0
/* 80C383B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C383B4  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C385E0@ha */
/* 80C383B8  38 63 85 E0 */	addi r3, r3, l_HIO@l /* 0x80C385E0@l */
/* 80C383BC  4B FF CD D1 */	bl __ct__14daObj_KamHIO_cFv
/* 80C383C0  3C 80 80 C4 */	lis r4, __dt__14daObj_KamHIO_cFv@ha /* 0x80C38360@ha */
/* 80C383C4  38 84 83 60 */	addi r4, r4, __dt__14daObj_KamHIO_cFv@l /* 0x80C38360@l */
/* 80C383C8  3C A0 80 C4 */	lis r5, lit_3770@ha /* 0x80C385D4@ha */
/* 80C383CC  38 A5 85 D4 */	addi r5, r5, lit_3770@l /* 0x80C385D4@l */
/* 80C383D0  4B FF CD 49 */	bl __register_global_object
/* 80C383D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C383D8  7C 08 03 A6 */	mtlr r0
/* 80C383DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C383E0  4E 80 00 20 */	blr 
