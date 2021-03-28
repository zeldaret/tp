lbl_80D46E00:
/* 80D46E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D46E04  7C 08 02 A6 */	mflr r0
/* 80D46E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D46E0C  3C 60 80 D5 */	lis r3, data_80D4C04C@ha
/* 80D46E10  38 63 C0 4C */	addi r3, r3, data_80D4C04C@l
/* 80D46E14  4B 51 C3 38 */	b ModuleConstructorsX
/* 80D46E18  4B 51 C2 70 */	b ModuleProlog
/* 80D46E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D46E20  7C 08 03 A6 */	mtlr r0
/* 80D46E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80D46E28  4E 80 00 20 */	blr 
