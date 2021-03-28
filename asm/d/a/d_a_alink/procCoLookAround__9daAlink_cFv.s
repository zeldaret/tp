lbl_8011C760:
/* 8011C760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011C764  7C 08 02 A6 */	mflr r0
/* 8011C768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011C76C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011C770  93 C1 00 08 */	stw r30, 8(r1)
/* 8011C774  7C 7E 1B 78 */	mr r30, r3
/* 8011C778  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8011C77C  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8011C780  2C 00 00 00 */	cmpwi r0, 0
/* 8011C784  40 82 00 10 */	bne lbl_8011C794
/* 8011C788  38 00 00 01 */	li r0, 1
/* 8011C78C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8011C790  48 00 00 0C */	b lbl_8011C79C
lbl_8011C794:
/* 8011C794  38 00 00 04 */	li r0, 4
/* 8011C798  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_8011C79C:
/* 8011C79C  7F E3 FB 78 */	mr r3, r31
/* 8011C7A0  48 04 1D 2D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011C7A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011C7A8  41 82 00 1C */	beq lbl_8011C7C4
/* 8011C7AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011C7B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011C7B4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011C7B8  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8011C7BC  4B F2 B9 C1 */	bl cutEnd__16dEvent_manager_cFi
/* 8011C7C0  48 00 00 40 */	b lbl_8011C800
lbl_8011C7C4:
/* 8011C7C4  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 8011C7C8  2C 00 00 00 */	cmpwi r0, 0
/* 8011C7CC  41 82 00 34 */	beq lbl_8011C800
/* 8011C7D0  7F E3 FB 78 */	mr r3, r31
/* 8011C7D4  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8011C7D8  48 20 BC 55 */	bl checkPass__12J3DFrameCtrlFf
/* 8011C7DC  2C 03 00 00 */	cmpwi r3, 0
/* 8011C7E0  41 82 00 20 */	beq lbl_8011C800
/* 8011C7E4  7F C3 F3 78 */	mr r3, r30
/* 8011C7E8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001009F@ha */
/* 8011C7EC  38 84 00 9F */	addi r4, r4, 0x009F /* 0x0001009F@l */
/* 8011C7F0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8011C7F4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011C7F8  7D 89 03 A6 */	mtctr r12
/* 8011C7FC  4E 80 04 21 */	bctrl 
lbl_8011C800:
/* 8011C800  38 60 00 01 */	li r3, 1
/* 8011C804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011C808  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011C80C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011C810  7C 08 03 A6 */	mtlr r0
/* 8011C814  38 21 00 10 */	addi r1, r1, 0x10
/* 8011C818  4E 80 00 20 */	blr 
