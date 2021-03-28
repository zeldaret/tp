lbl_8048DE00:
/* 8048DE00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048DE04  7C 08 02 A6 */	mflr r0
/* 8048DE08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048DE0C  3C 60 80 49 */	lis r3, data_8048EAD4@ha
/* 8048DE10  38 63 EA D4 */	addi r3, r3, data_8048EAD4@l
/* 8048DE14  4B DD 53 38 */	b ModuleConstructorsX
/* 8048DE18  4B DD 52 70 */	b ModuleProlog
/* 8048DE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048DE20  7C 08 03 A6 */	mtlr r0
/* 8048DE24  38 21 00 10 */	addi r1, r1, 0x10
/* 8048DE28  4E 80 00 20 */	blr 
