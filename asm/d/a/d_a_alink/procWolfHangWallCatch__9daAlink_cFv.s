lbl_80135AF4:
/* 80135AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80135AF8  7C 08 02 A6 */	mflr r0
/* 80135AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80135B00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80135B04  93 C1 00 08 */	stw r30, 8(r1)
/* 80135B08  7C 7F 1B 78 */	mr r31, r3
/* 80135B0C  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 80135B10  A8 03 30 0E */	lha r0, 0x300e(r3)
/* 80135B14  2C 00 00 00 */	cmpwi r0, 0
/* 80135B18  41 82 00 30 */	beq lbl_80135B48
/* 80135B1C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80135B20  C0 02 94 74 */	lfs f0, lit_15341(r2)
/* 80135B24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80135B28  4C 41 13 82 */	cror 2, 1, 2
/* 80135B2C  40 82 00 1C */	bne lbl_80135B48
/* 80135B30  38 00 00 04 */	li r0, 4
/* 80135B34  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80135B38  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80135B3C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80135B40  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 80135B44  48 00 00 1C */	b lbl_80135B60
lbl_80135B48:
/* 80135B48  7F E3 FB 78 */	mr r3, r31
/* 80135B4C  4B FF F9 7D */	bl changeWolfHangEndProc__9daAlink_cFv
/* 80135B50  2C 03 00 00 */	cmpwi r3, 0
/* 80135B54  41 82 00 0C */	beq lbl_80135B60
/* 80135B58  38 60 00 01 */	li r3, 1
/* 80135B5C  48 00 01 64 */	b lbl_80135CC0
lbl_80135B60:
/* 80135B60  C0 5F 34 78 */	lfs f2, 0x3478(r31)
/* 80135B64  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80135B68  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80135B6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80135B70  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80135B74  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 80135B78  C0 3F 33 B8 */	lfs f1, 0x33b8(r31)
/* 80135B7C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80135B80  40 80 00 24 */	bge lbl_80135BA4
/* 80135B84  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 80135B88  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80135B8C  4C 41 13 82 */	cror 2, 1, 2
/* 80135B90  40 82 00 14 */	bne lbl_80135BA4
/* 80135B94  7F E3 FB 78 */	mr r3, r31
/* 80135B98  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030023@ha */
/* 80135B9C  38 84 00 23 */	addi r4, r4, 0x0023 /* 0x00030023@l */
/* 80135BA0  4B F8 95 F5 */	bl seStartMapInfo__9daAlink_cFUl
lbl_80135BA4:
/* 80135BA4  7F C3 F3 78 */	mr r3, r30
/* 80135BA8  48 02 89 25 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80135BAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80135BB0  41 82 00 C8 */	beq lbl_80135C78
/* 80135BB4  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 80135BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80135BBC  40 82 00 7C */	bne lbl_80135C38
/* 80135BC0  80 1F 31 74 */	lwz r0, 0x3174(r31)
/* 80135BC4  2C 00 00 06 */	cmpwi r0, 6
/* 80135BC8  40 82 00 40 */	bne lbl_80135C08
/* 80135BCC  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 80135BD0  2C 00 00 00 */	cmpwi r0, 0
/* 80135BD4  40 82 00 E8 */	bne lbl_80135CBC
/* 80135BD8  7F E3 FB 78 */	mr r3, r31
/* 80135BDC  38 80 00 19 */	li r4, 0x19
/* 80135BE0  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlWallHang_c0@ha /* 0x8038F1A0@ha */
/* 80135BE4  38 A5 F1 A0 */	addi r5, r5, m__24daAlinkHIO_wlWallHang_c0@l /* 0x8038F1A0@l */
/* 80135BE8  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 80135BEC  C0 42 93 BC */	lfs f2, lit_10042(r2)
/* 80135BF0  A8 A5 00 28 */	lha r5, 0x28(r5)
/* 80135BF4  C0 62 93 3C */	lfs f3, lit_7808(r2)
/* 80135BF8  4B FF 3B 0D */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 80135BFC  38 00 00 01 */	li r0, 1
/* 80135C00  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 80135C04  48 00 00 B8 */	b lbl_80135CBC
lbl_80135C08:
/* 80135C08  7F E3 FB 78 */	mr r3, r31
/* 80135C0C  38 80 00 13 */	li r4, 0x13
/* 80135C10  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlWallHang_c0@ha /* 0x8038F1A0@ha */
/* 80135C14  38 A5 F1 A0 */	addi r5, r5, m__24daAlinkHIO_wlWallHang_c0@l /* 0x8038F1A0@l */
/* 80135C18  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 80135C1C  C0 42 94 94 */	lfs f2, lit_16210(r2)
/* 80135C20  A8 A5 00 14 */	lha r5, 0x14(r5)
/* 80135C24  C0 62 93 14 */	lfs f3, lit_7307(r2)
/* 80135C28  4B FF 3A DD */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 80135C2C  38 00 00 01 */	li r0, 1
/* 80135C30  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 80135C34  48 00 00 88 */	b lbl_80135CBC
lbl_80135C38:
/* 80135C38  7F E3 FB 78 */	mr r3, r31
/* 80135C3C  38 80 00 00 */	li r4, 0
/* 80135C40  4B FF 3F 05 */	bl checkNextActionWolf__9daAlink_cFi
/* 80135C44  A8 7F 30 0C */	lha r3, 0x300c(r31)
/* 80135C48  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80135C4C  28 00 00 F1 */	cmplwi r0, 0xf1
/* 80135C50  40 82 00 18 */	bne lbl_80135C68
/* 80135C54  2C 03 00 00 */	cmpwi r3, 0
/* 80135C58  41 82 00 10 */	beq lbl_80135C68
/* 80135C5C  7F E3 FB 78 */	mr r3, r31
/* 80135C60  38 80 00 00 */	li r4, 0
/* 80135C64  48 00 2C A9 */	bl procWolfSwimEndWaitInit__9daAlink_cFi
lbl_80135C68:
/* 80135C68  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80135C6C  60 00 00 20 */	ori r0, r0, 0x20
/* 80135C70  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80135C74  48 00 00 48 */	b lbl_80135CBC
lbl_80135C78:
/* 80135C78  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 80135C7C  2C 00 00 00 */	cmpwi r0, 0
/* 80135C80  41 82 00 3C */	beq lbl_80135CBC
/* 80135C84  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80135C88  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlWallHang_c0@ha /* 0x8038F1A0@ha */
/* 80135C8C  38 63 F1 A0 */	addi r3, r3, m__24daAlinkHIO_wlWallHang_c0@l /* 0x8038F1A0@l */
/* 80135C90  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80135C94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80135C98  40 81 00 24 */	ble lbl_80135CBC
/* 80135C9C  7F E3 FB 78 */	mr r3, r31
/* 80135CA0  38 80 00 01 */	li r4, 1
/* 80135CA4  4B FF 3E A1 */	bl checkNextActionWolf__9daAlink_cFi
/* 80135CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80135CAC  41 82 00 10 */	beq lbl_80135CBC
/* 80135CB0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80135CB4  60 00 00 20 */	ori r0, r0, 0x20
/* 80135CB8  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_80135CBC:
/* 80135CBC  38 60 00 01 */	li r3, 1
lbl_80135CC0:
/* 80135CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80135CC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80135CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80135CCC  7C 08 03 A6 */	mtlr r0
/* 80135CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80135CD4  4E 80 00 20 */	blr 
