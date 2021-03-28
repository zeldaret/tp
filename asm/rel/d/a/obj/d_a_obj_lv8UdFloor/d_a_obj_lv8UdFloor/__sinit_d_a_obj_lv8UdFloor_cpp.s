lbl_80C8CBA0:
/* 80C8CBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8CBA4  7C 08 02 A6 */	mflr r0
/* 80C8CBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8CBAC  3C 60 80 C9 */	lis r3, l_HIO@ha
/* 80C8CBB0  38 63 CD 8C */	addi r3, r3, l_HIO@l
/* 80C8CBB4  4B FF F1 59 */	bl __ct__15daUdFloor_HIO_cFv
/* 80C8CBB8  3C 80 80 C9 */	lis r4, __dt__15daUdFloor_HIO_cFv@ha
/* 80C8CBBC  38 84 CB 44 */	addi r4, r4, __dt__15daUdFloor_HIO_cFv@l
/* 80C8CBC0  3C A0 80 C9 */	lis r5, lit_3622@ha
/* 80C8CBC4  38 A5 CD 80 */	addi r5, r5, lit_3622@l
/* 80C8CBC8  4B FF F0 D1 */	bl __register_global_object
/* 80C8CBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CBD0  7C 08 03 A6 */	mtlr r0
/* 80C8CBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CBD8  4E 80 00 20 */	blr 
