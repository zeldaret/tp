lbl_80BA6500:
/* 80BA6500  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BA6504  7C 08 02 A6 */	mflr r0
/* 80BA6508  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BA650C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA6510  4B 7B BC BC */	b _savegpr_25
/* 80BA6514  7C 7D 1B 78 */	mr r29, r3
/* 80BA6518  3C 60 80 BA */	lis r3, m__22daObj_AutoMata_Param_c@ha
/* 80BA651C  3B E3 6C 10 */	addi r31, r3, m__22daObj_AutoMata_Param_c@l
/* 80BA6520  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 80BA6524  80 63 00 04 */	lwz r3, 4(r3)
/* 80BA6528  83 C3 00 04 */	lwz r30, 4(r3)
/* 80BA652C  3C 60 80 BA */	lis r3, l_bmdData@ha
/* 80BA6530  38 63 6C D0 */	addi r3, r3, l_bmdData@l
/* 80BA6534  88 1D 0B 30 */	lbz r0, 0xb30(r29)
/* 80BA6538  54 00 18 38 */	slwi r0, r0, 3
/* 80BA653C  7C 63 02 14 */	add r3, r3, r0
/* 80BA6540  80 03 00 04 */	lwz r0, 4(r3)
/* 80BA6544  54 00 10 3A */	slwi r0, r0, 2
/* 80BA6548  3C 60 80 BA */	lis r3, l_resNameList@ha
/* 80BA654C  38 63 6C D8 */	addi r3, r3, l_resNameList@l
/* 80BA6550  7F 23 00 2E */	lwzx r25, r3, r0
/* 80BA6554  2C 04 00 00 */	cmpwi r4, 0
/* 80BA6558  41 80 00 C0 */	blt lbl_80BA6618
/* 80BA655C  2C 04 00 02 */	cmpwi r4, 2
/* 80BA6560  40 80 00 B8 */	bge lbl_80BA6618
/* 80BA6564  7F 23 CB 78 */	mr r3, r25
/* 80BA6568  54 9C 10 3A */	slwi r28, r4, 2
/* 80BA656C  38 9F 00 68 */	addi r4, r31, 0x68
/* 80BA6570  7C 84 E0 2E */	lwzx r4, r4, r28
/* 80BA6574  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA6578  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA657C  3F 65 00 02 */	addis r27, r5, 2
/* 80BA6580  3B 7B C2 F8 */	addi r27, r27, -15624
/* 80BA6584  7F 65 DB 78 */	mr r5, r27
/* 80BA6588  38 C0 00 80 */	li r6, 0x80
/* 80BA658C  4B 49 5D 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA6590  7C 64 1B 79 */	or. r4, r3, r3
/* 80BA6594  40 82 00 0C */	bne lbl_80BA65A0
/* 80BA6598  38 60 00 00 */	li r3, 0
/* 80BA659C  48 00 00 80 */	b lbl_80BA661C
lbl_80BA65A0:
/* 80BA65A0  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 80BA65A4  3B 5F 00 78 */	addi r26, r31, 0x78
/* 80BA65A8  7C BA E0 2E */	lwzx r5, r26, r28
/* 80BA65AC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BA65B0  FC 40 08 90 */	fmr f2, f1
/* 80BA65B4  FC 60 08 90 */	fmr f3, f1
/* 80BA65B8  C0 9F 00 80 */	lfs f4, 0x80(r31)
/* 80BA65BC  4B 46 A8 B4 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BA65C0  7F 23 CB 78 */	mr r3, r25
/* 80BA65C4  38 9F 00 70 */	addi r4, r31, 0x70
/* 80BA65C8  7C 84 E0 2E */	lwzx r4, r4, r28
/* 80BA65CC  7F 65 DB 78 */	mr r5, r27
/* 80BA65D0  38 C0 00 80 */	li r6, 0x80
/* 80BA65D4  4B 49 5D 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA65D8  7C 65 1B 79 */	or. r5, r3, r3
/* 80BA65DC  40 82 00 0C */	bne lbl_80BA65E8
/* 80BA65E0  38 60 00 00 */	li r3, 0
/* 80BA65E4  48 00 00 38 */	b lbl_80BA661C
lbl_80BA65E8:
/* 80BA65E8  38 7D 06 00 */	addi r3, r29, 0x600
/* 80BA65EC  38 9E 00 58 */	addi r4, r30, 0x58
/* 80BA65F0  38 C0 00 01 */	li r6, 1
/* 80BA65F4  7C FA E0 2E */	lwzx r7, r26, r28
/* 80BA65F8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BA65FC  39 00 00 00 */	li r8, 0
/* 80BA6600  39 20 FF FF */	li r9, -1
/* 80BA6604  4B 46 70 38 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BA6608  20 03 00 01 */	subfic r0, r3, 1
/* 80BA660C  7C 00 00 34 */	cntlzw r0, r0
/* 80BA6610  54 03 D9 7E */	srwi r3, r0, 5
/* 80BA6614  48 00 00 08 */	b lbl_80BA661C
lbl_80BA6618:
/* 80BA6618  38 60 00 00 */	li r3, 0
lbl_80BA661C:
/* 80BA661C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA6620  4B 7B BB F8 */	b _restgpr_25
/* 80BA6624  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BA6628  7C 08 03 A6 */	mtlr r0
/* 80BA662C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BA6630  4E 80 00 20 */	blr 
