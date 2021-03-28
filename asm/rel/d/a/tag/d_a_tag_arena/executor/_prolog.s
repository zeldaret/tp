lbl_80D55C60:
/* 80D55C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55C64  7C 08 02 A6 */	mflr r0
/* 80D55C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55C6C  3C 60 80 D5 */	lis r3, data_80D55D58@ha
/* 80D55C70  38 63 5D 58 */	addi r3, r3, data_80D55D58@l
/* 80D55C74  4B 50 D4 D8 */	b ModuleConstructorsX
/* 80D55C78  4B 50 D4 10 */	b ModuleProlog
/* 80D55C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55C80  7C 08 03 A6 */	mtlr r0
/* 80D55C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55C88  4E 80 00 20 */	blr 
