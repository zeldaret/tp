lbl_804D52CC:
/* 804D52CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D52D0  7C 08 02 A6 */	mflr r0
/* 804D52D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D52D8  4B D8 DD B4 */	b ModuleEpilog
/* 804D52DC  3C 60 80 4D */	lis r3, data_804D5720@ha
/* 804D52E0  38 63 57 20 */	addi r3, r3, data_804D5720@l
/* 804D52E4  4B D8 DE AC */	b ModuleDestructorsX
/* 804D52E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D52EC  7C 08 03 A6 */	mtlr r0
/* 804D52F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D52F4  4E 80 00 20 */	blr 
