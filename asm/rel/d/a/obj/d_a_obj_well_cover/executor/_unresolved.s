lbl_80D36278:
/* 80D36278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3627C  7C 08 02 A6 */	mflr r0
/* 80D36280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D36284  4B 52 CE 0C */	b ModuleUnresolved
/* 80D36288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3628C  7C 08 03 A6 */	mtlr r0
/* 80D36290  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36294  4E 80 00 20 */	blr 
