lbl_80D03BBC:
/* 80D03BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D03BC0  7C 08 02 A6 */	mflr r0
/* 80D03BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D03BC8  4B 37 4D 15 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80D03BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D03BD0  7C 08 03 A6 */	mtlr r0
/* 80D03BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D03BD8  4E 80 00 20 */	blr 
