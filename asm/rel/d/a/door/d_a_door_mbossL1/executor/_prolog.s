lbl_806727C0:
/* 806727C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806727C4  7C 08 02 A6 */	mflr r0
/* 806727C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806727CC  3C 60 80 67 */	lis r3, data_80677550@ha
/* 806727D0  38 63 75 50 */	addi r3, r3, data_80677550@l
/* 806727D4  4B BF 09 78 */	b ModuleConstructorsX
/* 806727D8  4B BF 08 B0 */	b ModuleProlog
/* 806727DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806727E0  7C 08 03 A6 */	mtlr r0
/* 806727E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806727E8  4E 80 00 20 */	blr 
