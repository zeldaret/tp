lbl_80CB24C8:
/* 80CB24C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB24CC  7C 08 02 A6 */	mflr r0
/* 80CB24D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB24D4  4B 3C 64 09 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CB24D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB24DC  7C 08 03 A6 */	mtlr r0
/* 80CB24E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB24E4  4E 80 00 20 */	blr 
