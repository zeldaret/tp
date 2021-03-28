lbl_800DCDF0:
/* 800DCDF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DCDF4  7C 08 02 A6 */	mflr r0
/* 800DCDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DCDFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DCE00  93 C1 00 08 */	stw r30, 8(r1)
/* 800DCE04  7C 7E 1B 78 */	mr r30, r3
/* 800DCE08  3B E0 00 00 */	li r31, 0
/* 800DCE0C  80 03 05 78 */	lwz r0, 0x578(r3)
/* 800DCE10  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 800DCE14  41 82 00 3C */	beq lbl_800DCE50
/* 800DCE18  48 03 8E 09 */	bl checkEventRun__9daAlink_cCFv
/* 800DCE1C  2C 03 00 00 */	cmpwi r3, 0
/* 800DCE20  40 82 00 30 */	bne lbl_800DCE50
/* 800DCE24  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800DCE28  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800DCE2C  40 82 00 24 */	bne lbl_800DCE50
/* 800DCE30  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800DCE34  28 00 00 1F */	cmplwi r0, 0x1f
/* 800DCE38  41 82 00 18 */	beq lbl_800DCE50
/* 800DCE3C  28 00 00 25 */	cmplwi r0, 0x25
/* 800DCE40  41 82 00 10 */	beq lbl_800DCE50
/* 800DCE44  28 00 00 1E */	cmplwi r0, 0x1e
/* 800DCE48  41 82 00 08 */	beq lbl_800DCE50
/* 800DCE4C  3B E0 00 01 */	li r31, 1
lbl_800DCE50:
/* 800DCE50  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800DCE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DCE58  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DCE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DCE60  7C 08 03 A6 */	mtlr r0
/* 800DCE64  38 21 00 10 */	addi r1, r1, 0x10
/* 800DCE68  4E 80 00 20 */	blr 
