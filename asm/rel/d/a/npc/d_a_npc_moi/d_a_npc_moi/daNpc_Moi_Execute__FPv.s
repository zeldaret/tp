lbl_80A79910:
/* 80A79910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A79914  7C 08 02 A6 */	mflr r0
/* 80A79918  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7991C  4B FF B1 11 */	bl Execute__11daNpc_Moi_cFv
/* 80A79920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A79924  7C 08 03 A6 */	mtlr r0
/* 80A79928  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7992C  4E 80 00 20 */	blr 
