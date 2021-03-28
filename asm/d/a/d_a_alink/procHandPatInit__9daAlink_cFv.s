lbl_8011CBD4:
/* 8011CBD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011CBD8  7C 08 02 A6 */	mflr r0
/* 8011CBDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011CBE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011CBE4  7C 7F 1B 78 */	mr r31, r3
/* 8011CBE8  38 80 00 D7 */	li r4, 0xd7
/* 8011CBEC  4B FA 61 B9 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011CBF0  2C 03 00 00 */	cmpwi r3, 0
/* 8011CBF4  40 82 00 0C */	bne lbl_8011CC00
/* 8011CBF8  38 60 00 00 */	li r3, 0
/* 8011CBFC  48 00 00 98 */	b lbl_8011CC94
lbl_8011CC00:
/* 8011CC00  7F E3 FB 78 */	mr r3, r31
/* 8011CC04  38 80 01 1F */	li r4, 0x11f
/* 8011CC08  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011CC0C  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 8011CC10  38 A0 FF FF */	li r5, -1
/* 8011CC14  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 8011CC18  4B F9 03 F5 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 8011CC1C  38 00 00 FE */	li r0, 0xfe
/* 8011CC20  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 8011CC24  98 1F 2F 93 */	stb r0, 0x2f93(r31)
/* 8011CC28  38 00 00 0D */	li r0, 0xd
/* 8011CC2C  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8011CC30  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha
/* 8011CC34  38 63 55 44 */	addi r3, r3, l_halfAtnWaitBaseAnime@l
/* 8011CC38  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011CC3C  FC 40 00 50 */	fneg f2, f0
/* 8011CC40  C0 23 00 04 */	lfs f1, 4(r3)
/* 8011CC44  C0 03 00 00 */	lfs f0, 0(r3)
/* 8011CC48  FC 00 00 50 */	fneg f0, f0
/* 8011CC4C  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8011CC50  D0 3F 35 8C */	stfs f1, 0x358c(r31)
/* 8011CC54  D0 5F 35 90 */	stfs f2, 0x3590(r31)
/* 8011CC58  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011CC5C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011CC60  7F E3 FB 78 */	mr r3, r31
/* 8011CC64  38 80 00 00 */	li r4, 0
/* 8011CC68  38 A0 80 00 */	li r5, -32768
/* 8011CC6C  38 C0 00 00 */	li r6, 0
/* 8011CC70  4B F9 0F 09 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 8011CC74  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8011CC78  3C 63 00 01 */	addis r3, r3, 1
/* 8011CC7C  38 03 80 00 */	addi r0, r3, -32768
/* 8011CC80  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8011CC84  38 00 00 00 */	li r0, 0
/* 8011CC88  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011CC8C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011CC90  38 60 00 01 */	li r3, 1
lbl_8011CC94:
/* 8011CC94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011CC98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011CC9C  7C 08 03 A6 */	mtlr r0
/* 8011CCA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8011CCA4  4E 80 00 20 */	blr 
