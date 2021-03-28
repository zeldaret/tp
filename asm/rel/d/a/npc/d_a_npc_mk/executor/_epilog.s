lbl_80A73D8C:
/* 80A73D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A73D90  7C 08 02 A6 */	mflr r0
/* 80A73D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73D98  4B 7E F2 F4 */	b ModuleEpilog
/* 80A73D9C  3C 60 80 A7 */	lis r3, data_80A73E04@ha
/* 80A73DA0  38 63 3E 04 */	addi r3, r3, data_80A73E04@l
/* 80A73DA4  4B 7E F3 EC */	b ModuleDestructorsX
/* 80A73DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A73DAC  7C 08 03 A6 */	mtlr r0
/* 80A73DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A73DB4  4E 80 00 20 */	blr 
