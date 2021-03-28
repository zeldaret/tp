lbl_80C04AA8:
/* 80C04AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04AAC  7C 08 02 A6 */	mflr r0
/* 80C04AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04AB4  4B 54 AC 48 */	b MoveBGDelete__23daBaseNpc_moveBgActor_cFv
/* 80C04AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04ABC  7C 08 03 A6 */	mtlr r0
/* 80C04AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04AC4  4E 80 00 20 */	blr 
