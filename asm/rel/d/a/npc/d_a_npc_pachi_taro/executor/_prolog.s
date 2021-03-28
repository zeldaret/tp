lbl_80A9C1A0:
/* 80A9C1A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9C1A4  7C 08 02 A6 */	mflr r0
/* 80A9C1A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9C1AC  3C 60 80 AA */	lis r3, data_80AA15F0@ha
/* 80A9C1B0  38 63 15 F0 */	addi r3, r3, data_80AA15F0@l
/* 80A9C1B4  4B 7C 6F 98 */	b ModuleConstructorsX
/* 80A9C1B8  4B 7C 6E D0 */	b ModuleProlog
/* 80A9C1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9C1C0  7C 08 03 A6 */	mtlr r0
/* 80A9C1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9C1C8  4E 80 00 20 */	blr 
