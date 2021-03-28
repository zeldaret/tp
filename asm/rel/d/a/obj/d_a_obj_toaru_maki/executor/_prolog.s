lbl_80D13000:
/* 80D13000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D13004  7C 08 02 A6 */	mflr r0
/* 80D13008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1300C  3C 60 80 D1 */	lis r3, data_80D135FC@ha
/* 80D13010  38 63 35 FC */	addi r3, r3, data_80D135FC@l
/* 80D13014  4B 55 01 38 */	b ModuleConstructorsX
/* 80D13018  4B 55 00 70 */	b ModuleProlog
/* 80D1301C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D13020  7C 08 03 A6 */	mtlr r0
/* 80D13024  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13028  4E 80 00 20 */	blr 
