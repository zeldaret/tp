lbl_80A727B4:
/* 80A727B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A727B8  7C 08 02 A6 */	mflr r0
/* 80A727BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A727C0  4B FF ED 51 */	bl Draw__12daNpc_midP_cFv
/* 80A727C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A727C8  7C 08 03 A6 */	mtlr r0
/* 80A727CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A727D0  4E 80 00 20 */	blr 
