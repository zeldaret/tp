lbl_80CD85B8:
/* 80CD85B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD85BC  7C 08 02 A6 */	mflr r0
/* 80CD85C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD85C4  48 00 07 89 */	bl create__14daObjSM_DOOR_cFv
/* 80CD85C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD85CC  7C 08 03 A6 */	mtlr r0
/* 80CD85D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD85D4  4E 80 00 20 */	blr 
