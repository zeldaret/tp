lbl_8057C960:
/* 8057C960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C964  7C 08 02 A6 */	mflr r0
/* 8057C968  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C96C  3C 60 80 58 */	lis r3, data_8057CAF0@ha
/* 8057C970  38 63 CA F0 */	addi r3, r3, data_8057CAF0@l
/* 8057C974  4B CE 67 D8 */	b ModuleConstructorsX
/* 8057C978  4B CE 67 10 */	b ModuleProlog
/* 8057C97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C980  7C 08 03 A6 */	mtlr r0
/* 8057C984  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C988  4E 80 00 20 */	blr 
