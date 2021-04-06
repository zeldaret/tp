lbl_8011CA98:
/* 8011CA98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011CA9C  7C 08 02 A6 */	mflr r0
/* 8011CAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011CAA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011CAA8  7C 7F 1B 78 */	mr r31, r3
/* 8011CAAC  38 80 00 D6 */	li r4, 0xd6
/* 8011CAB0  4B FA 62 F5 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011CAB4  2C 03 00 00 */	cmpwi r3, 0
/* 8011CAB8  40 82 00 0C */	bne lbl_8011CAC4
/* 8011CABC  38 60 00 00 */	li r3, 0
/* 8011CAC0  48 00 00 4C */	b lbl_8011CB0C
lbl_8011CAC4:
/* 8011CAC4  7F E3 FB 78 */	mr r3, r31
/* 8011CAC8  38 80 00 D5 */	li r4, 0xd5
/* 8011CACC  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 8011CAD0  4B F9 04 E1 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 8011CAD4  38 00 00 00 */	li r0, 0
/* 8011CAD8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011CADC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011CAE0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011CAE4  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 8011CAE8  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)  /* 0x80425514@l */
/* 8011CAEC  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8011CAF0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011CAF4  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8011CAF8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011CAFC  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8011CB00  38 00 00 0C */	li r0, 0xc
/* 8011CB04  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8011CB08  38 60 00 01 */	li r3, 1
lbl_8011CB0C:
/* 8011CB0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011CB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011CB14  7C 08 03 A6 */	mtlr r0
/* 8011CB18  38 21 00 10 */	addi r1, r1, 0x10
/* 8011CB1C  4E 80 00 20 */	blr 
