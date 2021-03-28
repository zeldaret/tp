lbl_80BFD2CC:
/* 80BFD2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD2D0  7C 08 02 A6 */	mflr r0
/* 80BFD2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD2D8  3C 60 80 C0 */	lis r3, l_HIO@ha
/* 80BFD2DC  38 63 D5 A8 */	addi r3, r3, l_HIO@l
/* 80BFD2E0  4B FF DE 6D */	bl __ct__14daObj_Gm_HIO_cFv
/* 80BFD2E4  3C 80 80 C0 */	lis r4, __dt__14daObj_Gm_HIO_cFv@ha
/* 80BFD2E8  38 84 D2 84 */	addi r4, r4, __dt__14daObj_Gm_HIO_cFv@l
/* 80BFD2EC  3C A0 80 C0 */	lis r5, lit_3661@ha
/* 80BFD2F0  38 A5 D5 9C */	addi r5, r5, lit_3661@l
/* 80BFD2F4  4B FF DD E5 */	bl __register_global_object
/* 80BFD2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD2FC  7C 08 03 A6 */	mtlr r0
/* 80BFD300  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD304  4E 80 00 20 */	blr 
