lbl_80B48384:
/* 80B48384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B48388  7C 08 02 A6 */	mflr r0
/* 80B4838C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B48390  4B FF EA 19 */	bl Delete__13daNpc_yamiS_cFv
/* 80B48394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B48398  7C 08 03 A6 */	mtlr r0
/* 80B4839C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B483A0  4E 80 00 20 */	blr 
