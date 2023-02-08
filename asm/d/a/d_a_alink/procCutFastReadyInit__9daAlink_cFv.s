lbl_8011EAE8:
/* 8011EAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011EAEC  7C 08 02 A6 */	mflr r0
/* 8011EAF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011EAF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011EAF8  7C 7F 1B 78 */	mr r31, r3
/* 8011EAFC  38 80 00 E7 */	li r4, 0xe7
/* 8011EB00  4B FA 42 A5 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011EB04  2C 03 00 00 */	cmpwi r3, 0
/* 8011EB08  40 82 00 0C */	bne lbl_8011EB14
/* 8011EB0C  38 60 00 00 */	li r3, 0
/* 8011EB10  48 00 00 68 */	b lbl_8011EB78
lbl_8011EB14:
/* 8011EB14  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011EB18  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011EB1C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011EB20  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011EB24  7F E3 FB 78 */	mr r3, r31
/* 8011EB28  38 80 00 19 */	li r4, 0x19
/* 8011EB2C  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 8011EB30  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 8011EB34  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8011EB38  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8011EB3C  4B F8 E4 A5 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8011EB40  7F E3 FB 78 */	mr r3, r31
/* 8011EB44  38 80 02 55 */	li r4, 0x255
/* 8011EB48  38 A0 00 02 */	li r5, 2
/* 8011EB4C  3C C0 80 39 */	lis r6, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 8011EB50  38 E6 DE 8C */	addi r7, r6, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 8011EB54  C0 27 00 04 */	lfs f1, 4(r7)
/* 8011EB58  C0 42 93 1C */	lfs f2, lit_7448(r2)
/* 8011EB5C  A8 C7 00 00 */	lha r6, 0(r7)
/* 8011EB60  C0 67 00 0C */	lfs f3, 0xc(r7)
/* 8011EB64  4B F8 E8 75 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 8011EB68  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8011EB6C  64 00 01 00 */	oris r0, r0, 0x100
/* 8011EB70  90 1F 05 70 */	stw r0, 0x570(r31)
/* 8011EB74  38 60 00 01 */	li r3, 1
lbl_8011EB78:
/* 8011EB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011EB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011EB80  7C 08 03 A6 */	mtlr r0
/* 8011EB84  38 21 00 10 */	addi r1, r1, 0x10
/* 8011EB88  4E 80 00 20 */	blr 
