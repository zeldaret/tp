lbl_8011EBDC:
/* 8011EBDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011EBE0  7C 08 02 A6 */	mflr r0
/* 8011EBE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011EBE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011EBEC  7C 7F 1B 78 */	mr r31, r3
/* 8011EBF0  38 80 00 E8 */	li r4, 0xe8
/* 8011EBF4  4B FA 41 B1 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011EBF8  2C 03 00 00 */	cmpwi r3, 0
/* 8011EBFC  40 82 00 0C */	bne lbl_8011EC08
/* 8011EC00  38 60 00 00 */	li r3, 0
/* 8011EC04  48 00 00 48 */	b lbl_8011EC4C
lbl_8011EC08:
/* 8011EC08  7F E3 FB 78 */	mr r3, r31
/* 8011EC0C  38 80 01 8F */	li r4, 0x18f
/* 8011EC10  4B F8 E3 71 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011EC14  7F E3 FB 78 */	mr r3, r31
/* 8011EC18  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100A3@ha */
/* 8011EC1C  38 84 00 A3 */	addi r4, r4, 0x00A3 /* 0x000100A3@l */
/* 8011EC20  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011EC24  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011EC28  7D 89 03 A6 */	mtctr r12
/* 8011EC2C  4E 80 04 21 */	bctrl 
/* 8011EC30  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011EC34  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011EC38  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8011EC3C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8011EC40  38 00 00 00 */	li r0, 0
/* 8011EC44  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011EC48  38 60 00 01 */	li r3, 1
lbl_8011EC4C:
/* 8011EC4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011EC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011EC54  7C 08 03 A6 */	mtlr r0
/* 8011EC58  38 21 00 10 */	addi r1, r1, 0x10
/* 8011EC5C  4E 80 00 20 */	blr 
