lbl_80CB9998:
/* 80CB9998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB999C  7C 08 02 A6 */	mflr r0
/* 80CB99A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB99A4  4B 3B EF 38 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80CB99A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB99AC  7C 08 03 A6 */	mtlr r0
/* 80CB99B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB99B4  4E 80 00 20 */	blr 
