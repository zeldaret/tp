lbl_8011BDF0:
/* 8011BDF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011BDF4  7C 08 02 A6 */	mflr r0
/* 8011BDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011BDFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011BE00  7C 7F 1B 78 */	mr r31, r3
/* 8011BE04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011BE08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011BE0C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011BE10  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011BE14  4B F2 C3 69 */	bl cutEnd__16dEvent_manager_cFi
/* 8011BE18  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8011BE1C  48 04 26 B1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011BE20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011BE24  41 82 00 18 */	beq lbl_8011BE3C
/* 8011BE28  7F E3 FB 78 */	mr r3, r31
/* 8011BE2C  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 8011BE30  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 8011BE34  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8011BE38  4B F9 1F DD */	bl setBlendMoveAnime__9daAlink_cFf
lbl_8011BE3C:
/* 8011BE3C  38 60 00 01 */	li r3, 1
/* 8011BE40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011BE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011BE48  7C 08 03 A6 */	mtlr r0
/* 8011BE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8011BE50  4E 80 00 20 */	blr 
