lbl_80CBF618:
/* 80CBF618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF61C  7C 08 02 A6 */	mflr r0
/* 80CBF620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF624  3C 60 80 CC */	lis r3, l_HIO@ha
/* 80CBF628  38 63 F7 94 */	addi r3, r3, l_HIO@l
/* 80CBF62C  4B FF F3 61 */	bl __ct__17daRotBridge_HIO_cFv
/* 80CBF630  3C 80 80 CC */	lis r4, __dt__17daRotBridge_HIO_cFv@ha
/* 80CBF634  38 84 F5 BC */	addi r4, r4, __dt__17daRotBridge_HIO_cFv@l
/* 80CBF638  3C A0 80 CC */	lis r5, lit_3620@ha
/* 80CBF63C  38 A5 F7 88 */	addi r5, r5, lit_3620@l
/* 80CBF640  4B FF F2 D9 */	bl __register_global_object
/* 80CBF644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF648  7C 08 03 A6 */	mtlr r0
/* 80CBF64C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF650  4E 80 00 20 */	blr 
