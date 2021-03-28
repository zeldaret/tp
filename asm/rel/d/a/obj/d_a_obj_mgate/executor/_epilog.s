lbl_8059356C:
/* 8059356C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593570  7C 08 02 A6 */	mflr r0
/* 80593574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593578  4B CC FB 14 */	b ModuleEpilog
/* 8059357C  3C 60 80 59 */	lis r3, data_80593E44@ha
/* 80593580  38 63 3E 44 */	addi r3, r3, data_80593E44@l
/* 80593584  4B CC FC 0C */	b ModuleDestructorsX
/* 80593588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059358C  7C 08 03 A6 */	mtlr r0
/* 80593590  38 21 00 10 */	addi r1, r1, 0x10
/* 80593594  4E 80 00 20 */	blr 
