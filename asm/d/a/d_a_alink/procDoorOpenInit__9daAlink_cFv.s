lbl_8011B57C:
/* 8011B57C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011B580  7C 08 02 A6 */	mflr r0
/* 8011B584  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011B58C  7C 7F 1B 78 */	mr r31, r3
/* 8011B590  38 80 00 B0 */	li r4, 0xb0
/* 8011B594  4B FA 78 11 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011B598  2C 03 00 00 */	cmpwi r3, 0
/* 8011B59C  40 82 00 0C */	bne lbl_8011B5A8
/* 8011B5A0  38 60 00 01 */	li r3, 1
/* 8011B5A4  48 00 01 64 */	b lbl_8011B708
lbl_8011B5A8:
/* 8011B5A8  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 8011B5AC  38 A0 FF FF */	li r5, -1
/* 8011B5B0  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha
/* 8011B5B4  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l
/* 8011B5B8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8011B5BC  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8011B5C0  38 60 00 00 */	li r3, 0
/* 8011B5C4  B0 7F 30 08 */	sth r3, 0x3008(r31)
/* 8011B5C8  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011B5CC  2C 00 00 04 */	cmpwi r0, 4
/* 8011B5D0  40 82 00 1C */	bne lbl_8011B5EC
/* 8011B5D4  38 80 00 EC */	li r4, 0xec
/* 8011B5D8  38 00 00 01 */	li r0, 1
/* 8011B5DC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011B5E0  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011B5E4  B0 7F 30 10 */	sth r3, 0x3010(r31)
/* 8011B5E8  48 00 00 C4 */	b lbl_8011B6AC
lbl_8011B5EC:
/* 8011B5EC  2C 00 00 05 */	cmpwi r0, 5
/* 8011B5F0  40 82 00 1C */	bne lbl_8011B60C
/* 8011B5F4  38 80 00 ED */	li r4, 0xed
/* 8011B5F8  38 00 00 01 */	li r0, 1
/* 8011B5FC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011B600  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011B604  B0 7F 30 10 */	sth r3, 0x3010(r31)
/* 8011B608  48 00 00 A4 */	b lbl_8011B6AC
lbl_8011B60C:
/* 8011B60C  B0 7F 30 0E */	sth r3, 0x300e(r31)
/* 8011B610  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011B614  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8011B618  41 82 00 14 */	beq lbl_8011B62C
/* 8011B61C  38 80 00 E9 */	li r4, 0xe9
/* 8011B620  C0 02 94 24 */	lfs f0, lit_14620(r2)
/* 8011B624  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 8011B628  48 00 00 10 */	b lbl_8011B638
lbl_8011B62C:
/* 8011B62C  38 80 00 E8 */	li r4, 0xe8
/* 8011B630  C0 02 94 E4 */	lfs f0, lit_19380(r2)
/* 8011B634  D0 1F 34 7C */	stfs f0, 0x347c(r31)
lbl_8011B638:
/* 8011B638  80 7F 06 0C */	lwz r3, 0x60c(r31)
/* 8011B63C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8011B640  41 82 00 2C */	beq lbl_8011B66C
/* 8011B644  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 8011B648  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8011B64C  38 00 00 0A */	li r0, 0xa
/* 8011B650  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8011B654  2C 04 00 E8 */	cmpwi r4, 0xe8
/* 8011B658  40 82 00 0C */	bne lbl_8011B664
/* 8011B65C  38 A0 00 0E */	li r5, 0xe
/* 8011B660  48 00 00 3C */	b lbl_8011B69C
lbl_8011B664:
/* 8011B664  38 A0 00 12 */	li r5, 0x12
/* 8011B668  48 00 00 34 */	b lbl_8011B69C
lbl_8011B66C:
/* 8011B66C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8011B670  41 82 00 2C */	beq lbl_8011B69C
/* 8011B674  C0 42 93 94 */	lfs f2, lit_8785(r2)
/* 8011B678  38 00 00 05 */	li r0, 5
/* 8011B67C  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8011B680  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 8011B684  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 8011B688  D0 1F 34 D4 */	stfs f0, 0x34d4(r31)
/* 8011B68C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011B690  D0 1F 34 D8 */	stfs f0, 0x34d8(r31)
/* 8011B694  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011B698  D0 1F 34 DC */	stfs f0, 0x34dc(r31)
lbl_8011B69C:
/* 8011B69C  38 00 00 01 */	li r0, 1
/* 8011B6A0  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8011B6A4  38 00 00 00 */	li r0, 0
/* 8011B6A8  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_8011B6AC:
/* 8011B6AC  7F E3 FB 78 */	mr r3, r31
/* 8011B6B0  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011B6B4  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 8011B6B8  4B F9 19 55 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 8011B6BC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011B6C0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011B6C4  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011B6C8  60 00 00 04 */	ori r0, r0, 4
/* 8011B6CC  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 8011B6D0  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011B6D4  60 00 40 00 */	ori r0, r0, 0x4000
/* 8011B6D8  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 8011B6DC  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 8011B6E0  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 8011B6E4  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8011B6E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011B6EC  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8011B6F0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011B6F4  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8011B6F8  38 00 00 00 */	li r0, 0
/* 8011B6FC  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8011B700  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8011B704  38 60 00 01 */	li r3, 1
lbl_8011B708:
/* 8011B708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011B70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011B710  7C 08 03 A6 */	mtlr r0
/* 8011B714  38 21 00 10 */	addi r1, r1, 0x10
/* 8011B718  4E 80 00 20 */	blr 
