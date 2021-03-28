lbl_80D4260C:
/* 80D4260C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D42610  7C 08 02 A6 */	mflr r0
/* 80D42614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42618  4B 52 0A 74 */	b ModuleEpilog
/* 80D4261C  3C 60 80 D4 */	lis r3, data_80D43D84@ha
/* 80D42620  38 63 3D 84 */	addi r3, r3, data_80D43D84@l
/* 80D42624  4B 52 0B 6C */	b ModuleDestructorsX
/* 80D42628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4262C  7C 08 03 A6 */	mtlr r0
/* 80D42630  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42634  4E 80 00 20 */	blr 
