lbl_80D0648C:
/* 80D0648C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06490  7C 08 02 A6 */	mflr r0
/* 80D06494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D06498  4B 37 24 44 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D0649C  38 60 00 01 */	li r3, 1
/* 80D064A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D064A4  7C 08 03 A6 */	mtlr r0
/* 80D064A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D064AC  4E 80 00 20 */	blr 
