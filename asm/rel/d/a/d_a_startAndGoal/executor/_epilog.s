lbl_80D4D76C:
/* 80D4D76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D770  7C 08 02 A6 */	mflr r0
/* 80D4D774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D778  4B 51 59 14 */	b ModuleEpilog
/* 80D4D77C  3C 60 80 D5 */	lis r3, data_80D4DEB4@ha
/* 80D4D780  38 63 DE B4 */	addi r3, r3, data_80D4DEB4@l
/* 80D4D784  4B 51 5A 0C */	b ModuleDestructorsX
/* 80D4D788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D78C  7C 08 03 A6 */	mtlr r0
/* 80D4D790  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D794  4E 80 00 20 */	blr 
