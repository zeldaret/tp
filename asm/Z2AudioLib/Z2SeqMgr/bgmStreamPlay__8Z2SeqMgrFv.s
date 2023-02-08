lbl_802AFE18:
/* 802AFE18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AFE1C  7C 08 02 A6 */	mflr r0
/* 802AFE20  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AFE24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AFE28  7C 7F 1B 78 */	mr r31, r3
/* 802AFE2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802AFE30  28 03 00 00 */	cmplwi r3, 0
/* 802AFE34  41 82 00 0C */	beq lbl_802AFE40
/* 802AFE38  38 63 00 1C */	addi r3, r3, 0x1c
/* 802AFE3C  4B FF 24 09 */	bl unlockIfLocked__15JAISoundStatus_Fv
lbl_802AFE40:
/* 802AFE40  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802AFE44  28 03 00 00 */	cmplwi r3, 0
/* 802AFE48  41 82 00 10 */	beq lbl_802AFE58
/* 802AFE4C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802AFE50  90 81 00 0C */	stw r4, 0xc(r1)
/* 802AFE54  48 00 00 08 */	b lbl_802AFE5C
lbl_802AFE58:
/* 802AFE58  38 80 FF FF */	li r4, -1
lbl_802AFE5C:
/* 802AFE5C  3C 04 00 01 */	addis r0, r4, 1
/* 802AFE60  28 00 FF FF */	cmplwi r0, 0xffff
/* 802AFE64  40 82 00 1C */	bne lbl_802AFE80
/* 802AFE68  80 7F 00 00 */	lwz r3, 0(r31)
/* 802AFE6C  28 03 00 00 */	cmplwi r3, 0
/* 802AFE70  41 82 00 58 */	beq lbl_802AFEC8
/* 802AFE74  38 80 00 1E */	li r4, 0x1e
/* 802AFE78  4B FF 26 65 */	bl stop__8JAISoundFUl
/* 802AFE7C  48 00 00 4C */	b lbl_802AFEC8
lbl_802AFE80:
/* 802AFE80  28 03 00 00 */	cmplwi r3, 0
/* 802AFE84  41 82 00 10 */	beq lbl_802AFE94
/* 802AFE88  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802AFE8C  90 81 00 08 */	stw r4, 8(r1)
/* 802AFE90  48 00 00 08 */	b lbl_802AFE98
lbl_802AFE94:
/* 802AFE94  38 80 FF FF */	li r4, -1
lbl_802AFE98:
/* 802AFE98  3C 04 FE 00 */	addis r0, r4, 0xfe00
/* 802AFE9C  28 00 00 00 */	cmplwi r0, 0
/* 802AFEA0  40 82 00 28 */	bne lbl_802AFEC8
/* 802AFEA4  28 03 00 00 */	cmplwi r3, 0
/* 802AFEA8  41 82 00 08 */	beq lbl_802AFEB0
/* 802AFEAC  4B FF 26 ED */	bl stop__8JAISoundFv
lbl_802AFEB0:
/* 802AFEB0  7F E3 FB 78 */	mr r3, r31
/* 802AFEB4  3C 80 01 00 */	lis r4, 0x0100 /* 0x010000A9@ha */
/* 802AFEB8  38 84 00 A9 */	addi r4, r4, 0x00A9 /* 0x010000A9@l */
/* 802AFEBC  38 A0 00 00 */	li r5, 0
/* 802AFEC0  38 C0 00 00 */	li r6, 0
/* 802AFEC4  4B FF F1 4D */	bl bgmStart__8Z2SeqMgrFUlUll
lbl_802AFEC8:
/* 802AFEC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AFECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AFED0  7C 08 03 A6 */	mtlr r0
/* 802AFED4  38 21 00 20 */	addi r1, r1, 0x20
/* 802AFED8  4E 80 00 20 */	blr 
