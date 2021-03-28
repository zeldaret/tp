lbl_80D063C0:
/* 80D063C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D063C4  7C 08 02 A6 */	mflr r0
/* 80D063C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D063CC  3C 60 80 D0 */	lis r3, data_80D06BFC@ha
/* 80D063D0  38 63 6B FC */	addi r3, r3, data_80D06BFC@l
/* 80D063D4  4B 55 CD 78 */	b ModuleConstructorsX
/* 80D063D8  4B 55 CC B0 */	b ModuleProlog
/* 80D063DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D063E0  7C 08 03 A6 */	mtlr r0
/* 80D063E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D063E8  4E 80 00 20 */	blr 
