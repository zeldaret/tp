lbl_80CBF59C:
/* 80CBF59C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF5A0  7C 08 02 A6 */	mflr r0
/* 80CBF5A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF5A8  4B FF F7 15 */	bl create__13daRotBridge_cFv
/* 80CBF5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF5B0  7C 08 03 A6 */	mtlr r0
/* 80CBF5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF5B8  4E 80 00 20 */	blr 
