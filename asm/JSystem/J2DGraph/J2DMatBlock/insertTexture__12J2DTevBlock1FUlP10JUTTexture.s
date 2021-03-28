lbl_802EBDE4:
/* 802EBDE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EBDE8  7C 08 02 A6 */	mflr r0
/* 802EBDEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EBDF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EBDF4  93 C1 00 08 */	stw r30, 8(r1)
/* 802EBDF8  7C 7E 1B 78 */	mr r30, r3
/* 802EBDFC  7C BF 2B 78 */	mr r31, r5
/* 802EBE00  80 63 00 50 */	lwz r3, 0x50(r3)
/* 802EBE04  28 03 00 00 */	cmplwi r3, 0
/* 802EBE08  41 82 00 18 */	beq lbl_802EBE20
/* 802EBE0C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802EBE10  28 00 00 00 */	cmplwi r0, 0
/* 802EBE14  41 82 00 0C */	beq lbl_802EBE20
/* 802EBE18  38 60 00 00 */	li r3, 0
/* 802EBE1C  48 00 00 58 */	b lbl_802EBE74
lbl_802EBE20:
/* 802EBE20  28 04 00 00 */	cmplwi r4, 0
/* 802EBE24  40 82 00 0C */	bne lbl_802EBE30
/* 802EBE28  28 1F 00 00 */	cmplwi r31, 0
/* 802EBE2C  40 82 00 0C */	bne lbl_802EBE38
lbl_802EBE30:
/* 802EBE30  38 60 00 00 */	li r3, 0
/* 802EBE34  48 00 00 40 */	b lbl_802EBE74
lbl_802EBE38:
/* 802EBE38  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 802EBE3C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802EBE40  41 82 00 0C */	beq lbl_802EBE4C
/* 802EBE44  38 80 00 01 */	li r4, 1
/* 802EBE48  4B FF 23 ED */	bl __dt__10JUTTextureFv
lbl_802EBE4C:
/* 802EBE4C  93 FE 00 50 */	stw r31, 0x50(r30)
/* 802EBE50  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 802EBE54  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802EBE58  98 1E 00 5C */	stb r0, 0x5c(r30)
/* 802EBE5C  38 00 00 00 */	li r0, 0
/* 802EBE60  90 1E 00 54 */	stw r0, 0x54(r30)
/* 802EBE64  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EBE68  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EBE6C  B0 1E 00 04 */	sth r0, 4(r30)
/* 802EBE70  38 60 00 01 */	li r3, 1
lbl_802EBE74:
/* 802EBE74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EBE78  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EBE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EBE80  7C 08 03 A6 */	mtlr r0
/* 802EBE84  38 21 00 10 */	addi r1, r1, 0x10
/* 802EBE88  4E 80 00 20 */	blr 
