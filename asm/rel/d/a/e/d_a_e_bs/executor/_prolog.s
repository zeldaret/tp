lbl_8068E040:
/* 8068E040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068E044  7C 08 02 A6 */	mflr r0
/* 8068E048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068E04C  3C 60 80 69 */	lis r3, data_80690DC4@ha
/* 8068E050  38 63 0D C4 */	addi r3, r3, data_80690DC4@l
/* 8068E054  4B BD 50 F8 */	b ModuleConstructorsX
/* 8068E058  4B BD 50 30 */	b ModuleProlog
/* 8068E05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068E060  7C 08 03 A6 */	mtlr r0
/* 8068E064  38 21 00 10 */	addi r1, r1, 0x10
/* 8068E068  4E 80 00 20 */	blr 
