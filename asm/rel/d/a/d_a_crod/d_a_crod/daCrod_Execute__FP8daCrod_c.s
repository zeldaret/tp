lbl_804A3FB4:
/* 804A3FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A3FB8  7C 08 02 A6 */	mflr r0
/* 804A3FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3FC0  4B FF F7 19 */	bl execute__8daCrod_cFv
/* 804A3FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A3FC8  7C 08 03 A6 */	mtlr r0
/* 804A3FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 804A3FD0  4E 80 00 20 */	blr 
