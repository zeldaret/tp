lbl_80C68580:
/* 80C68580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68584  7C 08 02 A6 */	mflr r0
/* 80C68588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6858C  3C 60 80 C7 */	lis r3, data_80C68B60@ha
/* 80C68590  38 63 8B 60 */	addi r3, r3, data_80C68B60@l
/* 80C68594  4B 5F AB B8 */	b ModuleConstructorsX
/* 80C68598  4B 5F AA F0 */	b ModuleProlog
/* 80C6859C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C685A0  7C 08 03 A6 */	mtlr r0
/* 80C685A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C685A8  4E 80 00 20 */	blr 
