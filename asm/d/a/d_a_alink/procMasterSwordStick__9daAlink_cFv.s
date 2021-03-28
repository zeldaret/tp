lbl_8011EC60:
/* 8011EC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011EC64  7C 08 02 A6 */	mflr r0
/* 8011EC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011EC6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011EC70  93 C1 00 08 */	stw r30, 8(r1)
/* 8011EC74  7C 7E 1B 78 */	mr r30, r3
/* 8011EC78  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8011EC7C  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8011EC80  2C 00 00 00 */	cmpwi r0, 0
/* 8011EC84  41 82 00 1C */	beq lbl_8011ECA0
/* 8011EC88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011EC8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011EC90  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011EC94  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8011EC98  4B F2 94 E5 */	bl cutEnd__16dEvent_manager_cFi
/* 8011EC9C  48 00 00 60 */	b lbl_8011ECFC
lbl_8011ECA0:
/* 8011ECA0  7F E3 FB 78 */	mr r3, r31
/* 8011ECA4  48 03 F8 29 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011ECA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011ECAC  41 82 00 34 */	beq lbl_8011ECE0
/* 8011ECB0  38 00 00 01 */	li r0, 1
/* 8011ECB4  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8011ECB8  7F C3 F3 78 */	mr r3, r30
/* 8011ECBC  38 80 01 90 */	li r4, 0x190
/* 8011ECC0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8011ECC4  4B F8 E2 ED */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 8011ECC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011ECCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011ECD0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011ECD4  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8011ECD8  4B F2 94 A5 */	bl cutEnd__16dEvent_manager_cFi
/* 8011ECDC  48 00 00 20 */	b lbl_8011ECFC
lbl_8011ECE0:
/* 8011ECE0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8011ECE4  C0 02 94 28 */	lfs f0, lit_14621(r2)
/* 8011ECE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011ECEC  4C 41 13 82 */	cror 2, 1, 2
/* 8011ECF0  40 82 00 0C */	bne lbl_8011ECFC
/* 8011ECF4  38 00 00 05 */	li r0, 5
/* 8011ECF8  98 1E 2F 93 */	stb r0, 0x2f93(r30)
lbl_8011ECFC:
/* 8011ECFC  38 60 00 01 */	li r3, 1
/* 8011ED00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011ED04  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011ED08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011ED0C  7C 08 03 A6 */	mtlr r0
/* 8011ED10  38 21 00 10 */	addi r1, r1, 0x10
/* 8011ED14  4E 80 00 20 */	blr 
