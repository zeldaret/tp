lbl_8011B3F0:
/* 8011B3F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011B3F4  7C 08 02 A6 */	mflr r0
/* 8011B3F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B3FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011B400  7C 7F 1B 78 */	mr r31, r3
/* 8011B404  38 80 01 49 */	li r4, 0x149
/* 8011B408  4B FA 79 9D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011B40C  2C 03 00 00 */	cmpwi r3, 0
/* 8011B410  40 82 00 0C */	bne lbl_8011B41C
/* 8011B414  38 60 00 00 */	li r3, 0
/* 8011B418  48 00 00 40 */	b lbl_8011B458
lbl_8011B41C:
/* 8011B41C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011B420  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011B424  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011B428  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011B42C  41 82 00 14 */	beq lbl_8011B440
/* 8011B430  7F E3 FB 78 */	mr r3, r31
/* 8011B434  38 80 00 15 */	li r4, 0x15
/* 8011B438  48 00 E2 41 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011B43C  48 00 00 10 */	b lbl_8011B44C
lbl_8011B440:
/* 8011B440  7F E3 FB 78 */	mr r3, r31
/* 8011B444  38 80 00 D6 */	li r4, 0xd6
/* 8011B448  4B F9 1B 39 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_8011B44C:
/* 8011B44C  38 00 00 00 */	li r0, 0
/* 8011B450  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011B454  38 60 00 01 */	li r3, 1
lbl_8011B458:
/* 8011B458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011B45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011B460  7C 08 03 A6 */	mtlr r0
/* 8011B464  38 21 00 10 */	addi r1, r1, 0x10
/* 8011B468  4E 80 00 20 */	blr 
