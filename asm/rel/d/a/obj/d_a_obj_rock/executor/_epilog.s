lbl_80CBDC4C:
/* 80CBDC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBDC50  7C 08 02 A6 */	mflr r0
/* 80CBDC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBDC58  4B 5A 54 34 */	b ModuleEpilog
/* 80CBDC5C  3C 60 80 CC */	lis r3, data_80CBE7A0@ha
/* 80CBDC60  38 63 E7 A0 */	addi r3, r3, data_80CBE7A0@l
/* 80CBDC64  4B 5A 55 2C */	b ModuleDestructorsX
/* 80CBDC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBDC6C  7C 08 03 A6 */	mtlr r0
/* 80CBDC70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBDC74  4E 80 00 20 */	blr 
