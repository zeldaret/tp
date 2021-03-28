lbl_80C44AF0:
/* 80C44AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44AF4  7C 08 02 A6 */	mflr r0
/* 80C44AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44AFC  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C44B00  38 63 4C 18 */	addi r3, r3, l_HIO@l
/* 80C44B04  4B FF F3 E9 */	bl __ct__14daObj_Ki_HIO_cFv
/* 80C44B08  3C 80 80 C4 */	lis r4, __dt__14daObj_Ki_HIO_cFv@ha
/* 80C44B0C  38 84 4A A8 */	addi r4, r4, __dt__14daObj_Ki_HIO_cFv@l
/* 80C44B10  3C A0 80 C4 */	lis r5, lit_3643@ha
/* 80C44B14  38 A5 4C 0C */	addi r5, r5, lit_3643@l
/* 80C44B18  4B FF F3 61 */	bl __register_global_object
/* 80C44B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44B20  7C 08 03 A6 */	mtlr r0
/* 80C44B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44B28  4E 80 00 20 */	blr 
