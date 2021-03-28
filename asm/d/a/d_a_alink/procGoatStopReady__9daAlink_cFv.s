lbl_8011D4D4:
/* 8011D4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D4D8  7C 08 02 A6 */	mflr r0
/* 8011D4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D4E4  7C 7F 1B 78 */	mr r31, r3
/* 8011D4E8  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8011D4EC  48 04 0F E1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011D4F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011D4F4  41 82 00 18 */	beq lbl_8011D50C
/* 8011D4F8  7F E3 FB 78 */	mr r3, r31
/* 8011D4FC  38 80 01 22 */	li r4, 0x122
/* 8011D500  4B F8 FA 81 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011D504  38 00 00 01 */	li r0, 1
/* 8011D508  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_8011D50C:
/* 8011D50C  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011D510  2C 00 00 00 */	cmpwi r0, 0
/* 8011D514  41 82 00 18 */	beq lbl_8011D52C
/* 8011D518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011D51C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011D520  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011D524  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011D528  4B F2 AC 55 */	bl cutEnd__16dEvent_manager_cFi
lbl_8011D52C:
/* 8011D52C  38 60 00 01 */	li r3, 1
/* 8011D530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D538  7C 08 03 A6 */	mtlr r0
/* 8011D53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D540  4E 80 00 20 */	blr 
