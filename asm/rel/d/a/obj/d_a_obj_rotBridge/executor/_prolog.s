lbl_80CBE8A0:
/* 80CBE8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBE8A4  7C 08 02 A6 */	mflr r0
/* 80CBE8A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBE8AC  3C 60 80 CC */	lis r3, data_80CBF654@ha
/* 80CBE8B0  38 63 F6 54 */	addi r3, r3, data_80CBF654@l
/* 80CBE8B4  4B 5A 48 98 */	b ModuleConstructorsX
/* 80CBE8B8  4B 5A 47 D0 */	b ModuleProlog
/* 80CBE8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBE8C0  7C 08 03 A6 */	mtlr r0
/* 80CBE8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBE8C8  4E 80 00 20 */	blr 
