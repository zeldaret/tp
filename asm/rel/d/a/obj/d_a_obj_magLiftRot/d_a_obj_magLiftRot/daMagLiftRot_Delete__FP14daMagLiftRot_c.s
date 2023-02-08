lbl_80C8F9FC:
/* 80C8F9FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8FA00  7C 08 02 A6 */	mflr r0
/* 80C8FA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8FA08  4B 3E 8E D5 */	bl MoveBGDelete__16dBgS_MoveBgActorFv
/* 80C8FA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8FA10  7C 08 03 A6 */	mtlr r0
/* 80C8FA14  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8FA18  4E 80 00 20 */	blr 
