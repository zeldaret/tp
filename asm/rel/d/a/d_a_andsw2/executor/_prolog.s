lbl_804D5D80:
/* 804D5D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5D84  7C 08 02 A6 */	mflr r0
/* 804D5D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5D8C  3C 60 80 4D */	lis r3, data_804D6AC0@ha
/* 804D5D90  38 63 6A C0 */	addi r3, r3, data_804D6AC0@l
/* 804D5D94  4B D8 D3 B8 */	b ModuleConstructorsX
/* 804D5D98  4B D8 D2 F0 */	b ModuleProlog
/* 804D5D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5DA0  7C 08 03 A6 */	mtlr r0
/* 804D5DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5DA8  4E 80 00 20 */	blr 
