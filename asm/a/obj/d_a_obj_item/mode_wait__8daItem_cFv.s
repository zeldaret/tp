lbl_8015CCD0:
/* 8015CCD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015CCD4  7C 08 02 A6 */	mflr r0
/* 8015CCD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015CCDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015CCE0  7C 7F 1B 78 */	mr r31, r3
/* 8015CCE4  80 03 09 24 */	lwz r0, 0x924(r3)
/* 8015CCE8  2C 00 00 05 */	cmpwi r0, 5
/* 8015CCEC  40 80 00 20 */	bge lbl_8015CD0C
/* 8015CCF0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8015CCF4  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015CCF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015CCFC  40 81 00 10 */	ble lbl_8015CD0C
/* 8015CD00  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015CD04  60 00 00 02 */	ori r0, r0, 2
/* 8015CD08  90 1F 05 B8 */	stw r0, 0x5b8(r31)
lbl_8015CD0C:
/* 8015CD0C  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015CD10  2C 00 00 13 */	cmpwi r0, 0x13
/* 8015CD14  40 80 00 24 */	bge lbl_8015CD38
/* 8015CD18  2C 00 00 08 */	cmpwi r0, 8
/* 8015CD1C  40 80 00 10 */	bge lbl_8015CD2C
/* 8015CD20  2C 00 00 00 */	cmpwi r0, 0
/* 8015CD24  41 82 00 2C */	beq lbl_8015CD50
/* 8015CD28  48 00 00 4C */	b lbl_8015CD74
lbl_8015CD2C:
/* 8015CD2C  2C 00 00 0E */	cmpwi r0, 0xe
/* 8015CD30  40 80 00 2C */	bge lbl_8015CD5C
/* 8015CD34  48 00 00 40 */	b lbl_8015CD74
lbl_8015CD38:
/* 8015CD38  2C 00 00 53 */	cmpwi r0, 0x53
/* 8015CD3C  41 82 00 20 */	beq lbl_8015CD5C
/* 8015CD40  40 80 00 34 */	bge lbl_8015CD74
/* 8015CD44  2C 00 00 40 */	cmpwi r0, 0x40
/* 8015CD48  41 82 00 20 */	beq lbl_8015CD68
/* 8015CD4C  48 00 00 28 */	b lbl_8015CD74
lbl_8015CD50:
/* 8015CD50  7F E3 FB 78 */	mr r3, r31
/* 8015CD54  48 00 08 19 */	bl itemActionForHeart__8daItem_cFv
/* 8015CD58  48 00 00 24 */	b lbl_8015CD7C
lbl_8015CD5C:
/* 8015CD5C  7F E3 FB 78 */	mr r3, r31
/* 8015CD60  48 00 09 29 */	bl itemActionForArrow__8daItem_cFv
/* 8015CD64  48 00 00 18 */	b lbl_8015CD7C
lbl_8015CD68:
/* 8015CD68  7F E3 FB 78 */	mr r3, r31
/* 8015CD6C  48 00 09 95 */	bl itemActionForBoomerang__8daItem_cFv
/* 8015CD70  48 00 00 0C */	b lbl_8015CD7C
lbl_8015CD74:
/* 8015CD74  7F E3 FB 78 */	mr r3, r31
/* 8015CD78  48 00 07 35 */	bl itemActionForRupee__8daItem_cFv
lbl_8015CD7C:
/* 8015CD7C  88 1F 09 C0 */	lbz r0, 0x9c0(r31)
/* 8015CD80  28 00 00 00 */	cmplwi r0, 0
/* 8015CD84  40 82 00 28 */	bne lbl_8015CDAC
/* 8015CD88  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015CD8C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 8015CD90  41 82 00 1C */	beq lbl_8015CDAC
/* 8015CD94  C0 3F 07 58 */	lfs f1, 0x758(r31)
/* 8015CD98  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8015CD9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015CDA0  40 81 00 0C */	ble lbl_8015CDAC
/* 8015CDA4  7F E3 FB 78 */	mr r3, r31
/* 8015CDA8  4B FF FE E1 */	bl mode_water_init__8daItem_cFv
lbl_8015CDAC:
/* 8015CDAC  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015CDB0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8015CDB4  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8015CDB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015CDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015CDC0  7C 08 03 A6 */	mtlr r0
/* 8015CDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8015CDC8  4E 80 00 20 */	blr 
