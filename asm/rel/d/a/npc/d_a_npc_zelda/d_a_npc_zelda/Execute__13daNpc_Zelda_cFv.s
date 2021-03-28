lbl_80B759AC:
/* 80B759AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B759B0  7C 08 02 A6 */	mflr r0
/* 80B759B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B759B8  4B 5D 2B 74 */	b execute__8daNpcT_cFv
/* 80B759BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B759C0  7C 08 03 A6 */	mtlr r0
/* 80B759C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B759C8  4E 80 00 20 */	blr 
