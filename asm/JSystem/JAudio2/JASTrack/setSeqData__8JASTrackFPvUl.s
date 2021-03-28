lbl_80291A08:
/* 80291A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80291A0C  7C 08 02 A6 */	mflr r0
/* 80291A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80291A14  48 00 1F 6D */	bl start__10JASSeqCtrlFPvUl
/* 80291A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80291A1C  7C 08 03 A6 */	mtlr r0
/* 80291A20  38 21 00 10 */	addi r1, r1, 0x10
/* 80291A24  4E 80 00 20 */	blr 
