lbl_80C1DA34:
/* 80C1DA34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1DA38  7C 08 02 A6 */	mflr r0
/* 80C1DA3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1DA40  3C 60 80 C2 */	lis r3, l_HIO@ha
/* 80C1DA44  38 63 DC 54 */	addi r3, r3, l_HIO@l
/* 80C1DA48  4B FF F0 A5 */	bl __ct__15daHeavySw_HIO_cFv
/* 80C1DA4C  3C 80 80 C2 */	lis r4, __dt__15daHeavySw_HIO_cFv@ha
/* 80C1DA50  38 84 D9 D8 */	addi r4, r4, __dt__15daHeavySw_HIO_cFv@l
/* 80C1DA54  3C A0 80 C2 */	lis r5, lit_3641@ha
/* 80C1DA58  38 A5 DC 48 */	addi r5, r5, lit_3641@l
/* 80C1DA5C  4B FF F0 1D */	bl __register_global_object
/* 80C1DA60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1DA64  7C 08 03 A6 */	mtlr r0
/* 80C1DA68  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1DA6C  4E 80 00 20 */	blr 
