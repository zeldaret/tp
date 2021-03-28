lbl_80D4406C:
/* 80D4406C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D44070  7C 08 02 A6 */	mflr r0
/* 80D44074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D44078  4B 51 F0 14 */	b ModuleEpilog
/* 80D4407C  3C 60 80 D4 */	lis r3, data_80D44B44@ha
/* 80D44080  38 63 4B 44 */	addi r3, r3, data_80D44B44@l
/* 80D44084  4B 51 F1 0C */	b ModuleDestructorsX
/* 80D44088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4408C  7C 08 03 A6 */	mtlr r0
/* 80D44090  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44094  4E 80 00 20 */	blr 
