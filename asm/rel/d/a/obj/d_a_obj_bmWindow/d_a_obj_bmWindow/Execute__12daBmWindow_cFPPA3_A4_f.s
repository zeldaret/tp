lbl_80BB88D8:
/* 80BB88D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB88DC  7C 08 02 A6 */	mflr r0
/* 80BB88E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB88E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB88E8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB88EC  7C 7E 1B 78 */	mr r30, r3
/* 80BB88F0  7C 9F 23 78 */	mr r31, r4
/* 80BB88F4  48 00 00 3D */	bl windowProc__12daBmWindow_cFv
/* 80BB88F8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BB88FC  38 03 00 24 */	addi r0, r3, 0x24
/* 80BB8900  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB8904  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80BB8908  4B 4C AF 29 */	bl Move__10dCcD_GSttsFv
/* 80BB890C  7F C3 F3 78 */	mr r3, r30
/* 80BB8910  4B FF FA 41 */	bl setBaseMtx__12daBmWindow_cFv
/* 80BB8914  38 60 00 01 */	li r3, 1
/* 80BB8918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB891C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB8920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB8924  7C 08 03 A6 */	mtlr r0
/* 80BB8928  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB892C  4E 80 00 20 */	blr 
