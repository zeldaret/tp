lbl_80CED6BC:
/* 80CED6BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED6C0  7C 08 02 A6 */	mflr r0
/* 80CED6C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED6C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CED6CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CED6D0  7C 7E 1B 78 */	mr r30, r3
/* 80CED6D4  7C 9F 23 78 */	mr r31, r4
/* 80CED6D8  48 00 00 31 */	bl action__14daObjStopper_cFv
/* 80CED6DC  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CED6E0  90 1F 00 00 */	stw r0, 0(r31)
/* 80CED6E4  7F C3 F3 78 */	mr r3, r30
/* 80CED6E8  4B FF F9 3D */	bl setBaseMtx__14daObjStopper_cFv
/* 80CED6EC  38 60 00 01 */	li r3, 1
/* 80CED6F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CED6F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CED6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED6FC  7C 08 03 A6 */	mtlr r0
/* 80CED700  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED704  4E 80 00 20 */	blr 
