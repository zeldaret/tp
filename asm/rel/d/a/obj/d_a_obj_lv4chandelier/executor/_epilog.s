lbl_80C632EC:
/* 80C632EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C632F0  7C 08 02 A6 */	mflr r0
/* 80C632F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C632F8  4B 5F FD 94 */	b ModuleEpilog
/* 80C632FC  3C 60 80 C6 */	lis r3, data_80C6685C@ha
/* 80C63300  38 63 68 5C */	addi r3, r3, data_80C6685C@l
/* 80C63304  4B 5F FE 8C */	b ModuleDestructorsX
/* 80C63308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6330C  7C 08 03 A6 */	mtlr r0
/* 80C63310  38 21 00 10 */	addi r1, r1, 0x10
/* 80C63314  4E 80 00 20 */	blr 
