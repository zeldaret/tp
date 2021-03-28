lbl_80D59780:
/* 80D59780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59784  7C 08 02 A6 */	mflr r0
/* 80D59788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5978C  3C 60 80 D6 */	lis r3, data_80D59A10@ha
/* 80D59790  38 63 9A 10 */	addi r3, r3, data_80D59A10@l
/* 80D59794  4B 50 99 B8 */	b ModuleConstructorsX
/* 80D59798  4B 50 98 F0 */	b ModuleProlog
/* 80D5979C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D597A0  7C 08 03 A6 */	mtlr r0
/* 80D597A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D597A8  4E 80 00 20 */	blr 
