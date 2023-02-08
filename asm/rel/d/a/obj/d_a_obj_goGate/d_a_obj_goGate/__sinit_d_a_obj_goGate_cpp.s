lbl_80BFDF98:
/* 80BFDF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFDF9C  7C 08 02 A6 */	mflr r0
/* 80BFDFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFDFA4  3C 60 80 C0 */	lis r3, l_HIO@ha /* 0x80BFE11C@ha */
/* 80BFDFA8  38 63 E1 1C */	addi r3, r3, l_HIO@l /* 0x80BFE11C@l */
/* 80BFDFAC  4B FF F7 01 */	bl __ct__14daGoGate_HIO_cFv
/* 80BFDFB0  3C 80 80 C0 */	lis r4, __dt__14daGoGate_HIO_cFv@ha /* 0x80BFDF3C@ha */
/* 80BFDFB4  38 84 DF 3C */	addi r4, r4, __dt__14daGoGate_HIO_cFv@l /* 0x80BFDF3C@l */
/* 80BFDFB8  3C A0 80 C0 */	lis r5, lit_3621@ha /* 0x80BFE110@ha */
/* 80BFDFBC  38 A5 E1 10 */	addi r5, r5, lit_3621@l /* 0x80BFE110@l */
/* 80BFDFC0  4B FF F6 79 */	bl __register_global_object
/* 80BFDFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFDFC8  7C 08 03 A6 */	mtlr r0
/* 80BFDFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFDFD0  4E 80 00 20 */	blr 
