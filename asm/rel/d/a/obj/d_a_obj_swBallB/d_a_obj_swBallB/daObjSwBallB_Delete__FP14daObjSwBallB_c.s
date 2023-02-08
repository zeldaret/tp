lbl_80CF58A0:
/* 80CF58A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF58A4  7C 08 02 A6 */	mflr r0
/* 80CF58A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF58AC  4B FF FF 81 */	bl _delete__14daObjSwBallB_cFv
/* 80CF58B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF58B4  7C 08 03 A6 */	mtlr r0
/* 80CF58B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF58BC  4E 80 00 20 */	blr 
