lbl_80D201EC:
/* 80D201EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D201F0  7C 08 02 A6 */	mflr r0
/* 80D201F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D201F8  4B 35 87 58 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D201FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20200  7C 08 03 A6 */	mtlr r0
/* 80D20204  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20208  4E 80 00 20 */	blr 
