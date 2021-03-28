lbl_80968880:
/* 80968880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80968884  7C 08 02 A6 */	mflr r0
/* 80968888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096888C  3C 60 80 97 */	lis r3, data_8096C90C@ha
/* 80968890  38 63 C9 0C */	addi r3, r3, data_8096C90C@l
/* 80968894  4B 8F A8 B8 */	b ModuleConstructorsX
/* 80968898  4B 8F A7 F0 */	b ModuleProlog
/* 8096889C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809688A0  7C 08 03 A6 */	mtlr r0
/* 809688A4  38 21 00 10 */	addi r1, r1, 0x10
/* 809688A8  4E 80 00 20 */	blr 
