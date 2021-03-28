lbl_80D44040:
/* 80D44040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44044  7C 08 02 A6 */	mflr r0
/* 80D44048  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4404C  3C 60 80 D4 */	lis r3, data_80D44B40@ha
/* 80D44050  38 63 4B 40 */	addi r3, r3, data_80D44B40@l
/* 80D44054  4B 51 F0 F8 */	b ModuleConstructorsX
/* 80D44058  4B 51 F0 30 */	b ModuleProlog
/* 80D4405C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44060  7C 08 03 A6 */	mtlr r0
/* 80D44064  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44068  4E 80 00 20 */	blr 
