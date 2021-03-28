lbl_80CAC780:
/* 80CAC780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAC784  7C 08 02 A6 */	mflr r0
/* 80CAC788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAC78C  3C 60 80 CB */	lis r3, data_80CAD1B0@ha
/* 80CAC790  38 63 D1 B0 */	addi r3, r3, data_80CAD1B0@l
/* 80CAC794  4B 5B 69 B8 */	b ModuleConstructorsX
/* 80CAC798  4B 5B 68 F0 */	b ModuleProlog
/* 80CAC79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAC7A0  7C 08 03 A6 */	mtlr r0
/* 80CAC7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAC7A8  4E 80 00 20 */	blr 
