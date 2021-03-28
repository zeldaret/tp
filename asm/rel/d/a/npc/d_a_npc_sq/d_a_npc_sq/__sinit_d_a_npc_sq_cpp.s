lbl_80AF73A8:
/* 80AF73A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF73AC  7C 08 02 A6 */	mflr r0
/* 80AF73B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF73B4  3C 60 80 AF */	lis r3, l_HIO@ha
/* 80AF73B8  38 63 75 D0 */	addi r3, r3, l_HIO@l
/* 80AF73BC  4B FF EC 31 */	bl __ct__14daNpc_Sq_HIO_cFv
/* 80AF73C0  3C 80 80 AF */	lis r4, __dt__14daNpc_Sq_HIO_cFv@ha
/* 80AF73C4  38 84 73 60 */	addi r4, r4, __dt__14daNpc_Sq_HIO_cFv@l
/* 80AF73C8  3C A0 80 AF */	lis r5, lit_3763@ha
/* 80AF73CC  38 A5 75 C4 */	addi r5, r5, lit_3763@l
/* 80AF73D0  4B FF EB A9 */	bl __register_global_object
/* 80AF73D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF73D8  7C 08 03 A6 */	mtlr r0
/* 80AF73DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF73E0  4E 80 00 20 */	blr 
