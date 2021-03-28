lbl_80677D40:
/* 80677D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80677D44  7C 08 02 A6 */	mflr r0
/* 80677D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80677D4C  3C 60 80 68 */	lis r3, data_80678EC4@ha
/* 80677D50  38 63 8E C4 */	addi r3, r3, data_80678EC4@l
/* 80677D54  4B BE B3 F8 */	b ModuleConstructorsX
/* 80677D58  4B BE B3 30 */	b ModuleProlog
/* 80677D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80677D60  7C 08 03 A6 */	mtlr r0
/* 80677D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80677D68  4E 80 00 20 */	blr 
