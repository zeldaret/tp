lbl_8011B914:
/* 8011B914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011B918  7C 08 02 A6 */	mflr r0
/* 8011B91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011B924  7C 7F 1B 78 */	mr r31, r3
/* 8011B928  38 80 01 4A */	li r4, 0x14a
/* 8011B92C  4B FA 74 79 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011B930  2C 03 00 00 */	cmpwi r3, 0
/* 8011B934  40 82 00 0C */	bne lbl_8011B940
/* 8011B938  38 60 00 00 */	li r3, 0
/* 8011B93C  48 00 00 D0 */	b lbl_8011BA0C
lbl_8011B940:
/* 8011B940  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8011B944  64 00 00 10 */	oris r0, r0, 0x10
/* 8011B948  90 1F 05 70 */	stw r0, 0x570(r31)
/* 8011B94C  80 1F 28 30 */	lwz r0, 0x2830(r31)
/* 8011B950  28 00 00 00 */	cmplwi r0, 0
/* 8011B954  41 82 00 64 */	beq lbl_8011B9B8
/* 8011B958  7F E3 FB 78 */	mr r3, r31
/* 8011B95C  4B FC 83 11 */	bl checkGrabAnime__9daAlink_cCFv
/* 8011B960  2C 03 00 00 */	cmpwi r3, 0
/* 8011B964  40 82 00 2C */	bne lbl_8011B990
/* 8011B968  38 60 00 00 */	li r3, 0
/* 8011B96C  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 8011B970  28 00 02 DA */	cmplwi r0, 0x2da
/* 8011B974  41 82 00 10 */	beq lbl_8011B984
/* 8011B978  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8011B97C  28 00 02 DB */	cmplwi r0, 0x2db
/* 8011B980  40 82 00 08 */	bne lbl_8011B988
lbl_8011B984:
/* 8011B984  38 60 00 01 */	li r3, 1
lbl_8011B988:
/* 8011B988  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B98C  41 82 00 2C */	beq lbl_8011B9B8
lbl_8011B990:
/* 8011B990  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8011B994  64 00 00 10 */	oris r0, r0, 0x10
/* 8011B998  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8011B99C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011B9A0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011B9A4  40 82 00 14 */	bne lbl_8011B9B8
/* 8011B9A8  7F E3 FB 78 */	mr r3, r31
/* 8011B9AC  38 9F 20 48 */	addi r4, r31, 0x2048
/* 8011B9B0  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011B9B4  4B FE 63 41 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
lbl_8011B9B8:
/* 8011B9B8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011B9BC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011B9C0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011B9C4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011B9C8  41 82 00 1C */	beq lbl_8011B9E4
/* 8011B9CC  7F E3 FB 78 */	mr r3, r31
/* 8011B9D0  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlMove_c0@ha
/* 8011B9D4  38 84 EE 28 */	addi r4, r4, m__20daAlinkHIO_wlMove_c0@l
/* 8011B9D8  C0 24 00 94 */	lfs f1, 0x94(r4)
/* 8011B9DC  48 00 CE 69 */	bl setBlendWolfMoveAnime__9daAlink_cFf
/* 8011B9E0  48 00 00 18 */	b lbl_8011B9F8
lbl_8011B9E4:
/* 8011B9E4  7F E3 FB 78 */	mr r3, r31
/* 8011B9E8  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 8011B9EC  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 8011B9F0  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8011B9F4  4B F9 24 21 */	bl setBlendMoveAnime__9daAlink_cFf
lbl_8011B9F8:
/* 8011B9F8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011B9FC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011BA00  38 00 00 04 */	li r0, 4
/* 8011BA04  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 8011BA08  38 60 00 01 */	li r3, 1
lbl_8011BA0C:
/* 8011BA0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011BA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011BA14  7C 08 03 A6 */	mtlr r0
/* 8011BA18  38 21 00 10 */	addi r1, r1, 0x10
/* 8011BA1C  4E 80 00 20 */	blr 
