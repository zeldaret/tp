lbl_80714040:
/* 80714040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80714044  7C 08 02 A6 */	mflr r0
/* 80714048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071404C  3C 60 80 72 */	lis r3, data_8071C530@ha
/* 80714050  38 63 C5 30 */	addi r3, r3, data_8071C530@l
/* 80714054  4B B4 F0 F8 */	b ModuleConstructorsX
/* 80714058  4B B4 F0 30 */	b ModuleProlog
/* 8071405C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80714060  7C 08 03 A6 */	mtlr r0
/* 80714064  38 21 00 10 */	addi r1, r1, 0x10
/* 80714068  4E 80 00 20 */	blr 
