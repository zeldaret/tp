lbl_80C5EE54:
/* 80C5EE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5EE58  7C 08 02 A6 */	mflr r0
/* 80C5EE5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5EE60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5EE64  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5EE68  7C 7E 1B 78 */	mr r30, r3
/* 80C5EE6C  7C 9F 23 78 */	mr r31, r4
/* 80C5EE70  48 00 00 35 */	bl moveGate__11daLv4Gate_cFv
/* 80C5EE74  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C5EE78  38 03 00 24 */	addi r0, r3, 0x24
/* 80C5EE7C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5EE80  7F C3 F3 78 */	mr r3, r30
/* 80C5EE84  4B FF FD 61 */	bl setBaseMtx__11daLv4Gate_cFv
/* 80C5EE88  38 60 00 01 */	li r3, 1
/* 80C5EE8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5EE90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5EE94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5EE98  7C 08 03 A6 */	mtlr r0
/* 80C5EE9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5EEA0  4E 80 00 20 */	blr 
