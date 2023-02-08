lbl_80D0C298:
/* 80D0C298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C29C  7C 08 02 A6 */	mflr r0
/* 80D0C2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C2A4  48 00 06 11 */	bl create__13daObjTHASHI_cFv
/* 80D0C2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C2AC  7C 08 03 A6 */	mtlr r0
/* 80D0C2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C2B4  4E 80 00 20 */	blr 
