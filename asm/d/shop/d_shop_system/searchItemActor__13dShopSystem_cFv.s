lbl_8019A5D0:
/* 8019A5D0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8019A5D4  7C 08 02 A6 */	mflr r0
/* 8019A5D8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8019A5DC  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8019A5E0  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8019A5E4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8019A5E8  48 1C 7B D5 */	bl _savegpr_21
/* 8019A5EC  7C 7E 1B 78 */	mr r30, r3
/* 8019A5F0  80 6D 8A DC */	lwz r3, dShopSystem_item_count(r13)
/* 8019A5F4  2C 03 FF FF */	cmpwi r3, -1
/* 8019A5F8  41 82 00 58 */	beq lbl_8019A650
/* 8019A5FC  88 8D 8A D8 */	lbz r4, data_80451058(r13)
/* 8019A600  7C 03 20 00 */	cmpw r3, r4
/* 8019A604  41 80 00 10 */	blt lbl_8019A614
/* 8019A608  80 0D 8A E4 */	lwz r0, dShopSystem_camera_count(r13)
/* 8019A60C  2C 00 00 02 */	cmpwi r0, 2
/* 8019A610  40 80 00 40 */	bge lbl_8019A650
lbl_8019A614:
/* 8019A614  7C 03 20 00 */	cmpw r3, r4
/* 8019A618  40 80 00 14 */	bge lbl_8019A62C
/* 8019A61C  3C 60 80 19 */	lis r3, dShopSystem_searchItemActor__FPvPv@ha /* 0x80197098@ha */
/* 8019A620  38 63 70 98 */	addi r3, r3, dShopSystem_searchItemActor__FPvPv@l /* 0x80197098@l */
/* 8019A624  7F C4 F3 78 */	mr r4, r30
/* 8019A628  4B E8 6D 11 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_8019A62C:
/* 8019A62C  80 0D 8A E4 */	lwz r0, dShopSystem_camera_count(r13)
/* 8019A630  2C 00 00 02 */	cmpwi r0, 2
/* 8019A634  40 80 00 14 */	bge lbl_8019A648
/* 8019A638  3C 60 80 19 */	lis r3, dShopSystem_searchCameraActor__FPvPv@ha /* 0x80197270@ha */
/* 8019A63C  38 63 72 70 */	addi r3, r3, dShopSystem_searchCameraActor__FPvPv@l /* 0x80197270@l */
/* 8019A640  7F C4 F3 78 */	mr r4, r30
/* 8019A644  4B E8 6C F5 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_8019A648:
/* 8019A648  38 60 00 00 */	li r3, 0
/* 8019A64C  48 00 04 94 */	b lbl_8019AAE0
lbl_8019A650:
/* 8019A650  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 8019A654  7C 03 00 00 */	cmpw r3, r0
/* 8019A658  41 80 04 84 */	blt lbl_8019AADC
/* 8019A65C  80 0D 8A E4 */	lwz r0, dShopSystem_camera_count(r13)
/* 8019A660  2C 00 00 02 */	cmpwi r0, 2
/* 8019A664  41 80 04 78 */	blt lbl_8019AADC
/* 8019A668  38 00 00 FF */	li r0, 0xff
/* 8019A66C  98 1E 0F 73 */	stb r0, 0xf73(r30)
/* 8019A670  88 0D 8A E0 */	lbz r0, data_80451060(r13)
/* 8019A674  28 00 00 00 */	cmplwi r0, 0
/* 8019A678  41 82 01 68 */	beq lbl_8019A7E0
/* 8019A67C  3A A0 00 00 */	li r21, 0
/* 8019A680  3B 60 00 00 */	li r27, 0
/* 8019A684  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha /* 0x803BB8A4@ha */
/* 8019A688  3A E3 B8 A4 */	addi r23, r3, dShopSystem_itemActor@l /* 0x803BB8A4@l */
/* 8019A68C  3A C1 00 2C */	addi r22, r1, 0x2c
/* 8019A690  3B 01 00 64 */	addi r24, r1, 0x64
/* 8019A694  C3 E2 A1 44 */	lfs f31, lit_5084(r2)
/* 8019A698  3B 21 00 48 */	addi r25, r1, 0x48
/* 8019A69C  7F 7A DB 78 */	mr r26, r27
/* 8019A6A0  3B ED 81 68 */	la r31, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 8019A6A4  3B A1 00 18 */	addi r29, r1, 0x18
/* 8019A6A8  3B 81 00 10 */	addi r28, r1, 0x10
/* 8019A6AC  48 00 00 40 */	b lbl_8019A6EC
lbl_8019A6B0:
/* 8019A6B0  7C 17 D8 2E */	lwzx r0, r23, r27
/* 8019A6B4  7C 16 D9 2E */	stwx r0, r22, r27
/* 8019A6B8  88 1F 00 00 */	lbz r0, 0(r31)
/* 8019A6BC  98 1D 00 00 */	stb r0, 0(r29)
/* 8019A6C0  7F C3 F3 78 */	mr r3, r30
/* 8019A6C4  7C 96 D8 2E */	lwzx r4, r22, r27
/* 8019A6C8  4B E8 01 19 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8019A6CC  7C 38 DD 2E */	stfsx f1, r24, r27
/* 8019A6D0  7F F9 DD 2E */	stfsx f31, r25, r27
/* 8019A6D4  9B 5C 00 00 */	stb r26, 0(r28)
/* 8019A6D8  3A B5 00 01 */	addi r21, r21, 1
/* 8019A6DC  3B 9C 00 01 */	addi r28, r28, 1
/* 8019A6E0  3B BD 00 01 */	addi r29, r29, 1
/* 8019A6E4  3B FF 00 01 */	addi r31, r31, 1
/* 8019A6E8  3B 7B 00 04 */	addi r27, r27, 4
lbl_8019A6EC:
/* 8019A6EC  89 2D 8A D8 */	lbz r9, data_80451058(r13)
/* 8019A6F0  7C 15 48 00 */	cmpw r21, r9
/* 8019A6F4  41 80 FF BC */	blt lbl_8019A6B0
/* 8019A6F8  39 40 00 00 */	li r10, 0
/* 8019A6FC  38 80 00 00 */	li r4, 0
/* 8019A700  38 E1 00 64 */	addi r7, r1, 0x64
/* 8019A704  38 C1 00 48 */	addi r6, r1, 0x48
/* 8019A708  38 61 00 10 */	addi r3, r1, 0x10
/* 8019A70C  48 00 00 7C */	b lbl_8019A788
lbl_8019A710:
/* 8019A710  7C 07 24 2E */	lfsx f0, r7, r4
/* 8019A714  7C 06 25 2E */	stfsx f0, r6, r4
/* 8019A718  99 43 00 00 */	stb r10, 0(r3)
/* 8019A71C  2C 0A 00 00 */	cmpwi r10, 0
/* 8019A720  40 81 00 5C */	ble lbl_8019A77C
/* 8019A724  7D 4B 53 78 */	mr r11, r10
/* 8019A728  55 45 10 3A */	slwi r5, r10, 2
/* 8019A72C  38 0A 00 01 */	addi r0, r10, 1
/* 8019A730  7C 09 03 A6 */	mtctr r0
/* 8019A734  41 80 00 48 */	blt lbl_8019A77C
lbl_8019A738:
/* 8019A738  39 01 00 48 */	addi r8, r1, 0x48
/* 8019A73C  7D 08 2A 14 */	add r8, r8, r5
/* 8019A740  C0 08 00 00 */	lfs f0, 0(r8)
/* 8019A744  C0 28 FF FC */	lfs f1, -4(r8)
/* 8019A748  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8019A74C  40 80 00 24 */	bge lbl_8019A770
/* 8019A750  D0 28 00 00 */	stfs f1, 0(r8)
/* 8019A754  D0 08 FF FC */	stfs f0, -4(r8)
/* 8019A758  39 01 00 10 */	addi r8, r1, 0x10
/* 8019A75C  7D 08 5A 14 */	add r8, r8, r11
/* 8019A760  89 88 00 00 */	lbz r12, 0(r8)
/* 8019A764  88 08 FF FF */	lbz r0, -1(r8)
/* 8019A768  98 08 00 00 */	stb r0, 0(r8)
/* 8019A76C  99 88 FF FF */	stb r12, -1(r8)
lbl_8019A770:
/* 8019A770  39 6B FF FF */	addi r11, r11, -1
/* 8019A774  38 A5 FF FC */	addi r5, r5, -4
/* 8019A778  42 00 FF C0 */	bdnz lbl_8019A738
lbl_8019A77C:
/* 8019A77C  39 4A 00 01 */	addi r10, r10, 1
/* 8019A780  38 63 00 01 */	addi r3, r3, 1
/* 8019A784  38 84 00 04 */	addi r4, r4, 4
lbl_8019A788:
/* 8019A788  7C 0A 48 00 */	cmpw r10, r9
/* 8019A78C  41 80 FF 84 */	blt lbl_8019A710
/* 8019A790  38 80 00 00 */	li r4, 0
/* 8019A794  39 01 00 2C */	addi r8, r1, 0x2c
/* 8019A798  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha /* 0x803BB8A4@ha */
/* 8019A79C  38 E3 B8 A4 */	addi r7, r3, dShopSystem_itemActor@l /* 0x803BB8A4@l */
/* 8019A7A0  38 C1 00 18 */	addi r6, r1, 0x18
/* 8019A7A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8019A7A8  38 6D 81 68 */	la r3, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 8019A7AC  7D 29 03 A6 */	mtctr r9
/* 8019A7B0  2C 09 00 00 */	cmpwi r9, 0
/* 8019A7B4  40 81 00 2C */	ble lbl_8019A7E0
lbl_8019A7B8:
/* 8019A7B8  89 25 00 00 */	lbz r9, 0(r5)
/* 8019A7BC  55 20 10 3A */	slwi r0, r9, 2
/* 8019A7C0  7C 08 00 2E */	lwzx r0, r8, r0
/* 8019A7C4  7C 07 21 2E */	stwx r0, r7, r4
/* 8019A7C8  7C 06 48 AE */	lbzx r0, r6, r9
/* 8019A7CC  98 03 00 00 */	stb r0, 0(r3)
/* 8019A7D0  38 63 00 01 */	addi r3, r3, 1
/* 8019A7D4  38 84 00 04 */	addi r4, r4, 4
/* 8019A7D8  38 A5 00 01 */	addi r5, r5, 1
/* 8019A7DC  42 00 FF DC */	bdnz lbl_8019A7B8
lbl_8019A7E0:
/* 8019A7E0  3B E0 00 00 */	li r31, 0
/* 8019A7E4  3B A0 00 00 */	li r29, 0
/* 8019A7E8  3B 80 00 00 */	li r28, 0
/* 8019A7EC  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha /* 0x803BB8A4@ha */
/* 8019A7F0  3B 63 B8 A4 */	addi r27, r3, dShopSystem_itemActor@l /* 0x803BB8A4@l */
/* 8019A7F4  48 00 00 A8 */	b lbl_8019A89C
lbl_8019A7F8:
/* 8019A7F8  7C 7B E0 2E */	lwzx r3, r27, r28
/* 8019A7FC  80 83 05 6C */	lwz r4, 0x56c(r3)
/* 8019A800  38 1C 0E 4C */	addi r0, r28, 0xe4c
/* 8019A804  7C 9E 01 2E */	stwx r4, r30, r0
/* 8019A808  7C 7B E0 2E */	lwzx r3, r27, r28
/* 8019A80C  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 8019A810  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8019A814  28 00 FF FF */	cmplwi r0, 0xffff
/* 8019A818  38 60 FF FF */	li r3, -1
/* 8019A81C  41 82 00 08 */	beq lbl_8019A824
/* 8019A820  7C 03 03 78 */	mr r3, r0
lbl_8019A824:
/* 8019A824  38 1D 0E 68 */	addi r0, r29, 0xe68
/* 8019A828  7C 7E 03 2E */	sthx r3, r30, r0
/* 8019A82C  3C 04 00 01 */	addis r0, r4, 1
/* 8019A830  28 00 FF FF */	cmplwi r0, 0xffff
/* 8019A834  40 82 00 20 */	bne lbl_8019A854
/* 8019A838  7F C3 F3 78 */	mr r3, r30
/* 8019A83C  7F E4 FB 78 */	mr r4, r31
/* 8019A840  4B FF CD 81 */	bl onFlag__13dShopSystem_cFi
/* 8019A844  7F C3 F3 78 */	mr r3, r30
/* 8019A848  7F E4 FB 78 */	mr r4, r31
/* 8019A84C  4B FF CD CD */	bl onSoldOutItemFlag__13dShopSystem_cFi
/* 8019A850  48 00 00 40 */	b lbl_8019A890
lbl_8019A854:
/* 8019A854  7F C3 F3 78 */	mr r3, r30
/* 8019A858  7F E4 FB 78 */	mr r4, r31
/* 8019A85C  4B FF CD 81 */	bl offFlag__13dShopSystem_cFi
/* 8019A860  7C 7B E0 2E */	lwzx r3, r27, r28
/* 8019A864  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8019A868  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8019A86C  28 00 00 FF */	cmplwi r0, 0xff
/* 8019A870  40 82 00 14 */	bne lbl_8019A884
/* 8019A874  7F C3 F3 78 */	mr r3, r30
/* 8019A878  7F E4 FB 78 */	mr r4, r31
/* 8019A87C  4B FF CD 9D */	bl onSoldOutItemFlag__13dShopSystem_cFi
/* 8019A880  48 00 00 10 */	b lbl_8019A890
lbl_8019A884:
/* 8019A884  7F C3 F3 78 */	mr r3, r30
/* 8019A888  7F E4 FB 78 */	mr r4, r31
/* 8019A88C  4B FF CD A9 */	bl offSoldOutItemFlag__13dShopSystem_cFi
lbl_8019A890:
/* 8019A890  3B FF 00 01 */	addi r31, r31, 1
/* 8019A894  3B BD 00 02 */	addi r29, r29, 2
/* 8019A898  3B 9C 00 04 */	addi r28, r28, 4
lbl_8019A89C:
/* 8019A89C  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 8019A8A0  7C 1F 00 00 */	cmpw r31, r0
/* 8019A8A4  41 80 FF 54 */	blt lbl_8019A7F8
/* 8019A8A8  88 1E 0F 77 */	lbz r0, 0xf77(r30)
/* 8019A8AC  28 00 00 08 */	cmplwi r0, 8
/* 8019A8B0  40 82 00 40 */	bne lbl_8019A8F0
/* 8019A8B4  80 6D 81 70 */	lwz r3, dShopSystem_cameraActor(r13)
/* 8019A8B8  C0 02 A1 60 */	lfs f0, lit_5687(r2)
/* 8019A8BC  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8019A8C0  C0 02 A1 64 */	lfs f0, lit_5688(r2)
/* 8019A8C4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8019A8C8  C0 02 A1 68 */	lfs f0, lit_5689(r2)
/* 8019A8CC  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 8019A8D0  38 6D 81 70 */	la r3, dShopSystem_cameraActor(r13) /* 804506F0-_SDA_BASE_ */
/* 8019A8D4  80 63 00 04 */	lwz r3, 4(r3)
/* 8019A8D8  C0 02 A1 3C */	lfs f0, lit_5006(r2)
/* 8019A8DC  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8019A8E0  C0 02 A1 6C */	lfs f0, lit_5690(r2)
/* 8019A8E4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8019A8E8  C0 02 A1 70 */	lfs f0, lit_5691(r2)
/* 8019A8EC  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_8019A8F0:
/* 8019A8F0  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 8019A8F4  28 00 00 03 */	cmplwi r0, 3
/* 8019A8F8  40 81 01 18 */	ble lbl_8019AA10
/* 8019A8FC  80 6D 81 70 */	lwz r3, dShopSystem_cameraActor(r13)
/* 8019A900  38 03 04 D0 */	addi r0, r3, 0x4d0
/* 8019A904  90 01 00 08 */	stw r0, 8(r1)
/* 8019A908  38 6D 81 70 */	la r3, dShopSystem_cameraActor(r13) /* 804506F0-_SDA_BASE_ */
/* 8019A90C  80 63 00 04 */	lwz r3, 4(r3)
/* 8019A910  38 03 04 D0 */	addi r0, r3, 0x4d0
/* 8019A914  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019A918  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 8019A91C  7F C4 F3 78 */	mr r4, r30
/* 8019A920  3C A0 80 3C */	lis r5, dShopSystem_itemActor@ha /* 0x803BB8A4@ha */
/* 8019A924  39 45 B8 A4 */	addi r10, r5, dShopSystem_itemActor@l /* 0x803BB8A4@l */
/* 8019A928  80 AA 00 00 */	lwz r5, 0(r10)
/* 8019A92C  80 CA 00 04 */	lwz r6, 4(r10)
/* 8019A930  80 EA 00 08 */	lwz r7, 8(r10)
/* 8019A934  81 0A 00 0C */	lwz r8, 0xc(r10)
/* 8019A938  81 2A 00 10 */	lwz r9, 0x10(r10)
/* 8019A93C  81 4A 00 14 */	lwz r10, 0x14(r10)
/* 8019A940  4B FF BC C9 */	bl setCamDataIdx2__16ShopCam_action_cFP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP4cXyzP4cXyz
/* 8019A944  88 1E 0F 77 */	lbz r0, 0xf77(r30)
/* 8019A948  28 00 00 08 */	cmplwi r0, 8
/* 8019A94C  40 82 00 28 */	bne lbl_8019A974
/* 8019A950  C0 02 A1 74 */	lfs f0, lit_5692(r2)
/* 8019A954  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8019A958  C0 02 A1 78 */	lfs f0, lit_5693(r2)
/* 8019A95C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8019A960  C0 02 A1 7C */	lfs f0, lit_5694(r2)
/* 8019A964  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8019A968  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 8019A96C  38 81 00 20 */	addi r4, r1, 0x20
/* 8019A970  4B FF BF 49 */	bl setMasterCamCtrPos__16ShopCam_action_cFP4cXyz
lbl_8019A974:
/* 8019A974  3A A0 00 00 */	li r21, 0
/* 8019A978  3B E0 00 00 */	li r31, 0
/* 8019A97C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8019A980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8019A984  3A E3 09 58 */	addi r23, r3, 0x958
/* 8019A988  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha /* 0x803BB8A4@ha */
/* 8019A98C  3B 83 B8 A4 */	addi r28, r3, dShopSystem_itemActor@l /* 0x803BB8A4@l */
lbl_8019A990:
/* 8019A990  7C 7C F8 2E */	lwzx r3, r28, r31
/* 8019A994  28 03 00 00 */	cmplwi r3, 0
/* 8019A998  41 82 00 5C */	beq lbl_8019A9F4
/* 8019A99C  A8 03 04 B8 */	lha r0, 0x4b8(r3)
/* 8019A9A0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8019A9A4  54 1B C6 3E */	rlwinm r27, r0, 0x18, 0x18, 0x1f
/* 8019A9A8  28 04 00 FF */	cmplwi r4, 0xff
/* 8019A9AC  41 82 00 48 */	beq lbl_8019A9F4
/* 8019A9B0  7E E3 BB 78 */	mr r3, r23
/* 8019A9B4  4B E9 9E AD */	bl isSwitch__12dSv_memBit_cCFi
/* 8019A9B8  2C 03 00 00 */	cmpwi r3, 0
/* 8019A9BC  40 82 00 38 */	bne lbl_8019A9F4
/* 8019A9C0  28 1B 00 FF */	cmplwi r27, 0xff
/* 8019A9C4  41 82 00 30 */	beq lbl_8019A9F4
/* 8019A9C8  7E E3 BB 78 */	mr r3, r23
/* 8019A9CC  7F 64 DB 78 */	mr r4, r27
/* 8019A9D0  4B E9 9E 91 */	bl isSwitch__12dSv_memBit_cCFi
/* 8019A9D4  2C 03 00 00 */	cmpwi r3, 0
/* 8019A9D8  40 82 00 1C */	bne lbl_8019A9F4
/* 8019A9DC  7F C3 F3 78 */	mr r3, r30
/* 8019A9E0  7E A4 AB 78 */	mr r4, r21
/* 8019A9E4  4B FF CB DD */	bl onFlag__13dShopSystem_cFi
/* 8019A9E8  7F C3 F3 78 */	mr r3, r30
/* 8019A9EC  7E A4 AB 78 */	mr r4, r21
/* 8019A9F0  4B FF CC 29 */	bl onSoldOutItemFlag__13dShopSystem_cFi
lbl_8019A9F4:
/* 8019A9F4  3A B5 00 01 */	addi r21, r21, 1
/* 8019A9F8  2C 15 00 07 */	cmpwi r21, 7
/* 8019A9FC  3B FF 00 04 */	addi r31, r31, 4
/* 8019AA00  41 80 FF 90 */	blt lbl_8019A990
/* 8019AA04  38 00 FF FF */	li r0, -1
/* 8019AA08  90 0D 8A DC */	stw r0, dShopSystem_item_count(r13)
/* 8019AA0C  48 00 00 D0 */	b lbl_8019AADC
lbl_8019AA10:
/* 8019AA10  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 8019AA14  7F C4 F3 78 */	mr r4, r30
/* 8019AA18  3C A0 80 3C */	lis r5, dShopSystem_itemActor@ha /* 0x803BB8A4@ha */
/* 8019AA1C  38 E5 B8 A4 */	addi r7, r5, dShopSystem_itemActor@l /* 0x803BB8A4@l */
/* 8019AA20  80 A7 00 00 */	lwz r5, 0(r7)
/* 8019AA24  80 C7 00 04 */	lwz r6, 4(r7)
/* 8019AA28  80 E7 00 08 */	lwz r7, 8(r7)
/* 8019AA2C  81 0D 81 70 */	lwz r8, dShopSystem_cameraActor(r13)
/* 8019AA30  39 08 04 D0 */	addi r8, r8, 0x4d0
/* 8019AA34  39 2D 81 70 */	la r9, dShopSystem_cameraActor(r13) /* 804506F0-_SDA_BASE_ */
/* 8019AA38  81 29 00 04 */	lwz r9, 4(r9)
/* 8019AA3C  39 29 04 D0 */	addi r9, r9, 0x4d0
/* 8019AA40  4B FF BB 05 */	bl setCamDataIdx__16ShopCam_action_cFP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_cP4cXyzP4cXyz
/* 8019AA44  3A A0 00 00 */	li r21, 0
/* 8019AA48  3B E0 00 00 */	li r31, 0
/* 8019AA4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8019AA50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8019AA54  3A E3 09 58 */	addi r23, r3, 0x958
/* 8019AA58  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha /* 0x803BB8A4@ha */
/* 8019AA5C  3B 83 B8 A4 */	addi r28, r3, dShopSystem_itemActor@l /* 0x803BB8A4@l */
lbl_8019AA60:
/* 8019AA60  7C 7C F8 2E */	lwzx r3, r28, r31
/* 8019AA64  28 03 00 00 */	cmplwi r3, 0
/* 8019AA68  41 82 00 5C */	beq lbl_8019AAC4
/* 8019AA6C  A8 03 04 B8 */	lha r0, 0x4b8(r3)
/* 8019AA70  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8019AA74  54 1B C6 3E */	rlwinm r27, r0, 0x18, 0x18, 0x1f
/* 8019AA78  28 04 00 FF */	cmplwi r4, 0xff
/* 8019AA7C  41 82 00 48 */	beq lbl_8019AAC4
/* 8019AA80  7E E3 BB 78 */	mr r3, r23
/* 8019AA84  4B E9 9D DD */	bl isSwitch__12dSv_memBit_cCFi
/* 8019AA88  2C 03 00 00 */	cmpwi r3, 0
/* 8019AA8C  40 82 00 38 */	bne lbl_8019AAC4
/* 8019AA90  28 1B 00 FF */	cmplwi r27, 0xff
/* 8019AA94  41 82 00 30 */	beq lbl_8019AAC4
/* 8019AA98  7E E3 BB 78 */	mr r3, r23
/* 8019AA9C  7F 64 DB 78 */	mr r4, r27
/* 8019AAA0  4B E9 9D C1 */	bl isSwitch__12dSv_memBit_cCFi
/* 8019AAA4  2C 03 00 00 */	cmpwi r3, 0
/* 8019AAA8  40 82 00 1C */	bne lbl_8019AAC4
/* 8019AAAC  7F C3 F3 78 */	mr r3, r30
/* 8019AAB0  7E A4 AB 78 */	mr r4, r21
/* 8019AAB4  4B FF CB 0D */	bl onFlag__13dShopSystem_cFi
/* 8019AAB8  7F C3 F3 78 */	mr r3, r30
/* 8019AABC  7E A4 AB 78 */	mr r4, r21
/* 8019AAC0  4B FF CB 59 */	bl onSoldOutItemFlag__13dShopSystem_cFi
lbl_8019AAC4:
/* 8019AAC4  3A B5 00 01 */	addi r21, r21, 1
/* 8019AAC8  2C 15 00 07 */	cmpwi r21, 7
/* 8019AACC  3B FF 00 04 */	addi r31, r31, 4
/* 8019AAD0  41 80 FF 90 */	blt lbl_8019AA60
/* 8019AAD4  38 00 FF FF */	li r0, -1
/* 8019AAD8  90 0D 8A DC */	stw r0, dShopSystem_item_count(r13)
lbl_8019AADC:
/* 8019AADC  38 60 00 01 */	li r3, 1
lbl_8019AAE0:
/* 8019AAE0  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8019AAE4  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8019AAE8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8019AAEC  48 1C 77 1D */	bl _restgpr_21
/* 8019AAF0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8019AAF4  7C 08 03 A6 */	mtlr r0
/* 8019AAF8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8019AAFC  4E 80 00 20 */	blr 
