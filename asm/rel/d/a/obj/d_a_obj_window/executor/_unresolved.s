lbl_80D38738:
/* 80D38738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3873C  7C 08 02 A6 */	mflr r0
/* 80D38740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38744  4B 52 A9 4C */	b ModuleUnresolved
/* 80D38748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3874C  7C 08 03 A6 */	mtlr r0
/* 80D38750  38 21 00 10 */	addi r1, r1, 0x10
/* 80D38754  4E 80 00 20 */	blr 
