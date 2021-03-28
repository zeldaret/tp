lbl_80302C88:
/* 80302C88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80302C8C  7C 08 02 A6 */	mflr r0
/* 80302C90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80302C94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80302C98  7C 7F 1B 78 */	mr r31, r3
/* 80302C9C  38 00 FF FF */	li r0, -1
/* 80302CA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80302CA4  90 01 00 08 */	stw r0, 8(r1)
/* 80302CA8  7C 83 23 78 */	mr r3, r4
/* 80302CAC  38 81 00 0C */	addi r4, r1, 0xc
/* 80302CB0  38 A1 00 08 */	addi r5, r1, 8
/* 80302CB4  4B FF FD 99 */	bl getBlackWhite__11J2DWindowExCFPQ28JUtility6TColorPQ28JUtility6TColor
/* 80302CB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80302CBC  40 82 00 10 */	bne lbl_80302CCC
/* 80302CC0  38 00 00 00 */	li r0, 0
/* 80302CC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80302CC8  48 00 00 0C */	b lbl_80302CD4
lbl_80302CCC:
/* 80302CCC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80302CD0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80302CD4:
/* 80302CD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80302CD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80302CDC  7C 08 03 A6 */	mtlr r0
/* 80302CE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80302CE4  4E 80 00 20 */	blr 
