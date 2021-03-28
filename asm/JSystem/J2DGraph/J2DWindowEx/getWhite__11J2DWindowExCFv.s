lbl_80302CE8:
/* 80302CE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80302CEC  7C 08 02 A6 */	mflr r0
/* 80302CF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80302CF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80302CF8  7C 7F 1B 78 */	mr r31, r3
/* 80302CFC  38 00 FF FF */	li r0, -1
/* 80302D00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80302D04  90 01 00 08 */	stw r0, 8(r1)
/* 80302D08  7C 83 23 78 */	mr r3, r4
/* 80302D0C  38 81 00 0C */	addi r4, r1, 0xc
/* 80302D10  38 A1 00 08 */	addi r5, r1, 8
/* 80302D14  4B FF FD 39 */	bl getBlackWhite__11J2DWindowExCFPQ28JUtility6TColorPQ28JUtility6TColor
/* 80302D18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80302D1C  40 82 00 10 */	bne lbl_80302D2C
/* 80302D20  38 00 FF FF */	li r0, -1
/* 80302D24  90 1F 00 00 */	stw r0, 0(r31)
/* 80302D28  48 00 00 0C */	b lbl_80302D34
lbl_80302D2C:
/* 80302D2C  80 01 00 08 */	lwz r0, 8(r1)
/* 80302D30  90 1F 00 00 */	stw r0, 0(r31)
lbl_80302D34:
/* 80302D34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80302D38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80302D3C  7C 08 03 A6 */	mtlr r0
/* 80302D40  38 21 00 20 */	addi r1, r1, 0x20
/* 80302D44  4E 80 00 20 */	blr 
