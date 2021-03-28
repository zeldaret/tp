lbl_80A07900:
/* 80A07900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A07904  7C 08 02 A6 */	mflr r0
/* 80A07908  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0790C  3C 60 80 A1 */	lis r3, data_80A0C25C@ha
/* 80A07910  38 63 C2 5C */	addi r3, r3, data_80A0C25C@l
/* 80A07914  4B 85 B8 38 */	b ModuleConstructorsX
/* 80A07918  4B 85 B7 70 */	b ModuleProlog
/* 80A0791C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A07920  7C 08 03 A6 */	mtlr r0
/* 80A07924  38 21 00 10 */	addi r1, r1, 0x10
/* 80A07928  4E 80 00 20 */	blr 
