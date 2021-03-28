lbl_80D24120:
/* 80D24120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D24124  7C 08 02 A6 */	mflr r0
/* 80D24128  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2412C  3C 60 80 D2 */	lis r3, data_80D26B54@ha
/* 80D24130  38 63 6B 54 */	addi r3, r3, data_80D26B54@l
/* 80D24134  4B 53 F0 18 */	b ModuleConstructorsX
/* 80D24138  4B 53 EF 50 */	b ModuleProlog
/* 80D2413C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D24140  7C 08 03 A6 */	mtlr r0
/* 80D24144  38 21 00 10 */	addi r1, r1, 0x10
/* 80D24148  4E 80 00 20 */	blr 
