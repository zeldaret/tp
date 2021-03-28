lbl_80A458A0:
/* 80A458A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A458A4  7C 08 02 A6 */	mflr r0
/* 80A458A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A458AC  3C 60 80 A5 */	lis r3, data_80A486FC@ha
/* 80A458B0  38 63 86 FC */	addi r3, r3, data_80A486FC@l
/* 80A458B4  4B 81 D8 98 */	b ModuleConstructorsX
/* 80A458B8  4B 81 D7 D0 */	b ModuleProlog
/* 80A458BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A458C0  7C 08 03 A6 */	mtlr r0
/* 80A458C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A458C8  4E 80 00 20 */	blr 
