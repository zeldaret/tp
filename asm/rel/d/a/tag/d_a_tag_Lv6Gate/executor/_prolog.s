lbl_80D4F820:
/* 80D4F820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F824  7C 08 02 A6 */	mflr r0
/* 80D4F828  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F82C  3C 60 80 D5 */	lis r3, data_80D50900@ha
/* 80D4F830  38 63 09 00 */	addi r3, r3, data_80D50900@l
/* 80D4F834  4B 51 39 18 */	b ModuleConstructorsX
/* 80D4F838  4B 51 38 50 */	b ModuleProlog
/* 80D4F83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F840  7C 08 03 A6 */	mtlr r0
/* 80D4F844  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F848  4E 80 00 20 */	blr 
