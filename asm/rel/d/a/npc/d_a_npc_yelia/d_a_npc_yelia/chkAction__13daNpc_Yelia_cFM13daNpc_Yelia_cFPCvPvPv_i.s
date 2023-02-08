lbl_80B4F054:
/* 80B4F054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4F058  7C 08 02 A6 */	mflr r0
/* 80B4F05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4F060  38 63 0F B0 */	addi r3, r3, 0xfb0
/* 80B4F064  4B 81 2F E5 */	bl __ptmf_cmpr
/* 80B4F068  7C 60 00 34 */	cntlzw r0, r3
/* 80B4F06C  54 03 D9 7E */	srwi r3, r0, 5
/* 80B4F070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4F074  7C 08 03 A6 */	mtlr r0
/* 80B4F078  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4F07C  4E 80 00 20 */	blr 
