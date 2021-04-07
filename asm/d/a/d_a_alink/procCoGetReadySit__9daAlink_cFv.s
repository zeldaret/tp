lbl_8011D64C:
/* 8011D64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D650  7C 08 02 A6 */	mflr r0
/* 8011D654  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D65C  7C 7F 1B 78 */	mr r31, r3
/* 8011D660  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8011D664  48 04 0E 69 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011D668  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011D66C  41 82 00 0C */	beq lbl_8011D678
/* 8011D670  38 00 00 01 */	li r0, 1
/* 8011D674  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_8011D678:
/* 8011D678  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D67C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011D680  40 82 00 18 */	bne lbl_8011D698
/* 8011D684  88 1F 2F 99 */	lbz r0, 0x2f99(r31)
/* 8011D688  28 00 00 0C */	cmplwi r0, 0xc
/* 8011D68C  41 82 00 0C */	beq lbl_8011D698
/* 8011D690  38 00 00 04 */	li r0, 4
/* 8011D694  98 1F 2F 99 */	stb r0, 0x2f99(r31)
lbl_8011D698:
/* 8011D698  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011D69C  2C 00 00 00 */	cmpwi r0, 0
/* 8011D6A0  41 82 00 18 */	beq lbl_8011D6B8
/* 8011D6A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011D6A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011D6AC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011D6B0  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011D6B4  4B F2 AA C9 */	bl cutEnd__16dEvent_manager_cFi
lbl_8011D6B8:
/* 8011D6B8  38 60 00 01 */	li r3, 1
/* 8011D6BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D6C4  7C 08 03 A6 */	mtlr r0
/* 8011D6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D6CC  4E 80 00 20 */	blr 
