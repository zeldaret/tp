lbl_80B735AC:
/* 80B735AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B735B0  7C 08 02 A6 */	mflr r0
/* 80B735B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B735B8  38 63 0F 90 */	addi r3, r3, 0xf90
/* 80B735BC  4B 7E EA 8C */	b __ptmf_cmpr
/* 80B735C0  7C 60 00 34 */	cntlzw r0, r3
/* 80B735C4  54 03 D9 7E */	srwi r3, r0, 5
/* 80B735C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B735CC  7C 08 03 A6 */	mtlr r0
/* 80B735D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B735D4  4E 80 00 20 */	blr 
