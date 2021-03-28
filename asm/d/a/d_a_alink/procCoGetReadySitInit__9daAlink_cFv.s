lbl_8011D544:
/* 8011D544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D548  7C 08 02 A6 */	mflr r0
/* 8011D54C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D554  7C 7F 1B 78 */	mr r31, r3
/* 8011D558  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 8011D55C  28 00 01 57 */	cmplwi r0, 0x157
/* 8011D560  41 82 00 18 */	beq lbl_8011D578
/* 8011D564  28 00 00 00 */	cmplwi r0, 0
/* 8011D568  40 82 00 18 */	bne lbl_8011D580
/* 8011D56C  4B F9 BC E9 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 8011D570  2C 03 00 00 */	cmpwi r3, 0
/* 8011D574  40 82 00 0C */	bne lbl_8011D580
lbl_8011D578:
/* 8011D578  38 60 00 01 */	li r3, 1
/* 8011D57C  48 00 00 BC */	b lbl_8011D638
lbl_8011D580:
/* 8011D580  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 8011D584  28 00 00 FF */	cmplwi r0, 0xff
/* 8011D588  41 82 00 24 */	beq lbl_8011D5AC
/* 8011D58C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D590  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011D594  40 82 00 18 */	bne lbl_8011D5AC
/* 8011D598  7F E3 FB 78 */	mr r3, r31
/* 8011D59C  38 80 01 57 */	li r4, 0x157
/* 8011D5A0  38 A0 00 00 */	li r5, 0
/* 8011D5A4  4B FA 58 39 */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 8011D5A8  48 00 00 90 */	b lbl_8011D638
lbl_8011D5AC:
/* 8011D5AC  7F E3 FB 78 */	mr r3, r31
/* 8011D5B0  38 80 01 57 */	li r4, 0x157
/* 8011D5B4  4B FA 49 B9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011D5B8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D5BC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011D5C0  41 82 00 2C */	beq lbl_8011D5EC
/* 8011D5C4  7F E3 FB 78 */	mr r3, r31
/* 8011D5C8  38 80 00 00 */	li r4, 0
/* 8011D5CC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha
/* 8011D5D0  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l
/* 8011D5D4  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 8011D5D8  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8011D5DC  48 00 C0 FD */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8011D5E0  38 00 00 01 */	li r0, 1
/* 8011D5E4  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011D5E8  48 00 00 4C */	b lbl_8011D634
lbl_8011D5EC:
/* 8011D5EC  7F E3 FB 78 */	mr r3, r31
/* 8011D5F0  38 80 00 CF */	li r4, 0xcf
/* 8011D5F4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011D5F8  C0 42 93 80 */	lfs f2, lit_8780(r2)
/* 8011D5FC  38 A0 FF FF */	li r5, -1
/* 8011D600  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 8011D604  4B F8 FA 09 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 8011D608  38 00 00 00 */	li r0, 0
/* 8011D60C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011D610  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 8011D614  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 8011D618  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8011D61C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011D620  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8011D624  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011D628  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8011D62C  38 00 00 0C */	li r0, 0xc
/* 8011D630  98 1F 2F 99 */	stb r0, 0x2f99(r31)
lbl_8011D634:
/* 8011D634  38 60 00 01 */	li r3, 1
lbl_8011D638:
/* 8011D638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D640  7C 08 03 A6 */	mtlr r0
/* 8011D644  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D648  4E 80 00 20 */	blr 
