lbl_80C5773C:
/* 80C5773C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57740  7C 08 02 A6 */	mflr r0
/* 80C57744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57748  4B 42 11 95 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C5774C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57750  7C 08 03 A6 */	mtlr r0
/* 80C57754  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57758  4E 80 00 20 */	blr 
