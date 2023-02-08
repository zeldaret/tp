lbl_80A2CD38:
/* 80A2CD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2CD3C  7C 08 02 A6 */	mflr r0
/* 80A2CD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2CD44  4B FF FF BD */	bl setCollisionTeach05__10daNpc_Kn_cFv
/* 80A2CD48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2CD4C  7C 08 03 A6 */	mtlr r0
/* 80A2CD50  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2CD54  4E 80 00 20 */	blr 
