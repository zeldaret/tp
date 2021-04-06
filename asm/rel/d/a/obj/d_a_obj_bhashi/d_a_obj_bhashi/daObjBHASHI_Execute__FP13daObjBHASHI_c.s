lbl_80578310:
/* 80578310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578314  7C 08 02 A6 */	mflr r0
/* 80578318  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057831C  4B B0 06 35 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80578320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578324  7C 08 03 A6 */	mtlr r0
/* 80578328  38 21 00 10 */	addi r1, r1, 0x10
/* 8057832C  4E 80 00 20 */	blr 
