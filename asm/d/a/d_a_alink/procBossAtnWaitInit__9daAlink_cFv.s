lbl_8011C81C:
/* 8011C81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011C820  7C 08 02 A6 */	mflr r0
/* 8011C824  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011C828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011C82C  7C 7F 1B 78 */	mr r31, r3
/* 8011C830  38 80 00 C3 */	li r4, 0xc3
/* 8011C834  4B FA 65 71 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011C838  2C 03 00 00 */	cmpwi r3, 0
/* 8011C83C  40 82 00 0C */	bne lbl_8011C848
/* 8011C840  38 60 00 00 */	li r3, 0
/* 8011C844  48 00 00 38 */	b lbl_8011C87C
lbl_8011C848:
/* 8011C848  7F E3 FB 78 */	mr r3, r31
/* 8011C84C  38 80 01 26 */	li r4, 0x126
/* 8011C850  4B F9 07 31 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011C854  7F E3 FB 78 */	mr r3, r31
/* 8011C858  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100A0@ha */
/* 8011C85C  38 84 00 A0 */	addi r4, r4, 0x00A0 /* 0x000100A0@l */
/* 8011C860  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011C864  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011C868  7D 89 03 A6 */	mtctr r12
/* 8011C86C  4E 80 04 21 */	bctrl 
/* 8011C870  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011C874  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8011C878  38 60 00 01 */	li r3, 1
lbl_8011C87C:
/* 8011C87C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011C880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011C884  7C 08 03 A6 */	mtlr r0
/* 8011C888  38 21 00 10 */	addi r1, r1, 0x10
/* 8011C88C  4E 80 00 20 */	blr 
