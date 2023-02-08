lbl_8011E6E0:
/* 8011E6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011E6E4  7C 08 02 A6 */	mflr r0
/* 8011E6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011E6EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011E6F0  7C 7F 1B 78 */	mr r31, r3
/* 8011E6F4  38 80 00 E4 */	li r4, 0xe4
/* 8011E6F8  4B FA 46 AD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011E6FC  2C 03 00 00 */	cmpwi r3, 0
/* 8011E700  40 82 00 0C */	bne lbl_8011E70C
/* 8011E704  38 60 00 00 */	li r3, 0
/* 8011E708  48 00 00 2C */	b lbl_8011E734
lbl_8011E70C:
/* 8011E70C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011E710  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011E714  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011E718  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011E71C  7F E3 FB 78 */	mr r3, r31
/* 8011E720  38 80 01 8A */	li r4, 0x18a
/* 8011E724  4B F8 E8 5D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011E728  38 00 00 00 */	li r0, 0
/* 8011E72C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011E730  38 60 00 01 */	li r3, 1
lbl_8011E734:
/* 8011E734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011E738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011E73C  7C 08 03 A6 */	mtlr r0
/* 8011E740  38 21 00 10 */	addi r1, r1, 0x10
/* 8011E744  4E 80 00 20 */	blr 
