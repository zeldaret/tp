lbl_8011A5CC:
/* 8011A5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A5D0  7C 08 02 A6 */	mflr r0
/* 8011A5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A5D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011A5DC  7C 7F 1B 78 */	mr r31, r3
/* 8011A5E0  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8011A5E4  2C 00 00 00 */	cmpwi r0, 0
/* 8011A5E8  41 82 00 50 */	beq lbl_8011A638
/* 8011A5EC  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8011A5F0  48 04 3E DD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011A5F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011A5F8  41 82 00 78 */	beq lbl_8011A670
/* 8011A5FC  7F E3 FB 78 */	mr r3, r31
/* 8011A600  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 8011A604  4B F9 38 11 */	bl setBlendMoveAnime__9daAlink_cFf
/* 8011A608  7F E3 FB 78 */	mr r3, r31
/* 8011A60C  38 80 00 46 */	li r4, 0x46
/* 8011A610  4B F9 F0 31 */	bl itemEquip__9daAlink_cFUs
/* 8011A614  C0 02 93 44 */	lfs f0, lit_7977(r2)
/* 8011A618  D0 1F 20 58 */	stfs f0, 0x2058(r31)
/* 8011A61C  80 7F 1F 54 */	lwz r3, 0x1f54(r31)
/* 8011A620  D0 03 00 08 */	stfs f0, 8(r3)
/* 8011A624  7F E3 FB 78 */	mr r3, r31
/* 8011A628  4B FA 00 79 */	bl commonChangeItem__9daAlink_cFv
/* 8011A62C  38 00 00 00 */	li r0, 0
/* 8011A630  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011A634  48 00 00 3C */	b lbl_8011A670
lbl_8011A638:
/* 8011A638  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011A63C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011A640  40 82 00 0C */	bne lbl_8011A64C
/* 8011A644  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8011A648  4B F9 37 CD */	bl setBlendMoveAnime__9daAlink_cFf
lbl_8011A64C:
/* 8011A64C  7F E3 FB 78 */	mr r3, r31
/* 8011A650  4B F9 EC 05 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 8011A654  2C 03 00 00 */	cmpwi r3, 0
/* 8011A658  41 82 00 18 */	beq lbl_8011A670
/* 8011A65C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011A660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011A664  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011A668  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011A66C  4B F2 DB 11 */	bl cutEnd__16dEvent_manager_cFi
lbl_8011A670:
/* 8011A670  38 60 00 01 */	li r3, 1
/* 8011A674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011A678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A67C  7C 08 03 A6 */	mtlr r0
/* 8011A680  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A684  4E 80 00 20 */	blr 
