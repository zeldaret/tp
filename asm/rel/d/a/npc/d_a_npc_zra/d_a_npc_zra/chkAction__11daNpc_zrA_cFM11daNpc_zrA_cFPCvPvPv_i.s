lbl_80B7DAF4:
/* 80B7DAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7DAF8  7C 08 02 A6 */	mflr r0
/* 80B7DAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7DB00  38 63 14 80 */	addi r3, r3, 0x1480
/* 80B7DB04  4B 7E 45 45 */	bl __ptmf_cmpr
/* 80B7DB08  7C 60 00 34 */	cntlzw r0, r3
/* 80B7DB0C  54 03 D9 7E */	srwi r3, r0, 5
/* 80B7DB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7DB14  7C 08 03 A6 */	mtlr r0
/* 80B7DB18  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7DB1C  4E 80 00 20 */	blr 
