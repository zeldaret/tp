lbl_804681AC:
/* 804681AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804681B0  7C 08 02 A6 */	mflr r0
/* 804681B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804681B8  4B DF AE D4 */	b ModuleEpilog
/* 804681BC  3C 60 80 47 */	lis r3, data_8046AFC0@ha
/* 804681C0  38 63 AF C0 */	addi r3, r3, data_8046AFC0@l
/* 804681C4  4B DF AF CC */	b ModuleDestructorsX
/* 804681C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804681CC  7C 08 03 A6 */	mtlr r0
/* 804681D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804681D4  4E 80 00 20 */	blr 
