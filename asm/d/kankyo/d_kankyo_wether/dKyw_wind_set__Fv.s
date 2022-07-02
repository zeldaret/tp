lbl_8005A5C0:
/* 8005A5C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8005A5C4  7C 08 02 A6 */	mflr r0
/* 8005A5C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8005A5CC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8005A5D0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8005A5D4  39 61 00 50 */	addi r11, r1, 0x50
/* 8005A5D8  48 30 7B F5 */	bl _savegpr_25
/* 8005A5DC  3B 80 00 00 */	li r28, 0
/* 8005A5E0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A5E4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A5E8  80 83 0E 54 */	lwz r4, 0xe54(r3)
/* 8005A5EC  28 04 00 00 */	cmplwi r4, 0
/* 8005A5F0  41 82 01 34 */	beq lbl_8005A724
/* 8005A5F4  C0 24 00 00 */	lfs f1, 0(r4)
/* 8005A5F8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8005A5FC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8005A600  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8005A604  C0 44 00 08 */	lfs f2, 8(r4)
/* 8005A608  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8005A60C  C3 E3 0E 5C */	lfs f31, 0xe5c(r3)
/* 8005A610  48 20 D0 65 */	bl cM_atan2s__Fff
/* 8005A614  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8005A618  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8005A61C  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 8005A620  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8005A624  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8005A628  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8005A62C  38 61 00 0C */	addi r3, r1, 0xc
/* 8005A630  48 2E CB 09 */	bl PSVECSquareMag
/* 8005A634  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 8005A638  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005A63C  40 81 00 58 */	ble lbl_8005A694
/* 8005A640  FC 00 08 34 */	frsqrte f0, f1
/* 8005A644  C8 82 87 78 */	lfd f4, lit_5524(r2)
/* 8005A648  FC 44 00 32 */	fmul f2, f4, f0
/* 8005A64C  C8 62 87 80 */	lfd f3, lit_5525(r2)
/* 8005A650  FC 00 00 32 */	fmul f0, f0, f0
/* 8005A654  FC 01 00 32 */	fmul f0, f1, f0
/* 8005A658  FC 03 00 28 */	fsub f0, f3, f0
/* 8005A65C  FC 02 00 32 */	fmul f0, f2, f0
/* 8005A660  FC 44 00 32 */	fmul f2, f4, f0
/* 8005A664  FC 00 00 32 */	fmul f0, f0, f0
/* 8005A668  FC 01 00 32 */	fmul f0, f1, f0
/* 8005A66C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005A670  FC 02 00 32 */	fmul f0, f2, f0
/* 8005A674  FC 44 00 32 */	fmul f2, f4, f0
/* 8005A678  FC 00 00 32 */	fmul f0, f0, f0
/* 8005A67C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005A680  FC 03 00 28 */	fsub f0, f3, f0
/* 8005A684  FC 02 00 32 */	fmul f0, f2, f0
/* 8005A688  FC 21 00 32 */	fmul f1, f1, f0
/* 8005A68C  FC 20 08 18 */	frsp f1, f1
/* 8005A690  48 00 00 88 */	b lbl_8005A718
lbl_8005A694:
/* 8005A694  C8 02 87 88 */	lfd f0, lit_5526(r2)
/* 8005A698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005A69C  40 80 00 10 */	bge lbl_8005A6AC
/* 8005A6A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005A6A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005A6A8  48 00 00 70 */	b lbl_8005A718
lbl_8005A6AC:
/* 8005A6AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8005A6B0  80 81 00 08 */	lwz r4, 8(r1)
/* 8005A6B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005A6B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005A6BC  7C 03 00 00 */	cmpw r3, r0
/* 8005A6C0  41 82 00 14 */	beq lbl_8005A6D4
/* 8005A6C4  40 80 00 40 */	bge lbl_8005A704
/* 8005A6C8  2C 03 00 00 */	cmpwi r3, 0
/* 8005A6CC  41 82 00 20 */	beq lbl_8005A6EC
/* 8005A6D0  48 00 00 34 */	b lbl_8005A704
lbl_8005A6D4:
/* 8005A6D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005A6D8  41 82 00 0C */	beq lbl_8005A6E4
/* 8005A6DC  38 00 00 01 */	li r0, 1
/* 8005A6E0  48 00 00 28 */	b lbl_8005A708
lbl_8005A6E4:
/* 8005A6E4  38 00 00 02 */	li r0, 2
/* 8005A6E8  48 00 00 20 */	b lbl_8005A708
lbl_8005A6EC:
/* 8005A6EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005A6F0  41 82 00 0C */	beq lbl_8005A6FC
/* 8005A6F4  38 00 00 05 */	li r0, 5
/* 8005A6F8  48 00 00 10 */	b lbl_8005A708
lbl_8005A6FC:
/* 8005A6FC  38 00 00 03 */	li r0, 3
/* 8005A700  48 00 00 08 */	b lbl_8005A708
lbl_8005A704:
/* 8005A704  38 00 00 04 */	li r0, 4
lbl_8005A708:
/* 8005A708  2C 00 00 01 */	cmpwi r0, 1
/* 8005A70C  40 82 00 0C */	bne lbl_8005A718
/* 8005A710  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005A714  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005A718:
/* 8005A718  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8005A71C  48 20 CF 59 */	bl cM_atan2s__Fff
/* 8005A720  48 00 02 24 */	b lbl_8005A944
lbl_8005A724:
/* 8005A724  3B 60 00 00 */	li r27, 0
/* 8005A728  3B 40 00 00 */	li r26, 0
/* 8005A72C  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005A730  7C 84 07 75 */	extsb. r4, r4
/* 8005A734  41 80 00 28 */	blt lbl_8005A75C
/* 8005A738  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005A73C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005A740  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 8005A744  4B FC 9C 41 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8005A748  81 83 00 00 */	lwz r12, 0(r3)
/* 8005A74C  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8005A750  7D 89 03 A6 */	mtctr r12
/* 8005A754  4E 80 04 21 */	bctrl 
/* 8005A758  7C 7B 1B 78 */	mr r27, r3
lbl_8005A75C:
/* 8005A75C  3B C0 00 00 */	li r30, 0
/* 8005A760  3B A0 00 00 */	li r29, 0
/* 8005A764  28 1B 00 00 */	cmplwi r27, 0
/* 8005A768  41 82 00 0C */	beq lbl_8005A774
/* 8005A76C  80 1B 00 00 */	lwz r0, 0(r27)
/* 8005A770  54 1C 8F 7E */	rlwinm r28, r0, 0x11, 0x1d, 0x1f
lbl_8005A774:
/* 8005A774  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005A778  7C 84 07 74 */	extsb r4, r4
/* 8005A77C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005A780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005A784  3B E3 4E C4 */	addi r31, r3, 0x4ec4
/* 8005A788  7F E3 FB 78 */	mr r3, r31
/* 8005A78C  4B FC 9B F9 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8005A790  28 03 00 00 */	cmplwi r3, 0
/* 8005A794  41 82 00 58 */	beq lbl_8005A7EC
/* 8005A798  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005A79C  7C 84 07 74 */	extsb r4, r4
/* 8005A7A0  7F E3 FB 78 */	mr r3, r31
/* 8005A7A4  4B FC 9B E1 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8005A7A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8005A7AC  81 8C 01 40 */	lwz r12, 0x140(r12)
/* 8005A7B0  7D 89 03 A6 */	mtctr r12
/* 8005A7B4  4E 80 04 21 */	bctrl 
/* 8005A7B8  28 03 00 00 */	cmplwi r3, 0
/* 8005A7BC  41 82 00 30 */	beq lbl_8005A7EC
/* 8005A7C0  83 23 00 04 */	lwz r25, 4(r3)
/* 8005A7C4  38 60 00 00 */	li r3, 0
/* 8005A7C8  4B FD 21 B5 */	bl getLayerNo__14dComIfG_play_cFi
/* 8005A7CC  1C 03 00 03 */	mulli r0, r3, 3
/* 8005A7D0  7C 79 02 14 */	add r3, r25, r0
/* 8005A7D4  88 03 00 02 */	lbz r0, 2(r3)
/* 8005A7D8  54 00 EF 7E */	rlwinm r0, r0, 0x1d, 0x1d, 0x1f
/* 8005A7DC  2C 00 00 07 */	cmpwi r0, 7
/* 8005A7E0  41 82 00 0C */	beq lbl_8005A7EC
/* 8005A7E4  88 19 00 02 */	lbz r0, 2(r25)
/* 8005A7E8  54 1C EF 7E */	rlwinm r28, r0, 0x1d, 0x1d, 0x1f
lbl_8005A7EC:
/* 8005A7EC  2C 1C 00 03 */	cmpwi r28, 3
/* 8005A7F0  41 82 00 30 */	beq lbl_8005A820
/* 8005A7F4  40 80 00 10 */	bge lbl_8005A804
/* 8005A7F8  2C 1C 00 02 */	cmpwi r28, 2
/* 8005A7FC  40 80 00 18 */	bge lbl_8005A814
/* 8005A800  48 00 00 40 */	b lbl_8005A840
lbl_8005A804:
/* 8005A804  2C 1C 00 05 */	cmpwi r28, 5
/* 8005A808  41 82 00 30 */	beq lbl_8005A838
/* 8005A80C  40 80 00 34 */	bge lbl_8005A840
/* 8005A810  48 00 00 1C */	b lbl_8005A82C
lbl_8005A814:
/* 8005A814  3B C0 00 00 */	li r30, 0
/* 8005A818  3B A0 C0 00 */	li r29, -16384
/* 8005A81C  48 00 00 24 */	b lbl_8005A840
lbl_8005A820:
/* 8005A820  3B C0 00 00 */	li r30, 0
/* 8005A824  3B A0 00 00 */	li r29, 0
/* 8005A828  48 00 00 18 */	b lbl_8005A840
lbl_8005A82C:
/* 8005A82C  3B C0 00 00 */	li r30, 0
/* 8005A830  3B A0 40 00 */	li r29, 0x4000
/* 8005A834  48 00 00 0C */	b lbl_8005A840
lbl_8005A838:
/* 8005A838  3B C0 00 00 */	li r30, 0
/* 8005A83C  3B A0 7F FF */	li r29, 0x7fff
lbl_8005A840:
/* 8005A840  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A844  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A848  88 03 0E 6D */	lbz r0, 0xe6d(r3)
/* 8005A84C  28 00 00 00 */	cmplwi r0, 0
/* 8005A850  41 82 00 14 */	beq lbl_8005A864
/* 8005A854  28 00 00 FF */	cmplwi r0, 0xff
/* 8005A858  41 82 00 0C */	beq lbl_8005A864
/* 8005A85C  AB C3 0E 68 */	lha r30, 0xe68(r3)
/* 8005A860  AB A3 0E 6A */	lha r29, 0xe6a(r3)
lbl_8005A864:
/* 8005A864  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8005A868  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8005A86C  38 A3 00 04 */	addi r5, r3, 4
/* 8005A870  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 8005A874  7C 25 04 2E */	lfsx f1, r5, r0
/* 8005A878  57 A4 04 38 */	rlwinm r4, r29, 0, 0x10, 0x1c
/* 8005A87C  7C 03 24 2E */	lfsx f0, r3, r4
/* 8005A880  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005A884  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8005A888  7C 03 04 2E */	lfsx f0, r3, r0
/* 8005A88C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8005A890  7C 05 24 2E */	lfsx f0, r5, r4
/* 8005A894  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005A898  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8005A89C  28 1B 00 00 */	cmplwi r27, 0
/* 8005A8A0  41 82 00 0C */	beq lbl_8005A8AC
/* 8005A8A4  80 1B 00 00 */	lwz r0, 0(r27)
/* 8005A8A8  54 1A 77 BE */	rlwinm r26, r0, 0xe, 0x1e, 0x1f
lbl_8005A8AC:
/* 8005A8AC  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005A8B0  7C 84 07 74 */	extsb r4, r4
/* 8005A8B4  7F E3 FB 78 */	mr r3, r31
/* 8005A8B8  4B FC 9A CD */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8005A8BC  28 03 00 00 */	cmplwi r3, 0
/* 8005A8C0  41 82 00 44 */	beq lbl_8005A904
/* 8005A8C4  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005A8C8  7C 84 07 74 */	extsb r4, r4
/* 8005A8CC  7F E3 FB 78 */	mr r3, r31
/* 8005A8D0  4B FC 9A B5 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8005A8D4  81 83 00 00 */	lwz r12, 0(r3)
/* 8005A8D8  81 8C 01 40 */	lwz r12, 0x140(r12)
/* 8005A8DC  7D 89 03 A6 */	mtctr r12
/* 8005A8E0  4E 80 04 21 */	bctrl 
/* 8005A8E4  28 03 00 00 */	cmplwi r3, 0
/* 8005A8E8  41 82 00 1C */	beq lbl_8005A904
/* 8005A8EC  80 63 00 04 */	lwz r3, 4(r3)
/* 8005A8F0  88 03 00 02 */	lbz r0, 2(r3)
/* 8005A8F4  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 8005A8F8  2C 00 00 03 */	cmpwi r0, 3
/* 8005A8FC  41 82 00 08 */	beq lbl_8005A904
/* 8005A900  7C 1A 03 78 */	mr r26, r0
lbl_8005A904:
/* 8005A904  2C 1A 00 01 */	cmpwi r26, 1
/* 8005A908  41 82 00 28 */	beq lbl_8005A930
/* 8005A90C  40 80 00 10 */	bge lbl_8005A91C
/* 8005A910  2C 1A 00 00 */	cmpwi r26, 0
/* 8005A914  40 80 00 14 */	bge lbl_8005A928
/* 8005A918  48 00 00 28 */	b lbl_8005A940
lbl_8005A91C:
/* 8005A91C  2C 1A 00 03 */	cmpwi r26, 3
/* 8005A920  40 80 00 20 */	bge lbl_8005A940
/* 8005A924  48 00 00 14 */	b lbl_8005A938
lbl_8005A928:
/* 8005A928  C3 E2 87 58 */	lfs f31, lit_5191(r2)
/* 8005A92C  48 00 00 18 */	b lbl_8005A944
lbl_8005A930:
/* 8005A930  C3 E2 87 90 */	lfs f31, lit_5527(r2)
/* 8005A934  48 00 00 10 */	b lbl_8005A944
lbl_8005A938:
/* 8005A938  C3 E2 87 94 */	lfs f31, lit_5528(r2)
/* 8005A93C  48 00 00 08 */	b lbl_8005A944
lbl_8005A940:
/* 8005A940  C3 E2 86 E0 */	lfs f31, lit_4378(r2)
lbl_8005A944:
/* 8005A944  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A948  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A94C  88 03 0E 6D */	lbz r0, 0xe6d(r3)
/* 8005A950  28 00 00 00 */	cmplwi r0, 0
/* 8005A954  41 82 00 08 */	beq lbl_8005A95C
/* 8005A958  C3 E3 0E 5C */	lfs f31, 0xe5c(r3)
lbl_8005A95C:
/* 8005A95C  C0 02 86 E4 */	lfs f0, lit_4379(r2)
/* 8005A960  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8005A964  40 81 00 08 */	ble lbl_8005A96C
/* 8005A968  FF E0 00 90 */	fmr f31, f0
lbl_8005A96C:
/* 8005A96C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005A970  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005A974  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8005A978  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 8005A97C  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005A980  38 84 00 08 */	addi r4, r4, 8
/* 8005A984  48 30 E0 11 */	bl strcmp
/* 8005A988  2C 03 00 00 */	cmpwi r3, 0
/* 8005A98C  40 82 00 88 */	bne lbl_8005AA14
/* 8005A990  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005A994  7C 00 07 75 */	extsb. r0, r0
/* 8005A998  41 82 00 1C */	beq lbl_8005A9B4
/* 8005A99C  2C 00 00 03 */	cmpwi r0, 3
/* 8005A9A0  41 82 00 14 */	beq lbl_8005A9B4
/* 8005A9A4  2C 00 00 06 */	cmpwi r0, 6
/* 8005A9A8  41 82 00 0C */	beq lbl_8005A9B4
/* 8005A9AC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8005A9B0  40 82 00 64 */	bne lbl_8005AA14
lbl_8005A9B4:
/* 8005A9B4  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 8005A9B8  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 8005A9BC  38 81 00 18 */	addi r4, r1, 0x18
/* 8005A9C0  48 26 D6 09 */	bl setWindDirection__10Z2EnvSeMgrFP3Vec
/* 8005A9C4  C0 02 87 18 */	lfs f0, lit_4767(r2)
/* 8005A9C8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8005A9CC  4C 40 13 82 */	cror 2, 0, 2
/* 8005A9D0  40 82 00 18 */	bne lbl_8005A9E8
/* 8005A9D4  38 00 00 03 */	li r0, 3
/* 8005A9D8  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 8005A9DC  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 8005A9E0  98 03 01 60 */	stb r0, 0x160(r3)
/* 8005A9E4  48 00 00 14 */	b lbl_8005A9F8
lbl_8005A9E8:
/* 8005A9E8  38 00 00 01 */	li r0, 1
/* 8005A9EC  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 8005A9F0  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 8005A9F4  98 03 01 60 */	stb r0, 0x160(r3)
lbl_8005A9F8:
/* 8005A9F8  88 6D 87 E4 */	lbz r3, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005A9FC  7C 63 07 74 */	extsb r3, r3
/* 8005AA00  4B FD 26 6D */	bl dComIfGp_getReverb__Fi
/* 8005AA04  7C 64 1B 78 */	mr r4, r3
/* 8005AA08  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 8005AA0C  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 8005AA10  48 26 D5 FD */	bl startStrongWindSe__10Z2EnvSeMgrFSc
lbl_8005AA14:
/* 8005AA14  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005AA18  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005AA1C  88 03 12 D2 */	lbz r0, 0x12d2(r3)
/* 8005AA20  28 00 00 00 */	cmplwi r0, 0
/* 8005AA24  41 82 00 24 */	beq lbl_8005AA48
/* 8005AA28  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8005AA2C  D0 03 0E 48 */	stfs f0, 0xe48(r3)
/* 8005AA30  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8005AA34  D0 03 0E 4C */	stfs f0, 0xe4c(r3)
/* 8005AA38  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8005AA3C  D0 03 0E 50 */	stfs f0, 0xe50(r3)
/* 8005AA40  D3 E3 0E 58 */	stfs f31, 0xe58(r3)
/* 8005AA44  48 00 00 7C */	b lbl_8005AAC0
lbl_8005AA48:
/* 8005AA48  38 63 0E 48 */	addi r3, r3, 0xe48
/* 8005AA4C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8005AA50  C0 42 87 68 */	lfs f2, lit_5362(r2)
/* 8005AA54  C0 62 87 98 */	lfs f3, lit_5529(r2)
/* 8005AA58  C0 82 87 9C */	lfs f4, lit_5530(r2)
/* 8005AA5C  48 21 4F 21 */	bl cLib_addCalc__FPfffff
/* 8005AA60  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005AA64  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005AA68  38 63 0E 4C */	addi r3, r3, 0xe4c
/* 8005AA6C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8005AA70  C0 42 87 68 */	lfs f2, lit_5362(r2)
/* 8005AA74  C0 62 87 98 */	lfs f3, lit_5529(r2)
/* 8005AA78  C0 82 87 9C */	lfs f4, lit_5530(r2)
/* 8005AA7C  48 21 4F 01 */	bl cLib_addCalc__FPfffff
/* 8005AA80  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005AA84  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005AA88  38 63 0E 50 */	addi r3, r3, 0xe50
/* 8005AA8C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8005AA90  C0 42 87 68 */	lfs f2, lit_5362(r2)
/* 8005AA94  C0 62 87 98 */	lfs f3, lit_5529(r2)
/* 8005AA98  C0 82 87 9C */	lfs f4, lit_5530(r2)
/* 8005AA9C  48 21 4E E1 */	bl cLib_addCalc__FPfffff
/* 8005AAA0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005AAA4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005AAA8  38 63 0E 58 */	addi r3, r3, 0xe58
/* 8005AAAC  FC 20 F8 90 */	fmr f1, f31
/* 8005AAB0  C0 42 87 68 */	lfs f2, lit_5362(r2)
/* 8005AAB4  C0 62 86 E4 */	lfs f3, lit_4379(r2)
/* 8005AAB8  C0 82 87 A0 */	lfs f4, lit_5531(r2)
/* 8005AABC  48 21 4E C1 */	bl cLib_addCalc__FPfffff
lbl_8005AAC0:
/* 8005AAC0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8005AAC4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8005AAC8  39 61 00 50 */	addi r11, r1, 0x50
/* 8005AACC  48 30 77 4D */	bl _restgpr_25
/* 8005AAD0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8005AAD4  7C 08 03 A6 */	mtlr r0
/* 8005AAD8  38 21 00 60 */	addi r1, r1, 0x60
/* 8005AADC  4E 80 00 20 */	blr 
