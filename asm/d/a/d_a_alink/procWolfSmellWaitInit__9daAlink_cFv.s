lbl_8011D0A0:
/* 8011D0A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D0A4  7C 08 02 A6 */	mflr r0
/* 8011D0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D0AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D0B0  7C 7F 1B 78 */	mr r31, r3
/* 8011D0B4  38 80 01 3A */	li r4, 0x13a
/* 8011D0B8  4B FA 5C ED */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011D0BC  2C 03 00 00 */	cmpwi r3, 0
/* 8011D0C0  40 82 00 0C */	bne lbl_8011D0CC
/* 8011D0C4  38 60 00 01 */	li r3, 1
/* 8011D0C8  48 00 00 34 */	b lbl_8011D0FC
lbl_8011D0CC:
/* 8011D0CC  7F E3 FB 78 */	mr r3, r31
/* 8011D0D0  38 80 00 72 */	li r4, 0x72
/* 8011D0D4  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlChain_c0@ha /* 0x8038F858@ha */
/* 8011D0D8  38 A5 F8 58 */	addi r5, r5, m__21daAlinkHIO_wlChain_c0@l /* 0x8038F858@l */
/* 8011D0DC  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 8011D0E0  C0 45 00 58 */	lfs f2, 0x58(r5)
/* 8011D0E4  48 00 C5 F5 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8011D0E8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011D0EC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011D0F0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011D0F4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011D0F8  38 60 00 01 */	li r3, 1
lbl_8011D0FC:
/* 8011D0FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D104  7C 08 03 A6 */	mtlr r0
/* 8011D108  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D10C  4E 80 00 20 */	blr 
