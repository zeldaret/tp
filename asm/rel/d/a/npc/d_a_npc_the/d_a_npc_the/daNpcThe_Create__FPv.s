lbl_80AF9338:
/* 80AF9338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF933C  7C 08 02 A6 */	mflr r0
/* 80AF9340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF9344  48 00 00 15 */	bl create__10daNpcThe_cFv
/* 80AF9348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF934C  7C 08 03 A6 */	mtlr r0
/* 80AF9350  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF9354  4E 80 00 20 */	blr 
