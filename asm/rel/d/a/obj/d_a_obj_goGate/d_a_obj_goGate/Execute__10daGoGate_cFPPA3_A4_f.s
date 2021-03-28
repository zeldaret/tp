lbl_80BFD984:
/* 80BFD984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD988  7C 08 02 A6 */	mflr r0
/* 80BFD98C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD990  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD994  93 C1 00 08 */	stw r30, 8(r1)
/* 80BFD998  7C 7E 1B 78 */	mr r30, r3
/* 80BFD99C  7C 9F 23 78 */	mr r31, r4
/* 80BFD9A0  48 00 00 35 */	bl moveGate__10daGoGate_cFv
/* 80BFD9A4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BFD9A8  38 03 00 24 */	addi r0, r3, 0x24
/* 80BFD9AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFD9B0  7F C3 F3 78 */	mr r3, r30
/* 80BFD9B4  4B FF FD 71 */	bl setBaseMtx__10daGoGate_cFv
/* 80BFD9B8  38 60 00 01 */	li r3, 1
/* 80BFD9BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD9C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BFD9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD9C8  7C 08 03 A6 */	mtlr r0
/* 80BFD9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD9D0  4E 80 00 20 */	blr 
