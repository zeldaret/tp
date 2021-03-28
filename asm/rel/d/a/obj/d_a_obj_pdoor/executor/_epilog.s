lbl_80CA9E4C:
/* 80CA9E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9E50  7C 08 02 A6 */	mflr r0
/* 80CA9E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA9E58  4B 5B 92 34 */	b ModuleEpilog
/* 80CA9E5C  3C 60 80 CB */	lis r3, data_80CAAB1C@ha
/* 80CA9E60  38 63 AB 1C */	addi r3, r3, data_80CAAB1C@l
/* 80CA9E64  4B 5B 93 2C */	b ModuleDestructorsX
/* 80CA9E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA9E6C  7C 08 03 A6 */	mtlr r0
/* 80CA9E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA9E74  4E 80 00 20 */	blr 
