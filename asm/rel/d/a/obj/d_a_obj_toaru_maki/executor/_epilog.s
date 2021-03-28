lbl_80D1302C:
/* 80D1302C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D13030  7C 08 02 A6 */	mflr r0
/* 80D13034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13038  4B 55 00 54 */	b ModuleEpilog
/* 80D1303C  3C 60 80 D1 */	lis r3, data_80D13600@ha
/* 80D13040  38 63 36 00 */	addi r3, r3, data_80D13600@l
/* 80D13044  4B 55 01 4C */	b ModuleDestructorsX
/* 80D13048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1304C  7C 08 03 A6 */	mtlr r0
/* 80D13050  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13054  4E 80 00 20 */	blr 
