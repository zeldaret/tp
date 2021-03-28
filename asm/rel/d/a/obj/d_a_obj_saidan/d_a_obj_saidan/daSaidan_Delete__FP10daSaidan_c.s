lbl_80CC4438:
/* 80CC4438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC443C  7C 08 02 A6 */	mflr r0
/* 80CC4440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4444  4B 3B 44 98 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CC4448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC444C  7C 08 03 A6 */	mtlr r0
/* 80CC4450  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4454  4E 80 00 20 */	blr 
