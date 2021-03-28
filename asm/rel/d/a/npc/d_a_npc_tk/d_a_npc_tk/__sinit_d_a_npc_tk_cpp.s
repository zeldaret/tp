lbl_80B0C14C:
/* 80B0C14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0C150  7C 08 02 A6 */	mflr r0
/* 80B0C154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0C158  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B0C15C  38 63 C6 0C */	addi r3, r3, l_HIO@l
/* 80B0C160  4B FF 52 AD */	bl __ct__14daNPC_TK_HIO_cFv
/* 80B0C164  3C 80 80 B1 */	lis r4, __dt__14daNPC_TK_HIO_cFv@ha
/* 80B0C168  38 84 C1 04 */	addi r4, r4, __dt__14daNPC_TK_HIO_cFv@l
/* 80B0C16C  3C A0 80 B1 */	lis r5, lit_3994@ha
/* 80B0C170  38 A5 C6 00 */	addi r5, r5, lit_3994@l
/* 80B0C174  4B FF 52 25 */	bl __register_global_object
/* 80B0C178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0C17C  7C 08 03 A6 */	mtlr r0
/* 80B0C180  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0C184  4E 80 00 20 */	blr 
