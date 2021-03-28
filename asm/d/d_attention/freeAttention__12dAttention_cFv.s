lbl_80071A68:
/* 80071A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80071A6C  7C 08 02 A6 */	mflr r0
/* 80071A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80071A74  38 00 FF FF */	li r0, -1
/* 80071A78  90 03 00 04 */	stw r0, 4(r3)
/* 80071A7C  38 80 FF FF */	li r4, -1
/* 80071A80  4B FF F7 C1 */	bl initList__12dAttention_cFUl
/* 80071A84  38 60 00 00 */	li r3, 0
/* 80071A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80071A8C  7C 08 03 A6 */	mtlr r0
/* 80071A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80071A94  4E 80 00 20 */	blr 
