lbl_80C6282C:
/* 80C6282C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62830  7C 08 02 A6 */	mflr r0
/* 80C62834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62838  4B 60 08 54 */	b ModuleEpilog
/* 80C6283C  3C 60 80 C6 */	lis r3, data_80C6316C@ha
/* 80C62840  38 63 31 6C */	addi r3, r3, data_80C6316C@l
/* 80C62844  4B 60 09 4C */	b ModuleDestructorsX
/* 80C62848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6284C  7C 08 03 A6 */	mtlr r0
/* 80C62850  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62854  4E 80 00 20 */	blr 
