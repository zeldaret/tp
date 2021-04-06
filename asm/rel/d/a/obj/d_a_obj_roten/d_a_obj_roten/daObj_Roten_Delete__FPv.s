lbl_80CC1314:
/* 80CC1314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC1318  7C 08 02 A6 */	mflr r0
/* 80CC131C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1320  4B 3B 75 BD */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CC1324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC1328  7C 08 03 A6 */	mtlr r0
/* 80CC132C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC1330  4E 80 00 20 */	blr 
