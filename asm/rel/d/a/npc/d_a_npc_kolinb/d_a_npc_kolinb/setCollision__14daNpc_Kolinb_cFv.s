lbl_80A46A4C:
/* 80A46A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A46A50  7C 08 02 A6 */	mflr r0
/* 80A46A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A46A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A46A5C  7C 7F 1B 78 */	mr r31, r3
/* 80A46A60  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A46A64  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A46A68  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A46A6C  7D 89 03 A6 */	mtctr r12
/* 80A46A70  4E 80 04 21 */	bctrl 
/* 80A46A74  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A46A78  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A46A7C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A46A80  7D 89 03 A6 */	mtctr r12
/* 80A46A84  4E 80 04 21 */	bctrl 
/* 80A46A88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A46A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A46A90  7C 08 03 A6 */	mtlr r0
/* 80A46A94  38 21 00 10 */	addi r1, r1, 0x10
/* 80A46A98  4E 80 00 20 */	blr 
