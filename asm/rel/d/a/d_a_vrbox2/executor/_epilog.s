lbl_80498A2C:
/* 80498A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80498A30  7C 08 02 A6 */	mflr r0
/* 80498A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80498A38  4B DC A6 54 */	b ModuleEpilog
/* 80498A3C  3C 60 80 4A */	lis r3, data_80499A68@ha
/* 80498A40  38 63 9A 68 */	addi r3, r3, data_80499A68@l
/* 80498A44  4B DC A7 4C */	b ModuleDestructorsX
/* 80498A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80498A4C  7C 08 03 A6 */	mtlr r0
/* 80498A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80498A54  4E 80 00 20 */	blr 
