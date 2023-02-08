lbl_80D391B8:
/* 80D391B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D391BC  7C 08 02 A6 */	mflr r0
/* 80D391C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D391C4  4B 33 F7 19 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D391C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D391CC  7C 08 03 A6 */	mtlr r0
/* 80D391D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D391D4  4E 80 00 20 */	blr 
