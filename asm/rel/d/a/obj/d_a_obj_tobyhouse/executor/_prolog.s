lbl_80D159C0:
/* 80D159C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D159C4  7C 08 02 A6 */	mflr r0
/* 80D159C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D159CC  3C 60 80 D1 */	lis r3, data_80D1773C@ha
/* 80D159D0  38 63 77 3C */	addi r3, r3, data_80D1773C@l
/* 80D159D4  4B 54 D7 78 */	b ModuleConstructorsX
/* 80D159D8  4B 54 D6 B0 */	b ModuleProlog
/* 80D159DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D159E0  7C 08 03 A6 */	mtlr r0
/* 80D159E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D159E8  4E 80 00 20 */	blr 
