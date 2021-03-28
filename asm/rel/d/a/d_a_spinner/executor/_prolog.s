lbl_804D18A0:
/* 804D18A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D18A4  7C 08 02 A6 */	mflr r0
/* 804D18A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D18AC  3C 60 80 4D */	lis r3, data_804D4D80@ha
/* 804D18B0  38 63 4D 80 */	addi r3, r3, data_804D4D80@l
/* 804D18B4  4B D9 18 98 */	b ModuleConstructorsX
/* 804D18B8  4B D9 17 D0 */	b ModuleProlog
/* 804D18BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D18C0  7C 08 03 A6 */	mtlr r0
/* 804D18C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D18C8  4E 80 00 20 */	blr 
