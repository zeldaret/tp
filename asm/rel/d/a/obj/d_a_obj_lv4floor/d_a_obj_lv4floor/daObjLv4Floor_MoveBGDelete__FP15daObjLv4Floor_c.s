lbl_80C67D0C:
/* 80C67D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67D10  7C 08 02 A6 */	mflr r0
/* 80C67D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67D18  4B 41 0B C5 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C67D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67D20  7C 08 03 A6 */	mtlr r0
/* 80C67D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67D28  4E 80 00 20 */	blr 
