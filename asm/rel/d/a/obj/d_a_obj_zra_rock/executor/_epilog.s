lbl_80D44C6C:
/* 80D44C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44C70  7C 08 02 A6 */	mflr r0
/* 80D44C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D44C78  4B 51 E4 14 */	b ModuleEpilog
/* 80D44C7C  3C 60 80 D4 */	lis r3, data_80D455C0@ha
/* 80D44C80  38 63 55 C0 */	addi r3, r3, data_80D455C0@l
/* 80D44C84  4B 51 E5 0C */	b ModuleDestructorsX
/* 80D44C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44C8C  7C 08 03 A6 */	mtlr r0
/* 80D44C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44C94  4E 80 00 20 */	blr 
