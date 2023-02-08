lbl_80C6D390:
/* 80C6D390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D394  7C 08 02 A6 */	mflr r0
/* 80C6D398  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D39C  4B 40 B5 41 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C6D3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D3A4  7C 08 03 A6 */	mtlr r0
/* 80C6D3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D3AC  4E 80 00 20 */	blr 
