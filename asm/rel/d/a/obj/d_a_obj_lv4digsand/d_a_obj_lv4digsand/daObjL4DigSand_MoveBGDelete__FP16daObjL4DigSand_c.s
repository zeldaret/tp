lbl_80C674D4:
/* 80C674D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C674D8  7C 08 02 A6 */	mflr r0
/* 80C674DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C674E0  4B 41 13 FC */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C674E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C674E8  7C 08 03 A6 */	mtlr r0
/* 80C674EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C674F0  4E 80 00 20 */	blr 
