lbl_80CC06A0:
/* 80CC06A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC06A4  7C 08 02 A6 */	mflr r0
/* 80CC06A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC06AC  4B 3B 82 30 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CC06B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC06B4  7C 08 03 A6 */	mtlr r0
/* 80CC06B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC06BC  4E 80 00 20 */	blr 
