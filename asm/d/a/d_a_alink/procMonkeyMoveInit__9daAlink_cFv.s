lbl_8011BC74:
/* 8011BC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011BC78  7C 08 02 A6 */	mflr r0
/* 8011BC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011BC80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011BC84  7C 7F 1B 78 */	mr r31, r3
/* 8011BC88  38 80 00 B1 */	li r4, 0xb1
/* 8011BC8C  4B FA 71 19 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011BC90  2C 03 00 00 */	cmpwi r3, 0
/* 8011BC94  40 82 00 0C */	bne lbl_8011BCA0
/* 8011BC98  38 60 00 00 */	li r3, 0
/* 8011BC9C  48 00 00 68 */	b lbl_8011BD04
lbl_8011BCA0:
/* 8011BCA0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011BCA4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011BCA8  7F E3 FB 78 */	mr r3, r31
/* 8011BCAC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011BCB0  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8011BCB4  38 80 00 00 */	li r4, 0
/* 8011BCB8  4B F9 FA B9 */	bl setSpecialGravity__9daAlink_cFffi
/* 8011BCBC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011BCC0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8011BCC4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011BCC8  7F E3 FB 78 */	mr r3, r31
/* 8011BCCC  38 80 00 00 */	li r4, 0
/* 8011BCD0  38 A0 00 00 */	li r5, 0
/* 8011BCD4  4B FA 56 09 */	bl deleteEquipItem__9daAlink_cFii
/* 8011BCD8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011BCDC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011BCE0  40 82 00 20 */	bne lbl_8011BD00
/* 8011BCE4  7F E3 FB 78 */	mr r3, r31
/* 8011BCE8  38 80 00 FC */	li r4, 0xfc
/* 8011BCEC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011BCF0  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8011BCF4  4B F9 12 ED */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8011BCF8  7F E3 FB 78 */	mr r3, r31
/* 8011BCFC  4B FF FF 19 */	bl setMonkeyMoveAnime__9daAlink_cFv
lbl_8011BD00:
/* 8011BD00  38 60 00 01 */	li r3, 1
lbl_8011BD04:
/* 8011BD04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011BD08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011BD0C  7C 08 03 A6 */	mtlr r0
/* 8011BD10  38 21 00 10 */	addi r1, r1, 0x10
/* 8011BD14  4E 80 00 20 */	blr 
