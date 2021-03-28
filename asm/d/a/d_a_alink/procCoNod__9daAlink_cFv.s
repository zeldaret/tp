lbl_8011D1F4:
/* 8011D1F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D1F8  7C 08 02 A6 */	mflr r0
/* 8011D1FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D204  7C 7F 1B 78 */	mr r31, r3
/* 8011D208  38 7F 20 48 */	addi r3, r31, 0x2048
/* 8011D20C  48 04 12 C1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011D210  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011D214  41 82 00 1C */	beq lbl_8011D230
/* 8011D218  38 00 00 01 */	li r0, 1
/* 8011D21C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011D220  7F E3 FB 78 */	mr r3, r31
/* 8011D224  38 80 00 02 */	li r4, 2
/* 8011D228  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 8011D22C  4B F9 04 F9 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_8011D230:
/* 8011D230  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011D234  2C 00 00 00 */	cmpwi r0, 0
/* 8011D238  41 82 00 18 */	beq lbl_8011D250
/* 8011D23C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011D240  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011D244  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011D248  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011D24C  4B F2 AF 31 */	bl cutEnd__16dEvent_manager_cFi
lbl_8011D250:
/* 8011D250  38 60 00 01 */	li r3, 1
/* 8011D254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D25C  7C 08 03 A6 */	mtlr r0
/* 8011D260  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D264  4E 80 00 20 */	blr 
