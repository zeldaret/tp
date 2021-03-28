lbl_80CF0000:
/* 80CF0000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF0004  7C 08 02 A6 */	mflr r0
/* 80CF0008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF000C  3C 60 80 CF */	lis r3, data_80CF0518@ha
/* 80CF0010  38 63 05 18 */	addi r3, r3, data_80CF0518@l
/* 80CF0014  4B 57 31 38 */	b ModuleConstructorsX
/* 80CF0018  4B 57 30 70 */	b ModuleProlog
/* 80CF001C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF0020  7C 08 03 A6 */	mtlr r0
/* 80CF0024  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF0028  4E 80 00 20 */	blr 
