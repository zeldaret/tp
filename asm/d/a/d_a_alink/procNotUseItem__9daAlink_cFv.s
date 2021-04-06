lbl_8011E57C:
/* 8011E57C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011E580  7C 08 02 A6 */	mflr r0
/* 8011E584  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011E588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011E58C  93 C1 00 08 */	stw r30, 8(r1)
/* 8011E590  7C 7F 1B 78 */	mr r31, r3
/* 8011E594  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 8011E598  2C 00 00 00 */	cmpwi r0, 0
/* 8011E59C  40 82 00 44 */	bne lbl_8011E5E0
/* 8011E5A0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8011E5A4  80 9F 31 98 */	lwz r4, 0x3198(r31)
/* 8011E5A8  38 A0 00 05 */	li r5, 5
/* 8011E5AC  38 C0 FF FF */	li r6, -1
/* 8011E5B0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8011E5B4  7C 07 07 74 */	extsb r7, r0
/* 8011E5B8  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8011E5BC  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 8011E5C0  4B EF D6 29 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 8011E5C4  7C 64 1B 78 */	mr r4, r3
/* 8011E5C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011E5CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011E5D0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8011E5D4  4B F2 51 19 */	bl setPtI_Id__14dEvt_control_cFUi
/* 8011E5D8  38 00 00 01 */	li r0, 1
/* 8011E5DC  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_8011E5E0:
/* 8011E5E0  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 8011E5E4  2C 00 00 00 */	cmpwi r0, 0
/* 8011E5E8  41 82 00 A0 */	beq lbl_8011E688
/* 8011E5EC  7F E3 FB 78 */	mr r3, r31
/* 8011E5F0  4B EF D5 55 */	bl fopAcM_getItemEventPartner__FPC10fopAc_ac_c
/* 8011E5F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8011E5F8  41 82 00 CC */	beq lbl_8011E6C4
/* 8011E5FC  41 82 00 0C */	beq lbl_8011E608
/* 8011E600  80 7E 00 04 */	lwz r3, 4(r30)
/* 8011E604  48 00 00 08 */	b lbl_8011E60C
lbl_8011E608:
/* 8011E608  38 60 FF FF */	li r3, -1
lbl_8011E60C:
/* 8011E60C  4B F0 3B 2D */	bl fpcM_IsCreating__FUi
/* 8011E610  2C 03 00 00 */	cmpwi r3, 0
/* 8011E614  40 82 00 B0 */	bne lbl_8011E6C4
/* 8011E618  38 7F 28 0C */	addi r3, r31, 0x280c
/* 8011E61C  7F C4 F3 78 */	mr r4, r30
/* 8011E620  48 04 06 99 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8011E624  7F C3 F3 78 */	mr r3, r30
/* 8011E628  4B F1 94 4D */	bl show__12daItemBase_cFv
/* 8011E62C  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8011E630  2C 00 00 00 */	cmpwi r0, 0
/* 8011E634  40 82 00 28 */	bne lbl_8011E65C
/* 8011E638  38 00 00 01 */	li r0, 1
/* 8011E63C  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8011E640  7F E3 FB 78 */	mr r3, r31
/* 8011E644  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004F@ha */
/* 8011E648  38 84 00 4F */	addi r4, r4, 0x004F /* 0x0002004F@l */
/* 8011E64C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011E650  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8011E654  7D 89 03 A6 */	mtctr r12
/* 8011E658  4E 80 04 21 */	bctrl 
lbl_8011E65C:
/* 8011E65C  7F E3 FB 78 */	mr r3, r31
/* 8011E660  38 80 05 31 */	li r4, 0x531
/* 8011E664  4B FF A1 51 */	bl checkEndMessage__9daAlink_cFUl
/* 8011E668  2C 03 00 00 */	cmpwi r3, 0
/* 8011E66C  41 82 00 58 */	beq lbl_8011E6C4
/* 8011E670  7F E3 FB 78 */	mr r3, r31
/* 8011E674  4B FA 12 11 */	bl returnKeepItemData__9daAlink_cFv
/* 8011E678  7F E3 FB 78 */	mr r3, r31
/* 8011E67C  4B FF 96 15 */	bl resetSpecialEvent__9daAlink_cFv
/* 8011E680  38 60 00 01 */	li r3, 1
/* 8011E684  48 00 00 44 */	b lbl_8011E6C8
lbl_8011E688:
/* 8011E688  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8011E68C  48 03 FE 41 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011E690  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011E694  41 82 00 28 */	beq lbl_8011E6BC
/* 8011E698  7F E3 FB 78 */	mr r3, r31
/* 8011E69C  38 80 01 89 */	li r4, 0x189
/* 8011E6A0  4B F8 E8 E1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011E6A4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8011E6A8  60 00 01 00 */	ori r0, r0, 0x100
/* 8011E6AC  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8011E6B0  38 00 00 01 */	li r0, 1
/* 8011E6B4  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011E6B8  48 00 00 0C */	b lbl_8011E6C4
lbl_8011E6BC:
/* 8011E6BC  7F E3 FB 78 */	mr r3, r31
/* 8011E6C0  4B FF A0 B9 */	bl setTradeItemOutHand__9daAlink_cFv
lbl_8011E6C4:
/* 8011E6C4  38 60 00 01 */	li r3, 1
lbl_8011E6C8:
/* 8011E6C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011E6CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011E6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011E6D4  7C 08 03 A6 */	mtlr r0
/* 8011E6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8011E6DC  4E 80 00 20 */	blr 
