lbl_80BB67EC:
/* 80BB67EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB67F0  7C 08 02 A6 */	mflr r0
/* 80BB67F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB67F8  4B 6A C8 94 */	b ModuleEpilog
/* 80BB67FC  3C 60 80 BB */	lis r3, data_80BB7EAC@ha
/* 80BB6800  38 63 7E AC */	addi r3, r3, data_80BB7EAC@l
/* 80BB6804  4B 6A C9 8C */	b ModuleDestructorsX
/* 80BB6808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB680C  7C 08 03 A6 */	mtlr r0
/* 80BB6810  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6814  4E 80 00 20 */	blr 
