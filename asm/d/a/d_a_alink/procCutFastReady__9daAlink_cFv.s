lbl_8011EB8C:
/* 8011EB8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011EB90  7C 08 02 A6 */	mflr r0
/* 8011EB94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011EB98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011EB9C  7C 7F 1B 78 */	mr r31, r3
/* 8011EBA0  38 7F 20 48 */	addi r3, r31, 0x2048
/* 8011EBA4  48 03 F9 29 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011EBA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011EBAC  41 82 00 18 */	beq lbl_8011EBC4
/* 8011EBB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011EBB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011EBB8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011EBBC  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011EBC0  4B F2 95 BD */	bl cutEnd__16dEvent_manager_cFi
lbl_8011EBC4:
/* 8011EBC4  38 60 00 01 */	li r3, 1
/* 8011EBC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011EBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011EBD0  7C 08 03 A6 */	mtlr r0
/* 8011EBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8011EBD8  4E 80 00 20 */	blr 
