lbl_8045960C:
/* 8045960C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459610  7C 08 02 A6 */	mflr r0
/* 80459614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80459618  4B E0 9A 74 */	b ModuleEpilog
/* 8045961C  3C 60 80 46 */	lis r3, data_8045C9B4@ha
/* 80459620  38 63 C9 B4 */	addi r3, r3, data_8045C9B4@l
/* 80459624  4B E0 9B 6C */	b ModuleDestructorsX
/* 80459628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045962C  7C 08 03 A6 */	mtlr r0
/* 80459630  38 21 00 10 */	addi r1, r1, 0x10
/* 80459634  4E 80 00 20 */	blr 
