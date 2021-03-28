lbl_80708D80:
/* 80708D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80708D84  7C 08 02 A6 */	mflr r0
/* 80708D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80708D8C  3C 60 80 71 */	lis r3, data_8070A4E4@ha
/* 80708D90  38 63 A4 E4 */	addi r3, r3, data_8070A4E4@l
/* 80708D94  4B B5 A3 B8 */	b ModuleConstructorsX
/* 80708D98  4B B5 A2 F0 */	b ModuleProlog
/* 80708D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80708DA0  7C 08 03 A6 */	mtlr r0
/* 80708DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80708DA8  4E 80 00 20 */	blr 
