lbl_800750D0:
/* 800750D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800750D4  7C 08 02 A6 */	mflr r0
/* 800750D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800750DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800750E0  7C BF 2B 78 */	mr r31, r5
/* 800750E4  4B FF F7 C9 */	bl GetGrpInf__4cBgSCFRC13cBgS_PolyInfo
/* 800750E8  7C 63 F8 38 */	and r3, r3, r31
/* 800750EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800750F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800750F4  7C 08 03 A6 */	mtlr r0
/* 800750F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800750FC  4E 80 00 20 */	blr 
