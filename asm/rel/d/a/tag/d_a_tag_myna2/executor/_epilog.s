lbl_80D5C64C:
/* 80D5C64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5C650  7C 08 02 A6 */	mflr r0
/* 80D5C654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5C658  4B 50 6A 34 */	b ModuleEpilog
/* 80D5C65C  3C 60 80 D6 */	lis r3, data_80D5CA38@ha
/* 80D5C660  38 63 CA 38 */	addi r3, r3, data_80D5CA38@l
/* 80D5C664  4B 50 6B 2C */	b ModuleDestructorsX
/* 80D5C668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5C66C  7C 08 03 A6 */	mtlr r0
/* 80D5C670  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5C674  4E 80 00 20 */	blr 
