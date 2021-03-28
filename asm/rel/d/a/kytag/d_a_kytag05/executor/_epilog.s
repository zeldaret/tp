lbl_80528A0C:
/* 80528A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528A10  7C 08 02 A6 */	mflr r0
/* 80528A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528A18  4B D3 A6 74 */	b ModuleEpilog
/* 80528A1C  3C 60 80 53 */	lis r3, data_80528B14@ha
/* 80528A20  38 63 8B 14 */	addi r3, r3, data_80528B14@l
/* 80528A24  4B D3 A7 6C */	b ModuleDestructorsX
/* 80528A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528A2C  7C 08 03 A6 */	mtlr r0
/* 80528A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80528A34  4E 80 00 20 */	blr 
