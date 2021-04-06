lbl_8011BABC:
/* 8011BABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011BAC0  7C 08 02 A6 */	mflr r0
/* 8011BAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011BAC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011BACC  7C 7F 1B 78 */	mr r31, r3
/* 8011BAD0  38 80 01 4B */	li r4, 0x14b
/* 8011BAD4  4B FA 72 D1 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011BAD8  2C 03 00 00 */	cmpwi r3, 0
/* 8011BADC  40 82 00 0C */	bne lbl_8011BAE8
/* 8011BAE0  38 60 00 00 */	li r3, 0
/* 8011BAE4  48 00 00 48 */	b lbl_8011BB2C
lbl_8011BAE8:
/* 8011BAE8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011BAEC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011BAF0  41 82 00 14 */	beq lbl_8011BB04
/* 8011BAF4  7F E3 FB 78 */	mr r3, r31
/* 8011BAF8  38 80 00 07 */	li r4, 7
/* 8011BAFC  48 00 DB 7D */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011BB00  48 00 00 20 */	b lbl_8011BB20
lbl_8011BB04:
/* 8011BB04  7F E3 FB 78 */	mr r3, r31
/* 8011BB08  38 80 00 36 */	li r4, 0x36
/* 8011BB0C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_pushpull_c0@ha /* 0x8038E210@ha */
/* 8011BB10  38 A5 E2 10 */	addi r5, r5, m__22daAlinkHIO_pushpull_c0@l /* 0x8038E210@l */
/* 8011BB14  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 8011BB18  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8011BB1C  4B F9 14 C5 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_8011BB20:
/* 8011BB20  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011BB24  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011BB28  38 60 00 01 */	li r3, 1
lbl_8011BB2C:
/* 8011BB2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011BB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011BB34  7C 08 03 A6 */	mtlr r0
/* 8011BB38  38 21 00 10 */	addi r1, r1, 0x10
/* 8011BB3C  4E 80 00 20 */	blr 
