lbl_8011DED8:
/* 8011DED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011DEDC  7C 08 02 A6 */	mflr r0
/* 8011DEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011DEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011DEE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8011DEEC  7C 7E 1B 78 */	mr r30, r3
/* 8011DEF0  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8011DEF4  7F E3 FB 78 */	mr r3, r31
/* 8011DEF8  48 04 05 D5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011DEFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011DF00  41 82 00 1C */	beq lbl_8011DF1C
/* 8011DF04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011DF08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011DF0C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011DF10  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8011DF14  4B F2 A2 69 */	bl cutEnd__16dEvent_manager_cFi
/* 8011DF18  48 00 00 34 */	b lbl_8011DF4C
lbl_8011DF1C:
/* 8011DF1C  7F E3 FB 78 */	mr r3, r31
/* 8011DF20  C0 22 93 54 */	lfs f1, lit_8248(r2)
/* 8011DF24  48 20 A5 09 */	bl checkPass__12J3DFrameCtrlFf
/* 8011DF28  2C 03 00 00 */	cmpwi r3, 0
/* 8011DF2C  41 82 00 20 */	beq lbl_8011DF4C
/* 8011DF30  7F C3 F3 78 */	mr r3, r30
/* 8011DF34  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100A2@ha */
/* 8011DF38  38 84 00 A2 */	addi r4, r4, 0x00A2 /* 0x000100A2@l */
/* 8011DF3C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8011DF40  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011DF44  7D 89 03 A6 */	mtctr r12
/* 8011DF48  4E 80 04 21 */	bctrl 
lbl_8011DF4C:
/* 8011DF4C  38 60 00 01 */	li r3, 1
/* 8011DF50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011DF54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011DF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011DF5C  7C 08 03 A6 */	mtlr r0
/* 8011DF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8011DF64  4E 80 00 20 */	blr 
