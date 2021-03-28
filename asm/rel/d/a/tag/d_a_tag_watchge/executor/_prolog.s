lbl_80D64260:
/* 80D64260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D64264  7C 08 02 A6 */	mflr r0
/* 80D64268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6426C  3C 60 80 D6 */	lis r3, data_80D644D0@ha
/* 80D64270  38 63 44 D0 */	addi r3, r3, data_80D644D0@l
/* 80D64274  4B 4F EE D8 */	b ModuleConstructorsX
/* 80D64278  4B 4F EE 10 */	b ModuleProlog
/* 80D6427C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64280  7C 08 03 A6 */	mtlr r0
/* 80D64284  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64288  4E 80 00 20 */	blr 
