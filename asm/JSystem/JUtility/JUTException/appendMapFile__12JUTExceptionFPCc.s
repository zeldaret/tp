lbl_802E3B0C:
/* 802E3B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3B10  7C 08 02 A6 */	mflr r0
/* 802E3B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E3B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E3B1C  93 C1 00 08 */	stw r30, 8(r1)
/* 802E3B20  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E3B24  41 82 00 64 */	beq lbl_802E3B88
/* 802E3B28  3C 60 80 43 */	lis r3, sMapFileList__12JUTException@ha
/* 802E3B2C  83 E3 45 98 */	lwz r31, sMapFileList__12JUTException@l(r3)
/* 802E3B30  48 00 00 20 */	b lbl_802E3B50
lbl_802E3B34:
/* 802E3B34  80 9F 00 00 */	lwz r4, 0(r31)
/* 802E3B38  7F C3 F3 78 */	mr r3, r30
/* 802E3B3C  80 84 00 00 */	lwz r4, 0(r4)
/* 802E3B40  48 08 4E 55 */	bl strcmp
/* 802E3B44  2C 03 00 00 */	cmpwi r3, 0
/* 802E3B48  41 82 00 40 */	beq lbl_802E3B88
/* 802E3B4C  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802E3B50:
/* 802E3B50  28 1F 00 00 */	cmplwi r31, 0
/* 802E3B54  40 82 FF E0 */	bne lbl_802E3B34
/* 802E3B58  38 60 00 14 */	li r3, 0x14
/* 802E3B5C  4B FE B0 F1 */	bl __nw__FUl
/* 802E3B60  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E3B64  41 82 00 14 */	beq lbl_802E3B78
/* 802E3B68  38 7F 00 04 */	addi r3, r31, 4
/* 802E3B6C  7F E4 FB 78 */	mr r4, r31
/* 802E3B70  4B FF 82 8D */	bl __ct__10JSUPtrLinkFPv
/* 802E3B74  93 DF 00 00 */	stw r30, 0(r31)
lbl_802E3B78:
/* 802E3B78  3C 60 80 43 */	lis r3, sMapFileList__12JUTException@ha
/* 802E3B7C  38 63 45 98 */	addi r3, r3, sMapFileList__12JUTException@l
/* 802E3B80  38 9F 00 04 */	addi r4, r31, 4
/* 802E3B84  4B FF 83 C9 */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_802E3B88:
/* 802E3B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E3B8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E3B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E3B94  7C 08 03 A6 */	mtlr r0
/* 802E3B98  38 21 00 10 */	addi r1, r1, 0x10
/* 802E3B9C  4E 80 00 20 */	blr 
