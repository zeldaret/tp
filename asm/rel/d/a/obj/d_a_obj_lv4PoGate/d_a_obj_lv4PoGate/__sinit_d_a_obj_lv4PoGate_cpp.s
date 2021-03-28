lbl_80C607B4:
/* 80C607B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C607B8  7C 08 02 A6 */	mflr r0
/* 80C607BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C607C0  3C 60 80 C6 */	lis r3, l_HIO@ha
/* 80C607C4  38 63 09 C4 */	addi r3, r3, l_HIO@l
/* 80C607C8  4B FF F4 25 */	bl __ct__17daLv4PoGate_HIO_cFv
/* 80C607CC  3C 80 80 C6 */	lis r4, __dt__17daLv4PoGate_HIO_cFv@ha
/* 80C607D0  38 84 07 58 */	addi r4, r4, __dt__17daLv4PoGate_HIO_cFv@l
/* 80C607D4  3C A0 80 C6 */	lis r5, lit_3623@ha
/* 80C607D8  38 A5 09 B8 */	addi r5, r5, lit_3623@l
/* 80C607DC  4B FF F3 9D */	bl __register_global_object
/* 80C607E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C607E4  7C 08 03 A6 */	mtlr r0
/* 80C607E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C607EC  4E 80 00 20 */	blr 
