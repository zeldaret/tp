lbl_80CB2564:
/* 80CB2564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2568  7C 08 02 A6 */	mflr r0
/* 80CB256C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2570  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB2574  38 63 28 4C */	addi r3, r3, l_HIO@l
/* 80CB2578  4B FF F4 F5 */	bl __ct__16daPoCandle_HIO_cFv
/* 80CB257C  3C 80 80 CB */	lis r4, __dt__16daPoCandle_HIO_cFv@ha
/* 80CB2580  38 84 25 08 */	addi r4, r4, __dt__16daPoCandle_HIO_cFv@l
/* 80CB2584  3C A0 80 CB */	lis r5, lit_3629@ha
/* 80CB2588  38 A5 28 40 */	addi r5, r5, lit_3629@l
/* 80CB258C  4B FF F4 6D */	bl __register_global_object
/* 80CB2590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2594  7C 08 03 A6 */	mtlr r0
/* 80CB2598  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB259C  4E 80 00 20 */	blr 
