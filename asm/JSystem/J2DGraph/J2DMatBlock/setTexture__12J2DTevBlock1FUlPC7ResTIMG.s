lbl_802EBE8C:
/* 802EBE8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EBE90  7C 08 02 A6 */	mflr r0
/* 802EBE94  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EBE98  39 61 00 20 */	addi r11, r1, 0x20
/* 802EBE9C  48 07 63 41 */	bl _savegpr_29
/* 802EBEA0  7C 7F 1B 78 */	mr r31, r3
/* 802EBEA4  7C BD 2B 78 */	mr r29, r5
/* 802EBEA8  28 04 00 00 */	cmplwi r4, 0
/* 802EBEAC  41 82 00 0C */	beq lbl_802EBEB8
/* 802EBEB0  38 60 00 00 */	li r3, 0
/* 802EBEB4  48 00 01 50 */	b lbl_802EC004
lbl_802EBEB8:
/* 802EBEB8  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802EBEBC  28 03 00 00 */	cmplwi r3, 0
/* 802EBEC0  40 82 00 78 */	bne lbl_802EBF38
/* 802EBEC4  28 1D 00 00 */	cmplwi r29, 0
/* 802EBEC8  41 82 00 60 */	beq lbl_802EBF28
/* 802EBECC  38 60 00 40 */	li r3, 0x40
/* 802EBED0  4B FE 2D 7D */	bl __nw__FUl
/* 802EBED4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802EBED8  41 82 00 24 */	beq lbl_802EBEFC
/* 802EBEDC  38 00 00 00 */	li r0, 0
/* 802EBEE0  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802EBEE4  7F A4 EB 78 */	mr r4, r29
/* 802EBEE8  38 A0 00 00 */	li r5, 0
/* 802EBEEC  4B FF 23 BD */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EBEF0  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802EBEF4  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EBEF8  98 1E 00 3B */	stb r0, 0x3b(r30)
lbl_802EBEFC:
/* 802EBEFC  93 DF 00 50 */	stw r30, 0x50(r31)
/* 802EBF00  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 802EBF04  28 00 00 00 */	cmplwi r0, 0
/* 802EBF08  40 82 00 0C */	bne lbl_802EBF14
/* 802EBF0C  38 60 00 00 */	li r3, 0
/* 802EBF10  48 00 00 F4 */	b lbl_802EC004
lbl_802EBF14:
/* 802EBF14  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 802EBF18  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802EBF1C  60 00 00 01 */	ori r0, r0, 1
/* 802EBF20  98 1F 00 5C */	stb r0, 0x5c(r31)
/* 802EBF24  48 00 00 C0 */	b lbl_802EBFE4
lbl_802EBF28:
/* 802EBF28  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 802EBF2C  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802EBF30  98 1F 00 5C */	stb r0, 0x5c(r31)
/* 802EBF34  48 00 00 B0 */	b lbl_802EBFE4
lbl_802EBF38:
/* 802EBF38  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 802EBF3C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802EBF40  41 82 00 3C */	beq lbl_802EBF7C
/* 802EBF44  28 1D 00 00 */	cmplwi r29, 0
/* 802EBF48  41 82 00 14 */	beq lbl_802EBF5C
/* 802EBF4C  7F A4 EB 78 */	mr r4, r29
/* 802EBF50  38 A0 00 00 */	li r5, 0
/* 802EBF54  4B FF 23 55 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EBF58  48 00 00 8C */	b lbl_802EBFE4
lbl_802EBF5C:
/* 802EBF5C  38 80 00 01 */	li r4, 1
/* 802EBF60  4B FF 22 D5 */	bl __dt__10JUTTextureFv
/* 802EBF64  38 00 00 00 */	li r0, 0
/* 802EBF68  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802EBF6C  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 802EBF70  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802EBF74  98 1F 00 5C */	stb r0, 0x5c(r31)
/* 802EBF78  48 00 00 6C */	b lbl_802EBFE4
lbl_802EBF7C:
/* 802EBF7C  38 00 00 00 */	li r0, 0
/* 802EBF80  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802EBF84  28 1D 00 00 */	cmplwi r29, 0
/* 802EBF88  41 82 00 5C */	beq lbl_802EBFE4
/* 802EBF8C  38 60 00 40 */	li r3, 0x40
/* 802EBF90  4B FE 2C BD */	bl __nw__FUl
/* 802EBF94  7C 7E 1B 79 */	or. r30, r3, r3
/* 802EBF98  41 82 00 24 */	beq lbl_802EBFBC
/* 802EBF9C  38 00 00 00 */	li r0, 0
/* 802EBFA0  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802EBFA4  7F A4 EB 78 */	mr r4, r29
/* 802EBFA8  38 A0 00 00 */	li r5, 0
/* 802EBFAC  4B FF 22 FD */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802EBFB0  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802EBFB4  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802EBFB8  98 1E 00 3B */	stb r0, 0x3b(r30)
lbl_802EBFBC:
/* 802EBFBC  93 DF 00 50 */	stw r30, 0x50(r31)
/* 802EBFC0  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 802EBFC4  28 00 00 00 */	cmplwi r0, 0
/* 802EBFC8  40 82 00 0C */	bne lbl_802EBFD4
/* 802EBFCC  38 60 00 00 */	li r3, 0
/* 802EBFD0  48 00 00 34 */	b lbl_802EC004
lbl_802EBFD4:
/* 802EBFD4  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 802EBFD8  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802EBFDC  60 00 00 01 */	ori r0, r0, 1
/* 802EBFE0  98 1F 00 5C */	stb r0, 0x5c(r31)
lbl_802EBFE4:
/* 802EBFE4  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 802EBFE8  4B FE 2D 55 */	bl __dl__FPv
/* 802EBFEC  38 00 00 00 */	li r0, 0
/* 802EBFF0  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802EBFF4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EBFF8  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EBFFC  B0 1F 00 04 */	sth r0, 4(r31)
/* 802EC000  38 60 00 01 */	li r3, 1
lbl_802EC004:
/* 802EC004  39 61 00 20 */	addi r11, r1, 0x20
/* 802EC008  48 07 62 21 */	bl _restgpr_29
/* 802EC00C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EC010  7C 08 03 A6 */	mtlr r0
/* 802EC014  38 21 00 20 */	addi r1, r1, 0x20
/* 802EC018  4E 80 00 20 */	blr 
