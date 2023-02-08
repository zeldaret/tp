lbl_80B7A51C:
/* 80B7A51C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7A520  7C 08 02 A6 */	mflr r0
/* 80B7A524  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7A528  38 80 FF FF */	li r4, -1
/* 80B7A52C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7A530  81 8C 00 08 */	lwz r12, 8(r12)
/* 80B7A534  7D 89 03 A6 */	mtctr r12
/* 80B7A538  4E 80 04 21 */	bctrl 
/* 80B7A53C  38 60 00 01 */	li r3, 1
/* 80B7A540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7A544  7C 08 03 A6 */	mtlr r0
/* 80B7A548  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7A54C  4E 80 00 20 */	blr 
