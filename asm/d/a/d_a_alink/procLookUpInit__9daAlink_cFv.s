lbl_8011C9D0:
/* 8011C9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011C9D4  7C 08 02 A6 */	mflr r0
/* 8011C9D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011C9DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011C9E0  7C 7F 1B 78 */	mr r31, r3
/* 8011C9E4  38 80 00 D5 */	li r4, 0xd5
/* 8011C9E8  4B FA 63 BD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011C9EC  2C 03 00 00 */	cmpwi r3, 0
/* 8011C9F0  40 82 00 0C */	bne lbl_8011C9FC
/* 8011C9F4  38 60 00 00 */	li r3, 0
/* 8011C9F8  48 00 00 40 */	b lbl_8011CA38
lbl_8011C9FC:
/* 8011C9FC  7F E3 FB 78 */	mr r3, r31
/* 8011CA00  38 80 00 D4 */	li r4, 0xd4
/* 8011CA04  4B F9 05 7D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011CA08  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011CA0C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011CA10  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 8011CA14  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)  /* 0x80425514@l */
/* 8011CA18  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8011CA1C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011CA20  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8011CA24  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011CA28  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8011CA2C  38 00 00 0C */	li r0, 0xc
/* 8011CA30  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8011CA34  38 60 00 01 */	li r3, 1
lbl_8011CA38:
/* 8011CA38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011CA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011CA40  7C 08 03 A6 */	mtlr r0
/* 8011CA44  38 21 00 10 */	addi r1, r1, 0x10
/* 8011CA48  4E 80 00 20 */	blr 
