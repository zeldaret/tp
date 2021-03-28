lbl_804E1D4C:
/* 804E1D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1D50  7C 08 02 A6 */	mflr r0
/* 804E1D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1D58  4B D8 13 34 */	b ModuleEpilog
/* 804E1D5C  3C 60 80 4E */	lis r3, data_804E4A10@ha
/* 804E1D60  38 63 4A 10 */	addi r3, r3, data_804E4A10@l
/* 804E1D64  4B D8 14 2C */	b ModuleDestructorsX
/* 804E1D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1D6C  7C 08 03 A6 */	mtlr r0
/* 804E1D70  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1D74  4E 80 00 20 */	blr 
