lbl_80BAD400:
/* 80BAD400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD404  7C 08 02 A6 */	mflr r0
/* 80BAD408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD40C  4B 4C B4 D0 */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80BAD410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD414  7C 08 03 A6 */	mtlr r0
/* 80BAD418  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD41C  4E 80 00 20 */	blr 
