lbl_80C765E0:
/* 80C765E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C765E4  7C 08 02 A6 */	mflr r0
/* 80C765E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C765EC  3C 60 80 C7 */	lis r3, l_HIO@ha
/* 80C765F0  38 63 67 E4 */	addi r3, r3, l_HIO@l
/* 80C765F4  4B FF F2 79 */	bl __ct__17daLv6SzGate_HIO_cFv
/* 80C765F8  3C 80 80 C7 */	lis r4, __dt__17daLv6SzGate_HIO_cFv@ha
/* 80C765FC  38 84 65 84 */	addi r4, r4, __dt__17daLv6SzGate_HIO_cFv@l
/* 80C76600  3C A0 80 C7 */	lis r5, lit_3621@ha
/* 80C76604  38 A5 67 D8 */	addi r5, r5, lit_3621@l
/* 80C76608  4B FF F1 F1 */	bl __register_global_object
/* 80C7660C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C76610  7C 08 03 A6 */	mtlr r0
/* 80C76614  38 21 00 10 */	addi r1, r1, 0x10
/* 80C76618  4E 80 00 20 */	blr 
