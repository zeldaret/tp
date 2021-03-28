lbl_80845E4C:
/* 80845E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80845E50  7C 08 02 A6 */	mflr r0
/* 80845E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80845E58  4B A1 D2 34 */	b ModuleEpilog
/* 80845E5C  3C 60 80 85 */	lis r3, data_80848E38@ha
/* 80845E60  38 63 8E 38 */	addi r3, r3, data_80848E38@l
/* 80845E64  4B A1 D3 2C */	b ModuleDestructorsX
/* 80845E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80845E6C  7C 08 03 A6 */	mtlr r0
/* 80845E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80845E74  4E 80 00 20 */	blr 
