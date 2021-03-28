lbl_80595DEC:
/* 80595DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595DF0  7C 08 02 A6 */	mflr r0
/* 80595DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595DF8  4B CC D2 94 */	b ModuleEpilog
/* 80595DFC  3C 60 80 59 */	lis r3, data_80597D78@ha
/* 80595E00  38 63 7D 78 */	addi r3, r3, data_80597D78@l
/* 80595E04  4B CC D3 8C */	b ModuleDestructorsX
/* 80595E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595E0C  7C 08 03 A6 */	mtlr r0
/* 80595E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80595E14  4E 80 00 20 */	blr 
