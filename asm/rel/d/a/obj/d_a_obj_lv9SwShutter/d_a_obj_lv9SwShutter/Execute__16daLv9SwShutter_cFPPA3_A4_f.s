lbl_80C8D168:
/* 80C8D168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8D16C  7C 08 02 A6 */	mflr r0
/* 80C8D170  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8D174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8D178  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8D17C  7C 7E 1B 78 */	mr r30, r3
/* 80C8D180  7C 9F 23 78 */	mr r31, r4
/* 80C8D184  48 00 00 35 */	bl moveShutter__16daLv9SwShutter_cFv
/* 80C8D188  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8D18C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C8D190  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8D194  7F C3 F3 78 */	mr r3, r30
/* 80C8D198  4B FF FD A1 */	bl setBaseMtx__16daLv9SwShutter_cFv
/* 80C8D19C  38 60 00 01 */	li r3, 1
/* 80C8D1A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8D1A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8D1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8D1AC  7C 08 03 A6 */	mtlr r0
/* 80C8D1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8D1B4  4E 80 00 20 */	blr 
