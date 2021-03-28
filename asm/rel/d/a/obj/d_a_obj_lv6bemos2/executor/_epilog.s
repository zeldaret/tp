lbl_80C7E16C:
/* 80C7E16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7E170  7C 08 02 A6 */	mflr r0
/* 80C7E174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7E178  4B 5E 4F 14 */	b ModuleEpilog
/* 80C7E17C  3C 60 80 C8 */	lis r3, data_80C81C28@ha
/* 80C7E180  38 63 1C 28 */	addi r3, r3, data_80C81C28@l
/* 80C7E184  4B 5E 50 0C */	b ModuleDestructorsX
/* 80C7E188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7E18C  7C 08 03 A6 */	mtlr r0
/* 80C7E190  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7E194  4E 80 00 20 */	blr 
