lbl_80D3A47C:
/* 80D3A47C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3A480  7C 08 02 A6 */	mflr r0
/* 80D3A484  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3A488  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3A48C  4B 62 7D 4D */	bl _savegpr_28
/* 80D3A490  7C 7F 1B 78 */	mr r31, r3
/* 80D3A494  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D3A498  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D3A49C  40 82 01 1C */	bne lbl_80D3A5B8
/* 80D3A4A0  7F E0 FB 79 */	or. r0, r31, r31
/* 80D3A4A4  41 82 01 08 */	beq lbl_80D3A5AC
/* 80D3A4A8  7C 1E 03 78 */	mr r30, r0
/* 80D3A4AC  7C 1D 03 78 */	mr r29, r0
/* 80D3A4B0  4B 2D E6 B5 */	bl __ct__10fopAc_ac_cFv
/* 80D3A4B4  3C 60 80 3B */	lis r3, __vt__12daItemBase_c@ha /* 0x803B3610@ha */
/* 80D3A4B8  38 03 36 10 */	addi r0, r3, __vt__12daItemBase_c@l /* 0x803B3610@l */
/* 80D3A4BC  90 1D 05 68 */	stw r0, 0x568(r29)
/* 80D3A4C0  3B 9D 05 8C */	addi r28, r29, 0x58c
/* 80D3A4C4  7F 83 E3 78 */	mr r3, r28
/* 80D3A4C8  4B 33 BB D9 */	bl __ct__9dBgS_AcchFv
/* 80D3A4CC  3C 60 80 D4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D3B87C@ha */
/* 80D3A4D0  38 63 B8 7C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D3B87C@l */
/* 80D3A4D4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80D3A4D8  38 03 00 0C */	addi r0, r3, 0xc
/* 80D3A4DC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80D3A4E0  38 03 00 18 */	addi r0, r3, 0x18
/* 80D3A4E4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80D3A4E8  38 7C 00 14 */	addi r3, r28, 0x14
/* 80D3A4EC  4B 33 E9 7D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D3A4F0  38 7D 07 64 */	addi r3, r29, 0x764
/* 80D3A4F4  4B 33 B9 B9 */	bl __ct__12dBgS_AcchCirFv
/* 80D3A4F8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D3A4FC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D3A500  90 1D 07 BC */	stw r0, 0x7bc(r29)
/* 80D3A504  38 7D 07 C0 */	addi r3, r29, 0x7c0
/* 80D3A508  4B 34 92 59 */	bl __ct__10dCcD_GSttsFv
/* 80D3A50C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D3A510  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D3A514  90 7D 07 BC */	stw r3, 0x7bc(r29)
/* 80D3A518  38 03 00 20 */	addi r0, r3, 0x20
/* 80D3A51C  90 1D 07 C0 */	stw r0, 0x7c0(r29)
/* 80D3A520  3B 9D 07 E0 */	addi r28, r29, 0x7e0
/* 80D3A524  7F 83 E3 78 */	mr r3, r28
/* 80D3A528  4B 34 95 01 */	bl __ct__12dCcD_GObjInfFv
/* 80D3A52C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D3A530  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D3A534  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D3A538  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D3B870@ha */
/* 80D3A53C  38 03 B8 70 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D3B870@l */
/* 80D3A540  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80D3A544  3C 60 80 D4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D3B864@ha */
/* 80D3A548  38 03 B8 64 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D3B864@l */
/* 80D3A54C  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D3A550  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D3A554  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D3A558  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80D3A55C  38 03 00 58 */	addi r0, r3, 0x58
/* 80D3A560  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D3A564  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D3A568  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D3A56C  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80D3A570  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D3A574  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D3A578  38 03 00 84 */	addi r0, r3, 0x84
/* 80D3A57C  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D3A580  3C 60 80 D4 */	lis r3, __vt__14daObjWStatue_c@ha /* 0x80D3B8A0@ha */
/* 80D3A584  38 03 B8 A0 */	addi r0, r3, __vt__14daObjWStatue_c@l /* 0x80D3B8A0@l */
/* 80D3A588  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D3A58C  38 7E 09 4C */	addi r3, r30, 0x94c
/* 80D3A590  3C 80 80 D4 */	lis r4, __defctor__19dPa_followEcallBackFv@ha /* 0x80D3A6F4@ha */
/* 80D3A594  38 84 A6 F4 */	addi r4, r4, __defctor__19dPa_followEcallBackFv@l /* 0x80D3A6F4@l */
/* 80D3A598  3C A0 80 D4 */	lis r5, __dt__19dPa_followEcallBackFv@ha /* 0x80D3A66C@ha */
/* 80D3A59C  38 A5 A6 6C */	addi r5, r5, __dt__19dPa_followEcallBackFv@l /* 0x80D3A66C@l */
/* 80D3A5A0  38 C0 00 14 */	li r6, 0x14
/* 80D3A5A4  38 E0 00 02 */	li r7, 2
/* 80D3A5A8  4B 62 77 B9 */	bl __construct_array
lbl_80D3A5AC:
/* 80D3A5AC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D3A5B0  60 00 00 08 */	ori r0, r0, 8
/* 80D3A5B4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D3A5B8:
/* 80D3A5B8  38 00 00 82 */	li r0, 0x82
/* 80D3A5BC  98 1F 09 2A */	stb r0, 0x92a(r31)
/* 80D3A5C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3A5C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3A5C8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D3A5CC  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D3A5D0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D3A5D4  7C 05 07 74 */	extsb r5, r0
/* 80D3A5D8  4B 2F AD 89 */	bl isSwitch__10dSv_info_cCFii
/* 80D3A5DC  2C 03 00 00 */	cmpwi r3, 0
/* 80D3A5E0  41 82 00 0C */	beq lbl_80D3A5EC
/* 80D3A5E4  38 60 00 05 */	li r3, 5
/* 80D3A5E8  48 00 00 6C */	b lbl_80D3A654
lbl_80D3A5EC:
/* 80D3A5EC  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 80D3A5F0  54 00 20 36 */	slwi r0, r0, 4
/* 80D3A5F4  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 80D3A5F8  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 80D3A5FC  7C 83 00 2E */	lwzx r4, r3, r0
/* 80D3A600  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80D3A604  4B 2F 28 B9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D3A608  7C 7E 1B 78 */	mr r30, r3
/* 80D3A60C  2C 1E 00 04 */	cmpwi r30, 4
/* 80D3A610  40 82 00 40 */	bne lbl_80D3A650
/* 80D3A614  7F E3 FB 78 */	mr r3, r31
/* 80D3A618  3C 80 80 03 */	lis r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@ha /* 0x80037B78@ha */
/* 80D3A61C  38 84 7B 78 */	addi r4, r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@l /* 0x80037B78@l */
/* 80D3A620  38 A0 08 20 */	li r5, 0x820
/* 80D3A624  4B 2D FE 8D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D3A628  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3A62C  40 82 00 0C */	bne lbl_80D3A638
/* 80D3A630  38 60 00 05 */	li r3, 5
/* 80D3A634  48 00 00 20 */	b lbl_80D3A654
lbl_80D3A638:
/* 80D3A638  7F E3 FB 78 */	mr r3, r31
/* 80D3A63C  4B FF FC B5 */	bl Create__14daObjWStatue_cFv
/* 80D3A640  2C 03 00 00 */	cmpwi r3, 0
/* 80D3A644  40 82 00 0C */	bne lbl_80D3A650
/* 80D3A648  38 60 00 05 */	li r3, 5
/* 80D3A64C  48 00 00 08 */	b lbl_80D3A654
lbl_80D3A650:
/* 80D3A650  7F C3 F3 78 */	mr r3, r30
lbl_80D3A654:
/* 80D3A654  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3A658  4B 62 7B CD */	bl _restgpr_28
/* 80D3A65C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3A660  7C 08 03 A6 */	mtlr r0
/* 80D3A664  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3A668  4E 80 00 20 */	blr 
