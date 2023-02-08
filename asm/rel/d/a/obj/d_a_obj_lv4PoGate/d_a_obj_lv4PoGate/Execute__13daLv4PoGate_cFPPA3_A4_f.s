lbl_80C5FEDC:
/* 80C5FEDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5FEE0  7C 08 02 A6 */	mflr r0
/* 80C5FEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5FEE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5FEEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5FEF0  7C 7E 1B 78 */	mr r30, r3
/* 80C5FEF4  7C 9F 23 78 */	mr r31, r4
/* 80C5FEF8  48 00 00 35 */	bl moveGate__13daLv4PoGate_cFv
/* 80C5FEFC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C5FF00  38 03 00 24 */	addi r0, r3, 0x24
/* 80C5FF04  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5FF08  7F C3 F3 78 */	mr r3, r30
/* 80C5FF0C  4B FF FD 99 */	bl setBaseMtx__13daLv4PoGate_cFv
/* 80C5FF10  38 60 00 01 */	li r3, 1
/* 80C5FF14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5FF18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5FF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5FF20  7C 08 03 A6 */	mtlr r0
/* 80C5FF24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5FF28  4E 80 00 20 */	blr 
