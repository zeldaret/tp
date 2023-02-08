lbl_802DDB0C:
/* 802DDB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DDB10  7C 08 02 A6 */	mflr r0
/* 802DDB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DDB18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DDB1C  93 C1 00 08 */	stw r30, 8(r1)
/* 802DDB20  7C 7E 1B 78 */	mr r30, r3
/* 802DDB24  80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 802DDB28  28 03 00 00 */	cmplwi r3, 0
/* 802DDB2C  41 82 00 30 */	beq lbl_802DDB5C
/* 802DDB30  80 03 00 04 */	lwz r0, 4(r3)
/* 802DDB34  90 1E 00 A4 */	stw r0, 0xa4(r30)
/* 802DDB38  80 83 00 04 */	lwz r4, 4(r3)
/* 802DDB3C  28 04 00 00 */	cmplwi r4, 0
/* 802DDB40  40 82 00 10 */	bne lbl_802DDB50
/* 802DDB44  38 00 00 00 */	li r0, 0
/* 802DDB48  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 802DDB4C  48 00 00 58 */	b lbl_802DDBA4
lbl_802DDB50:
/* 802DDB50  38 00 00 00 */	li r0, 0
/* 802DDB54  90 04 00 00 */	stw r0, 0(r4)
/* 802DDB58  48 00 00 4C */	b lbl_802DDBA4
lbl_802DDB5C:
/* 802DDB5C  83 FE 00 A0 */	lwz r31, 0xa0(r30)
/* 802DDB60  48 00 00 38 */	b lbl_802DDB98
lbl_802DDB64:
/* 802DDB64  80 7F 00 00 */	lwz r3, 0(r31)
/* 802DDB68  A0 1F 00 1E */	lhz r0, 0x1e(r31)
/* 802DDB6C  28 00 00 00 */	cmplwi r0, 0
/* 802DDB70  40 82 00 24 */	bne lbl_802DDB94
/* 802DDB74  7F C3 F3 78 */	mr r3, r30
/* 802DDB78  7F E4 FB 78 */	mr r4, r31
/* 802DDB7C  48 00 03 ED */	bl unlink__12JUTCacheFontFPQ212JUTCacheFont15TGlyphCacheInfo
/* 802DDB80  80 7E 00 B4 */	lwz r3, 0xb4(r30)
/* 802DDB84  38 03 00 01 */	addi r0, r3, 1
/* 802DDB88  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 802DDB8C  7F E3 FB 78 */	mr r3, r31
/* 802DDB90  48 00 00 14 */	b lbl_802DDBA4
lbl_802DDB94:
/* 802DDB94  7C 7F 1B 78 */	mr r31, r3
lbl_802DDB98:
/* 802DDB98  28 1F 00 00 */	cmplwi r31, 0
/* 802DDB9C  40 82 FF C8 */	bne lbl_802DDB64
/* 802DDBA0  38 60 00 00 */	li r3, 0
lbl_802DDBA4:
/* 802DDBA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DDBA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DDBAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DDBB0  7C 08 03 A6 */	mtlr r0
/* 802DDBB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DDBB8  4E 80 00 20 */	blr 
