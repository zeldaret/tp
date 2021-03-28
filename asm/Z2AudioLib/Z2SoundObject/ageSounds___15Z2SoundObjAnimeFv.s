lbl_802BED68:
/* 802BED68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BED6C  7C 08 02 A6 */	mflr r0
/* 802BED70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BED74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BED78  93 C1 00 08 */	stw r30, 8(r1)
/* 802BED7C  7C 7F 1B 78 */	mr r31, r3
/* 802BED80  3B C0 00 00 */	li r30, 0
/* 802BED84  48 00 01 2C */	b lbl_802BEEB0
lbl_802BED88:
/* 802BED88  7F E3 FB 78 */	mr r3, r31
/* 802BED8C  7F C4 F3 78 */	mr r4, r30
/* 802BED90  48 01 D4 7D */	bl getNthLink__10JSUPtrListCFUl
/* 802BED94  28 03 00 00 */	cmplwi r3, 0
/* 802BED98  41 82 00 08 */	beq lbl_802BEDA0
/* 802BED9C  38 63 FF FC */	addi r3, r3, -4
lbl_802BEDA0:
/* 802BEDA0  80 03 00 00 */	lwz r0, 0(r3)
/* 802BEDA4  28 00 00 00 */	cmplwi r0, 0
/* 802BEDA8  41 82 01 04 */	beq lbl_802BEEAC
/* 802BEDAC  7F E3 FB 78 */	mr r3, r31
/* 802BEDB0  7F C4 F3 78 */	mr r4, r30
/* 802BEDB4  48 01 D4 59 */	bl getNthLink__10JSUPtrListCFUl
/* 802BEDB8  28 03 00 00 */	cmplwi r3, 0
/* 802BEDBC  41 82 00 08 */	beq lbl_802BEDC4
/* 802BEDC0  38 63 FF FC */	addi r3, r3, -4
lbl_802BEDC4:
/* 802BEDC4  80 63 00 00 */	lwz r3, 0(r3)
/* 802BEDC8  88 03 00 1F */	lbz r0, 0x1f(r3)
/* 802BEDCC  54 00 E7 BE */	rlwinm r0, r0, 0x1c, 0x1e, 0x1f
/* 802BEDD0  2C 00 00 01 */	cmpwi r0, 1
/* 802BEDD4  41 82 00 10 */	beq lbl_802BEDE4
/* 802BEDD8  40 80 00 D4 */	bge lbl_802BEEAC
/* 802BEDDC  48 00 00 D0 */	b lbl_802BEEAC
/* 802BEDE0  48 00 00 CC */	b lbl_802BEEAC
lbl_802BEDE4:
/* 802BEDE4  7F E3 FB 78 */	mr r3, r31
/* 802BEDE8  7F C4 F3 78 */	mr r4, r30
/* 802BEDEC  48 01 D4 21 */	bl getNthLink__10JSUPtrListCFUl
/* 802BEDF0  28 03 00 00 */	cmplwi r3, 0
/* 802BEDF4  41 82 00 08 */	beq lbl_802BEDFC
/* 802BEDF8  38 63 FF FC */	addi r3, r3, -4
lbl_802BEDFC:
/* 802BEDFC  80 63 00 00 */	lwz r3, 0(r3)
/* 802BEE00  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802BEE04  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802BEE08  41 82 00 28 */	beq lbl_802BEE30
/* 802BEE0C  7F E3 FB 78 */	mr r3, r31
/* 802BEE10  7F C4 F3 78 */	mr r4, r30
/* 802BEE14  48 01 D3 F9 */	bl getNthLink__10JSUPtrListCFUl
/* 802BEE18  28 03 00 00 */	cmplwi r3, 0
/* 802BEE1C  41 82 00 08 */	beq lbl_802BEE24
/* 802BEE20  38 63 FF FC */	addi r3, r3, -4
lbl_802BEE24:
/* 802BEE24  80 63 00 00 */	lwz r3, 0(r3)
/* 802BEE28  4B FE 37 71 */	bl stop__8JAISoundFv
/* 802BEE2C  48 00 00 80 */	b lbl_802BEEAC
lbl_802BEE30:
/* 802BEE30  7F E3 FB 78 */	mr r3, r31
/* 802BEE34  7F C4 F3 78 */	mr r4, r30
/* 802BEE38  48 01 D3 D5 */	bl getNthLink__10JSUPtrListCFUl
/* 802BEE3C  28 03 00 00 */	cmplwi r3, 0
/* 802BEE40  41 82 00 08 */	beq lbl_802BEE48
/* 802BEE44  38 63 FF FC */	addi r3, r3, -4
lbl_802BEE48:
/* 802BEE48  80 63 00 00 */	lwz r3, 0(r3)
/* 802BEE4C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802BEE50  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802BEE54  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 802BEE58  41 82 00 28 */	beq lbl_802BEE80
/* 802BEE5C  7F E3 FB 78 */	mr r3, r31
/* 802BEE60  7F C4 F3 78 */	mr r4, r30
/* 802BEE64  48 01 D3 A9 */	bl getNthLink__10JSUPtrListCFUl
/* 802BEE68  28 03 00 00 */	cmplwi r3, 0
/* 802BEE6C  41 82 00 08 */	beq lbl_802BEE74
/* 802BEE70  38 63 FF FC */	addi r3, r3, -4
lbl_802BEE74:
/* 802BEE74  80 63 00 00 */	lwz r3, 0(r3)
/* 802BEE78  4B FE 37 21 */	bl stop__8JAISoundFv
/* 802BEE7C  48 00 00 30 */	b lbl_802BEEAC
lbl_802BEE80:
/* 802BEE80  7F E3 FB 78 */	mr r3, r31
/* 802BEE84  7F C4 F3 78 */	mr r4, r30
/* 802BEE88  48 01 D3 85 */	bl getNthLink__10JSUPtrListCFUl
/* 802BEE8C  28 03 00 00 */	cmplwi r3, 0
/* 802BEE90  41 82 00 08 */	beq lbl_802BEE98
/* 802BEE94  38 63 FF FC */	addi r3, r3, -4
lbl_802BEE98:
/* 802BEE98  80 83 00 00 */	lwz r4, 0(r3)
/* 802BEE9C  38 60 00 02 */	li r3, 2
/* 802BEEA0  88 04 00 1F */	lbz r0, 0x1f(r4)
/* 802BEEA4  50 60 26 B6 */	rlwimi r0, r3, 4, 0x1a, 0x1b
/* 802BEEA8  98 04 00 1F */	stb r0, 0x1f(r4)
lbl_802BEEAC:
/* 802BEEAC  3B DE 00 01 */	addi r30, r30, 1
lbl_802BEEB0:
/* 802BEEB0  80 1F 00 08 */	lwz r0, 8(r31)
/* 802BEEB4  7C 1E 00 00 */	cmpw r30, r0
/* 802BEEB8  41 80 FE D0 */	blt lbl_802BED88
/* 802BEEBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BEEC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BEEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BEEC8  7C 08 03 A6 */	mtlr r0
/* 802BEECC  38 21 00 10 */	addi r1, r1, 0x10
/* 802BEED0  4E 80 00 20 */	blr 
