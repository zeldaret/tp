lbl_80B4B348:
/* 80B4B348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4B34C  7C 08 02 A6 */	mflr r0
/* 80B4B350  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4B354  38 63 0F 94 */	addi r3, r3, 0xf94
/* 80B4B358  4B 81 6C F0 */	b __ptmf_cmpr
/* 80B4B35C  7C 60 00 34 */	cntlzw r0, r3
/* 80B4B360  54 03 D9 7E */	srwi r3, r0, 5
/* 80B4B364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4B368  7C 08 03 A6 */	mtlr r0
/* 80B4B36C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4B370  4E 80 00 20 */	blr 
