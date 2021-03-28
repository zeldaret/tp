lbl_8011E8E0:
/* 8011E8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011E8E4  7C 08 02 A6 */	mflr r0
/* 8011E8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011E8EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011E8F0  7C 7F 1B 78 */	mr r31, r3
/* 8011E8F4  38 80 00 E5 */	li r4, 0xe5
/* 8011E8F8  4B FA 44 AD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011E8FC  2C 03 00 00 */	cmpwi r3, 0
/* 8011E900  40 82 00 0C */	bne lbl_8011E90C
/* 8011E904  38 60 00 01 */	li r3, 1
/* 8011E908  48 00 00 44 */	b lbl_8011E94C
lbl_8011E90C:
/* 8011E90C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011E910  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011E914  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011E918  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011E91C  38 00 00 00 */	li r0, 0
/* 8011E920  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8011E924  7F E3 FB 78 */	mr r3, r31
/* 8011E928  4B FF FF 15 */	bl setSwordPushAnime__9daAlink_cFv
/* 8011E92C  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha
/* 8011E930  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)
/* 8011E934  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8011E938  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011E93C  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8011E940  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011E944  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8011E948  38 60 00 01 */	li r3, 1
lbl_8011E94C:
/* 8011E94C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011E950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011E954  7C 08 03 A6 */	mtlr r0
/* 8011E958  38 21 00 10 */	addi r1, r1, 0x10
/* 8011E95C  4E 80 00 20 */	blr 
