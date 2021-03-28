lbl_80C26D90:
/* 80C26D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C26D94  7C 08 02 A6 */	mflr r0
/* 80C26D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26D9C  4B 45 1B 40 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C26DA0  38 60 00 01 */	li r3, 1
/* 80C26DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C26DA8  7C 08 03 A6 */	mtlr r0
/* 80C26DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C26DB0  4E 80 00 20 */	blr 
