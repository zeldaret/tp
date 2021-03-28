lbl_80C350A0:
/* 80C350A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C350A4  7C 08 02 A6 */	mflr r0
/* 80C350A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C350AC  3C 60 80 C4 */	lis r3, data_80C383F4@ha
/* 80C350B0  38 63 83 F4 */	addi r3, r3, data_80C383F4@l
/* 80C350B4  4B 62 E0 98 */	b ModuleConstructorsX
/* 80C350B8  4B 62 DF D0 */	b ModuleProlog
/* 80C350BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C350C0  7C 08 03 A6 */	mtlr r0
/* 80C350C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C350C8  4E 80 00 20 */	blr 
