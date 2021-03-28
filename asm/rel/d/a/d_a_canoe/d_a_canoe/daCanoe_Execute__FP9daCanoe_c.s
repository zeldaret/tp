lbl_804DD33C:
/* 804DD33C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DD340  7C 08 02 A6 */	mflr r0
/* 804DD344  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DD348  4B FF F4 6D */	bl execute__9daCanoe_cFv
/* 804DD34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DD350  7C 08 03 A6 */	mtlr r0
/* 804DD354  38 21 00 10 */	addi r1, r1, 0x10
/* 804DD358  4E 80 00 20 */	blr 
