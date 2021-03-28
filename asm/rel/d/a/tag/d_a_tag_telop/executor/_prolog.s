lbl_804909E0:
/* 804909E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804909E4  7C 08 02 A6 */	mflr r0
/* 804909E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804909EC  3C 60 80 49 */	lis r3, data_80490BE0@ha
/* 804909F0  38 63 0B E0 */	addi r3, r3, data_80490BE0@l
/* 804909F4  4B DD 27 58 */	b ModuleConstructorsX
/* 804909F8  4B DD 26 90 */	b ModuleProlog
/* 804909FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490A00  7C 08 03 A6 */	mtlr r0
/* 80490A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80490A08  4E 80 00 20 */	blr 
