lbl_8011EA78:
/* 8011EA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011EA7C  7C 08 02 A6 */	mflr r0
/* 8011EA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011EA84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011EA88  7C 7F 1B 78 */	mr r31, r3
/* 8011EA8C  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 8011EA90  64 00 80 00 */	oris r0, r0, 0x8000
/* 8011EA94  90 03 05 8C */	stw r0, 0x58c(r3)
/* 8011EA98  C0 03 37 C8 */	lfs f0, 0x37c8(r3)
/* 8011EA9C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8011EAA0  C0 03 37 CC */	lfs f0, 0x37cc(r3)
/* 8011EAA4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8011EAA8  C0 03 37 D0 */	lfs f0, 0x37d0(r3)
/* 8011EAAC  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 8011EAB0  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8011EAB4  48 03 FA 19 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011EAB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011EABC  41 82 00 14 */	beq lbl_8011EAD0
/* 8011EAC0  7F E3 FB 78 */	mr r3, r31
/* 8011EAC4  38 80 01 98 */	li r4, 0x198
/* 8011EAC8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8011EACC  4B F8 E4 E5 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
lbl_8011EAD0:
/* 8011EAD0  38 60 00 01 */	li r3, 1
/* 8011EAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011EAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011EADC  7C 08 03 A6 */	mtlr r0
/* 8011EAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8011EAE4  4E 80 00 20 */	blr 
