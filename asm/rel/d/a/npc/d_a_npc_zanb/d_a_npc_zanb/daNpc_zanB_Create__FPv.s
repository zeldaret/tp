lbl_80B6AA60:
/* 80B6AA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6AA64  7C 08 02 A6 */	mflr r0
/* 80B6AA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6AA6C  4B FF E5 E1 */	bl create__12daNpc_zanB_cFv
/* 80B6AA70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6AA74  7C 08 03 A6 */	mtlr r0
/* 80B6AA78  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6AA7C  4E 80 00 20 */	blr 
