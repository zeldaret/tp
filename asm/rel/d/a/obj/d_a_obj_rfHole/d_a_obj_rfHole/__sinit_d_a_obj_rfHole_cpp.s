lbl_80CB9A34:
/* 80CB9A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB9A38  7C 08 02 A6 */	mflr r0
/* 80CB9A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9A40  3C 60 80 CC */	lis r3, l_HIO@ha
/* 80CB9A44  38 63 9B F4 */	addi r3, r3, l_HIO@l
/* 80CB9A48  4B FF F4 25 */	bl __ct__14daRfHole_HIO_cFv
/* 80CB9A4C  3C 80 80 CC */	lis r4, __dt__14daRfHole_HIO_cFv@ha
/* 80CB9A50  38 84 99 D8 */	addi r4, r4, __dt__14daRfHole_HIO_cFv@l
/* 80CB9A54  3C A0 80 CC */	lis r5, lit_3643@ha
/* 80CB9A58  38 A5 9B E8 */	addi r5, r5, lit_3643@l
/* 80CB9A5C  4B FF F3 9D */	bl __register_global_object
/* 80CB9A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9A64  7C 08 03 A6 */	mtlr r0
/* 80CB9A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9A6C  4E 80 00 20 */	blr 
