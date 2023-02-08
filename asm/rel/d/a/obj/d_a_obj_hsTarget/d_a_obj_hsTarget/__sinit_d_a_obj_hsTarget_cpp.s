lbl_80C1F850:
/* 80C1F850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F854  7C 08 02 A6 */	mflr r0
/* 80C1F858  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F85C  3C 60 80 C2 */	lis r3, l_HIO@ha /* 0x80C1F96C@ha */
/* 80C1F860  38 63 F9 6C */	addi r3, r3, l_HIO@l /* 0x80C1F96C@l */
/* 80C1F864  4B FF FB C9 */	bl __ct__16daHsTarget_HIO_cFv
/* 80C1F868  3C 80 80 C2 */	lis r4, __dt__16daHsTarget_HIO_cFv@ha /* 0x80C1F7F4@ha */
/* 80C1F86C  38 84 F7 F4 */	addi r4, r4, __dt__16daHsTarget_HIO_cFv@l /* 0x80C1F7F4@l */
/* 80C1F870  3C A0 80 C2 */	lis r5, lit_3621@ha /* 0x80C1F960@ha */
/* 80C1F874  38 A5 F9 60 */	addi r5, r5, lit_3621@l /* 0x80C1F960@l */
/* 80C1F878  4B FF FB 41 */	bl __register_global_object
/* 80C1F87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F880  7C 08 03 A6 */	mtlr r0
/* 80C1F884  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F888  4E 80 00 20 */	blr 
