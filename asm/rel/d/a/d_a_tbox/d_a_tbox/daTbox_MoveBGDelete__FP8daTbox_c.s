lbl_80496004:
/* 80496004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496008  7C 08 02 A6 */	mflr r0
/* 8049600C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496010  4B BE 28 CC */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 80496014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496018  7C 08 03 A6 */	mtlr r0
/* 8049601C  38 21 00 10 */	addi r1, r1, 0x10
/* 80496020  4E 80 00 20 */	blr 
