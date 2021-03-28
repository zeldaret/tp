lbl_804D50A0:
/* 804D50A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D50A4  7C 08 02 A6 */	mflr r0
/* 804D50A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D50AC  3C 60 80 4D */	lis r3, data_804D5234@ha
/* 804D50B0  38 63 52 34 */	addi r3, r3, data_804D5234@l
/* 804D50B4  4B D8 E0 98 */	b ModuleConstructorsX
/* 804D50B8  4B D8 DF D0 */	b ModuleProlog
/* 804D50BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D50C0  7C 08 03 A6 */	mtlr r0
/* 804D50C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D50C8  4E 80 00 20 */	blr 
