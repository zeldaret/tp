lbl_8015B7D4:
/* 8015B7D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015B7D8  7C 08 02 A6 */	mflr r0
/* 8015B7DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015B7E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8015B7E4  48 20 69 F5 */	bl _savegpr_28
/* 8015B7E8  7C 7F 1B 78 */	mr r31, r3
/* 8015B7EC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8015B7F0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8015B7F4  40 82 01 14 */	bne lbl_8015B908
/* 8015B7F8  7F E0 FB 79 */	or. r0, r31, r31
/* 8015B7FC  41 82 01 00 */	beq lbl_8015B8FC
/* 8015B800  7C 1E 03 78 */	mr r30, r0
/* 8015B804  7C 1D 03 78 */	mr r29, r0
/* 8015B808  4B EB D3 5D */	bl __ct__10fopAc_ac_cFv
/* 8015B80C  3C 60 80 3B */	lis r3, __vt__12daItemBase_c@ha /* 0x803B3610@ha */
/* 8015B810  38 03 36 10 */	addi r0, r3, __vt__12daItemBase_c@l /* 0x803B3610@l */
/* 8015B814  90 1D 05 68 */	stw r0, 0x568(r29)
/* 8015B818  3B 9D 05 8C */	addi r28, r29, 0x58c
/* 8015B81C  7F 83 E3 78 */	mr r3, r28
/* 8015B820  4B F1 A8 81 */	bl __ct__9dBgS_AcchFv
/* 8015B824  3C 60 80 3B */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x803B35C8@ha */
/* 8015B828  38 63 35 C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x803B35C8@l */
/* 8015B82C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8015B830  38 03 00 0C */	addi r0, r3, 0xc
/* 8015B834  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8015B838  38 03 00 18 */	addi r0, r3, 0x18
/* 8015B83C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8015B840  38 7C 00 14 */	addi r3, r28, 0x14
/* 8015B844  4B F1 D6 25 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8015B848  38 7D 07 64 */	addi r3, r29, 0x764
/* 8015B84C  4B F1 A6 61 */	bl __ct__12dBgS_AcchCirFv
/* 8015B850  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8015B854  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8015B858  90 1D 07 BC */	stw r0, 0x7bc(r29)
/* 8015B85C  38 7D 07 C0 */	addi r3, r29, 0x7c0
/* 8015B860  4B F2 7F 01 */	bl __ct__10dCcD_GSttsFv
/* 8015B864  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8015B868  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8015B86C  90 7D 07 BC */	stw r3, 0x7bc(r29)
/* 8015B870  38 03 00 20 */	addi r0, r3, 0x20
/* 8015B874  90 1D 07 C0 */	stw r0, 0x7c0(r29)
/* 8015B878  3B 9D 07 E0 */	addi r28, r29, 0x7e0
/* 8015B87C  7F 83 E3 78 */	mr r3, r28
/* 8015B880  4B F2 81 A9 */	bl __ct__12dCcD_GObjInfFv
/* 8015B884  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8015B888  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8015B88C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8015B890  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 8015B894  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 8015B898  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8015B89C  3C 60 80 3A */	lis r3, __vt__8cM3dGCyl@ha /* 0x803A720C@ha */
/* 8015B8A0  38 03 72 0C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x803A720C@l */
/* 8015B8A4  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8015B8A8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8015B8AC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8015B8B0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8015B8B4  38 03 00 58 */	addi r0, r3, 0x58
/* 8015B8B8  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8015B8BC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8015B8C0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8015B8C4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8015B8C8  38 03 00 2C */	addi r0, r3, 0x2c
/* 8015B8CC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8015B8D0  38 03 00 84 */	addi r0, r3, 0x84
/* 8015B8D4  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8015B8D8  3C 60 80 3C */	lis r3, __vt__8daItem_c@ha /* 0x803B9FA4@ha */
/* 8015B8DC  38 03 9F A4 */	addi r0, r3, __vt__8daItem_c@l /* 0x803B9FA4@l */
/* 8015B8E0  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8015B8E4  38 7E 09 78 */	addi r3, r30, 0x978
/* 8015B8E8  48 16 2F 5D */	bl __ct__16Z2SoundObjSimpleFv
/* 8015B8EC  38 7E 09 98 */	addi r3, r30, 0x998
/* 8015B8F0  38 80 00 00 */	li r4, 0
/* 8015B8F4  38 A0 00 00 */	li r5, 0
/* 8015B8F8  4B EE DC 89 */	bl __ct__19dPa_followEcallBackFUcUc
lbl_8015B8FC:
/* 8015B8FC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8015B900  60 00 00 08 */	ori r0, r0, 8
/* 8015B904  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8015B908:
/* 8015B908  88 1F 09 5D */	lbz r0, 0x95d(r31)
/* 8015B90C  28 00 00 00 */	cmplwi r0, 0
/* 8015B910  40 82 00 38 */	bne lbl_8015B948
/* 8015B914  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 8015B918  B0 1F 09 2C */	sth r0, 0x92c(r31)
/* 8015B91C  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 8015B920  B0 1F 09 2E */	sth r0, 0x92e(r31)
/* 8015B924  38 00 00 00 */	li r0, 0
/* 8015B928  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 8015B92C  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 8015B930  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 8015B934  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8015B938  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8015B93C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8015B940  38 00 00 01 */	li r0, 1
/* 8015B944  98 1F 09 5D */	stb r0, 0x95d(r31)
lbl_8015B948:
/* 8015B948  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8015B94C  98 1F 09 2A */	stb r0, 0x92a(r31)
/* 8015B950  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 8015B954  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l /* 0x803AED78@l */
/* 8015B958  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015B95C  54 00 10 3A */	slwi r0, r0, 2
/* 8015B960  7C 63 02 14 */	add r3, r3, r0
/* 8015B964  88 03 00 03 */	lbz r0, 3(r3)
/* 8015B968  54 1E 07 BC */	rlwinm r30, r0, 0, 0x1e, 0x1e
/* 8015B96C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8015B970  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8015B974  90 1F 09 20 */	stw r0, 0x920(r31)
/* 8015B978  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015B97C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015B980  80 9F 09 20 */	lwz r4, 0x920(r31)
/* 8015B984  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8015B988  7C 05 07 74 */	extsb r5, r0
/* 8015B98C  4B ED 9C 05 */	bl isItem__10dSv_info_cCFii
/* 8015B990  2C 03 00 00 */	cmpwi r3, 0
/* 8015B994  41 82 00 0C */	beq lbl_8015B9A0
/* 8015B998  38 60 00 05 */	li r3, 5
/* 8015B99C  48 00 00 88 */	b lbl_8015BA24
lbl_8015B9A0:
/* 8015B9A0  3B A0 00 04 */	li r29, 4
/* 8015B9A4  2C 1E 00 00 */	cmpwi r30, 0
/* 8015B9A8  41 82 00 10 */	beq lbl_8015B9B8
/* 8015B9AC  7F E3 FB 78 */	mr r3, r31
/* 8015B9B0  4B FF FA 29 */	bl CreateInit__8daItem_cFv
/* 8015B9B4  48 00 00 6C */	b lbl_8015BA20
lbl_8015B9B8:
/* 8015B9B8  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015B9BC  54 00 20 36 */	slwi r0, r0, 4
/* 8015B9C0  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 8015B9C4  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 8015B9C8  7C 83 00 2E */	lwzx r4, r3, r0
/* 8015B9CC  38 7F 05 6C */	addi r3, r31, 0x56c
/* 8015B9D0  4B ED 14 ED */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8015B9D4  7C 7D 1B 78 */	mr r29, r3
/* 8015B9D8  2C 1D 00 04 */	cmpwi r29, 4
/* 8015B9DC  40 82 00 44 */	bne lbl_8015BA20
/* 8015B9E0  3C 60 80 3B */	lis r3, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 8015B9E4  38 63 DD 88 */	addi r3, r3, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 8015B9E8  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015B9EC  54 00 20 36 */	slwi r0, r0, 4
/* 8015B9F0  7C 63 02 14 */	add r3, r3, r0
/* 8015B9F4  A0 A3 00 0C */	lhz r5, 0xc(r3)
/* 8015B9F8  7F E3 FB 78 */	mr r3, r31
/* 8015B9FC  3C 80 80 03 */	lis r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@ha /* 0x80037B78@ha */
/* 8015BA00  38 84 7B 78 */	addi r4, r4, CheckFieldItemCreateHeap__FP10fopAc_ac_c@l /* 0x80037B78@l */
/* 8015BA04  4B EB EA AD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8015BA08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015BA0C  40 82 00 0C */	bne lbl_8015BA18
/* 8015BA10  38 60 00 05 */	li r3, 5
/* 8015BA14  48 00 00 10 */	b lbl_8015BA24
lbl_8015BA18:
/* 8015BA18  7F E3 FB 78 */	mr r3, r31
/* 8015BA1C  4B FF F9 BD */	bl CreateInit__8daItem_cFv
lbl_8015BA20:
/* 8015BA20  7F A3 EB 78 */	mr r3, r29
lbl_8015BA24:
/* 8015BA24  39 61 00 20 */	addi r11, r1, 0x20
/* 8015BA28  48 20 67 FD */	bl _restgpr_28
/* 8015BA2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015BA30  7C 08 03 A6 */	mtlr r0
/* 8015BA34  38 21 00 20 */	addi r1, r1, 0x20
/* 8015BA38  4E 80 00 20 */	blr 
