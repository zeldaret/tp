lbl_8011A4C0:
/* 8011A4C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A4C4  7C 08 02 A6 */	mflr r0
/* 8011A4C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A4CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011A4D0  7C 7F 1B 78 */	mr r31, r3
/* 8011A4D4  38 80 01 47 */	li r4, 0x147
/* 8011A4D8  4B FA 88 CD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011A4DC  2C 03 00 00 */	cmpwi r3, 0
/* 8011A4E0  40 82 00 0C */	bne lbl_8011A4EC
/* 8011A4E4  38 60 00 00 */	li r3, 0
/* 8011A4E8  48 00 00 D0 */	b lbl_8011A5B8
lbl_8011A4EC:
/* 8011A4EC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011A4F0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011A4F4  38 00 00 00 */	li r0, 0
/* 8011A4F8  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011A4FC  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011A500  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011A504  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011A508  41 82 00 1C */	beq lbl_8011A524
/* 8011A50C  7F E3 FB 78 */	mr r3, r31
/* 8011A510  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 8011A514  38 84 EE 28 */	addi r4, r4, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 8011A518  C0 24 00 94 */	lfs f1, 0x94(r4)
/* 8011A51C  48 00 E3 29 */	bl setBlendWolfMoveAnime__9daAlink_cFf
/* 8011A520  48 00 00 94 */	b lbl_8011A5B4
lbl_8011A524:
/* 8011A524  7F E3 FB 78 */	mr r3, r31
/* 8011A528  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 8011A52C  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 8011A530  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8011A534  4B F9 38 E1 */	bl setBlendMoveAnime__9daAlink_cFf
/* 8011A538  80 1F 06 10 */	lwz r0, 0x610(r31)
/* 8011A53C  2C 00 00 00 */	cmpwi r0, 0
/* 8011A540  40 82 00 20 */	bne lbl_8011A560
/* 8011A544  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 8011A548  28 00 00 FF */	cmplwi r0, 0xff
/* 8011A54C  41 82 00 68 */	beq lbl_8011A5B4
/* 8011A550  7F E3 FB 78 */	mr r3, r31
/* 8011A554  38 80 00 00 */	li r4, 0
/* 8011A558  4B F9 F2 E5 */	bl allUnequip__9daAlink_cFi
/* 8011A55C  48 00 00 58 */	b lbl_8011A5B4
lbl_8011A560:
/* 8011A560  2C 00 00 01 */	cmpwi r0, 1
/* 8011A564  40 82 00 20 */	bne lbl_8011A584
/* 8011A568  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 8011A56C  28 00 01 03 */	cmplwi r0, 0x103
/* 8011A570  41 82 00 44 */	beq lbl_8011A5B4
/* 8011A574  7F E3 FB 78 */	mr r3, r31
/* 8011A578  38 80 00 00 */	li r4, 0
/* 8011A57C  4B F9 EE 79 */	bl swordEquip__9daAlink_cFi
/* 8011A580  48 00 00 34 */	b lbl_8011A5B4
lbl_8011A584:
/* 8011A584  2C 00 00 02 */	cmpwi r0, 2
/* 8011A588  40 82 00 2C */	bne lbl_8011A5B4
/* 8011A58C  38 00 00 01 */	li r0, 1
/* 8011A590  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011A594  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011A598  7F E3 FB 78 */	mr r3, r31
/* 8011A59C  38 80 01 88 */	li r4, 0x188
/* 8011A5A0  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011A5A4  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 8011A5A8  38 A0 00 27 */	li r5, 0x27
/* 8011A5AC  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 8011A5B0  4B F9 2A 5D */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
lbl_8011A5B4:
/* 8011A5B4  38 60 00 01 */	li r3, 1
lbl_8011A5B8:
/* 8011A5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011A5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A5C0  7C 08 03 A6 */	mtlr r0
/* 8011A5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A5C8  4E 80 00 20 */	blr 
