lbl_80D2020C:
/* 80D2020C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D20210  7C 08 02 A6 */	mflr r0
/* 80D20214  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20218  4B 35 86 C4 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D2021C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20220  7C 08 03 A6 */	mtlr r0
/* 80D20224  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20228  4E 80 00 20 */	blr 
