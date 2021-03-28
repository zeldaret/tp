lbl_80BE8160:
/* 80BE8160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE8164  7C 08 02 A6 */	mflr r0
/* 80BE8168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE816C  3C 60 80 BF */	lis r3, data_80BE8F20@ha
/* 80BE8170  38 63 8F 20 */	addi r3, r3, data_80BE8F20@l
/* 80BE8174  4B 67 AF D8 */	b ModuleConstructorsX
/* 80BE8178  4B 67 AF 10 */	b ModuleProlog
/* 80BE817C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE8180  7C 08 03 A6 */	mtlr r0
/* 80BE8184  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE8188  4E 80 00 20 */	blr 
