lbl_80AF4508:
/* 80AF4508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF450C  7C 08 02 A6 */	mflr r0
/* 80AF4510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF4514  38 63 0D DC */	addi r3, r3, 0xddc
/* 80AF4518  4B 86 DB 31 */	bl __ptmf_cmpr
/* 80AF451C  7C 60 00 34 */	cntlzw r0, r3
/* 80AF4520  54 03 D9 7E */	srwi r3, r0, 5
/* 80AF4524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF4528  7C 08 03 A6 */	mtlr r0
/* 80AF452C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF4530  4E 80 00 20 */	blr 
