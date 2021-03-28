lbl_80D39380:
/* 80D39380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39384  7C 08 02 A6 */	mflr r0
/* 80D39388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3938C  3C 60 80 D4 */	lis r3, data_80D39C80@ha
/* 80D39390  38 63 9C 80 */	addi r3, r3, data_80D39C80@l
/* 80D39394  4B 52 9D B8 */	b ModuleConstructorsX
/* 80D39398  4B 52 9C F0 */	b ModuleProlog
/* 80D3939C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D393A0  7C 08 03 A6 */	mtlr r0
/* 80D393A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D393A8  4E 80 00 20 */	blr 
