lbl_80A2CD58:
/* 80A2CD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2CD5C  7C 08 02 A6 */	mflr r0
/* 80A2CD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2CD64  4B FF FF 9D */	bl setCollisionTeach05__10daNpc_Kn_cFv
/* 80A2CD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2CD6C  7C 08 03 A6 */	mtlr r0
/* 80A2CD70  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2CD74  4E 80 00 20 */	blr 
