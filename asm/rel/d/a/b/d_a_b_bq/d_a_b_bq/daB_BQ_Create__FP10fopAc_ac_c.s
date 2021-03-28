lbl_805B969C:
/* 805B969C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805B96A0  7C 08 02 A6 */	mflr r0
/* 805B96A4  90 01 00 84 */	stw r0, 0x84(r1)
/* 805B96A8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805B96AC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805B96B0  39 61 00 70 */	addi r11, r1, 0x70
/* 805B96B4  4B DA 8B 14 */	b _savegpr_24
/* 805B96B8  7C 7D 1B 78 */	mr r29, r3
/* 805B96BC  3C 80 80 5C */	lis r4, cNullVec__6Z2Calc@ha
/* 805B96C0  3B C4 A8 74 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 805B96C4  3C 80 80 5C */	lis r4, lit_3816@ha
/* 805B96C8  3B E4 A5 88 */	addi r31, r4, lit_3816@l
/* 805B96CC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805B96D0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805B96D4  40 82 00 1C */	bne lbl_805B96F0
/* 805B96D8  28 1D 00 00 */	cmplwi r29, 0
/* 805B96DC  41 82 00 08 */	beq lbl_805B96E4
/* 805B96E0  48 00 04 5D */	bl __ct__10b_bq_classFv
lbl_805B96E4:
/* 805B96E4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805B96E8  60 00 00 08 */	ori r0, r0, 8
/* 805B96EC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_805B96F0:
/* 805B96F0  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 805B96F4  3C 80 80 5C */	lis r4, stringBase0@ha
/* 805B96F8  38 84 A8 6C */	addi r4, r4, stringBase0@l
/* 805B96FC  4B A7 37 C0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805B9700  7C 7C 1B 78 */	mr r28, r3
/* 805B9704  2C 1C 00 04 */	cmpwi r28, 4
/* 805B9708  40 82 04 10 */	bne lbl_805B9B18
/* 805B970C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B9710  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805B9714  3B 43 09 58 */	addi r26, r3, 0x958
/* 805B9718  7F 43 D3 78 */	mr r3, r26
/* 805B971C  38 80 00 03 */	li r4, 3
/* 805B9720  4B A7 B2 14 */	b isDungeonItem__12dSv_memBit_cCFi
/* 805B9724  2C 03 00 00 */	cmpwi r3, 0
/* 805B9728  41 82 00 D8 */	beq lbl_805B9800
/* 805B972C  C0 1F 02 80 */	lfs f0, 0x280(r31)
/* 805B9730  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805B9734  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B9738  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805B973C  C0 1F 02 84 */	lfs f0, 0x284(r31)
/* 805B9740  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B9744  38 61 00 10 */	addi r3, r1, 0x10
/* 805B9748  38 80 00 00 */	li r4, 0
/* 805B974C  38 A0 00 00 */	li r5, 0
/* 805B9750  38 C0 00 00 */	li r6, 0
/* 805B9754  4B CA DC A0 */	b __ct__5csXyzFsss
/* 805B9758  38 61 00 3C */	addi r3, r1, 0x3c
/* 805B975C  38 81 00 10 */	addi r4, r1, 0x10
/* 805B9760  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805B9764  7C 05 07 74 */	extsb r5, r0
/* 805B9768  38 C0 00 00 */	li r6, 0
/* 805B976C  38 E0 00 00 */	li r7, 0
/* 805B9770  39 00 00 FF */	li r8, 0xff
/* 805B9774  4B A6 31 E8 */	b fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 805B9778  7F 43 D3 78 */	mr r3, r26
/* 805B977C  38 80 00 04 */	li r4, 4
/* 805B9780  4B A7 B1 B4 */	b isDungeonItem__12dSv_memBit_cCFi
/* 805B9784  2C 03 00 00 */	cmpwi r3, 0
/* 805B9788  40 82 00 50 */	bne lbl_805B97D8
/* 805B978C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805B9790  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805B9794  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805B9798  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805B979C  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 805B97A0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805B97A4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805B97A8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 805B97AC  C0 1F 02 DC */	lfs f0, 0x2dc(r31)
/* 805B97B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805B97B4  38 61 00 3C */	addi r3, r1, 0x3c
/* 805B97B8  38 80 00 22 */	li r4, 0x22
/* 805B97BC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805B97C0  7C 05 07 74 */	extsb r5, r0
/* 805B97C4  38 DD 04 E4 */	addi r6, r29, 0x4e4
/* 805B97C8  38 E1 00 30 */	addi r7, r1, 0x30
/* 805B97CC  FC 40 08 90 */	fmr f2, f1
/* 805B97D0  39 00 FF FF */	li r8, -1
/* 805B97D4  4B A6 29 00 */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
lbl_805B97D8:
/* 805B97D8  38 00 00 06 */	li r0, 6
/* 805B97DC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805B97E0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805B97E4  98 03 12 C8 */	stb r0, 0x12c8(r3)
/* 805B97E8  98 03 12 C2 */	stb r0, 0x12c2(r3)
/* 805B97EC  98 03 12 C3 */	stb r0, 0x12c3(r3)
/* 805B97F0  7F A3 EB 78 */	mr r3, r29
/* 805B97F4  4B FF CB 55 */	bl fish_set__FP10b_bq_class
/* 805B97F8  38 60 00 05 */	li r3, 5
/* 805B97FC  48 00 03 20 */	b lbl_805B9B1C
lbl_805B9800:
/* 805B9800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B9804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805B9808  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805B980C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 805B9810  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805B9814  7C 05 07 74 */	extsb r5, r0
/* 805B9818  4B A7 BA 98 */	b offSwitch__10dSv_info_cFii
/* 805B981C  7F A3 EB 78 */	mr r3, r29
/* 805B9820  3C 80 80 5C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 805B9824  38 84 93 70 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 805B9828  38 A0 6F A0 */	li r5, 0x6fa0
/* 805B982C  4B A6 0C 84 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805B9830  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805B9834  40 82 00 0C */	bne lbl_805B9840
/* 805B9838  38 60 00 05 */	li r3, 5
/* 805B983C  48 00 02 E0 */	b lbl_805B9B1C
lbl_805B9840:
/* 805B9840  3C 60 80 5C */	lis r3, data_805BAD50@ha
/* 805B9844  8C 03 AD 50 */	lbzu r0, data_805BAD50@l(r3)
/* 805B9848  28 00 00 00 */	cmplwi r0, 0
/* 805B984C  40 82 00 20 */	bne lbl_805B986C
/* 805B9850  38 00 00 01 */	li r0, 1
/* 805B9854  98 1D 13 9C */	stb r0, 0x139c(r29)
/* 805B9858  98 03 00 00 */	stb r0, 0(r3)
/* 805B985C  38 00 FF FF */	li r0, -1
/* 805B9860  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805B9864  38 63 AD 60 */	addi r3, r3, l_HIO@l
/* 805B9868  98 03 00 04 */	stb r0, 4(r3)
lbl_805B986C:
/* 805B986C  38 00 00 04 */	li r0, 4
/* 805B9870  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 805B9874  38 00 00 16 */	li r0, 0x16
/* 805B9878  98 1D 05 46 */	stb r0, 0x546(r29)
/* 805B987C  38 7D 07 00 */	addi r3, r29, 0x700
/* 805B9880  38 80 00 64 */	li r4, 0x64
/* 805B9884  38 A0 00 00 */	li r5, 0
/* 805B9888  7F A6 EB 78 */	mr r6, r29
/* 805B988C  4B AC 9F D4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805B9890  38 7D 07 3C */	addi r3, r29, 0x73c
/* 805B9894  38 9E 02 F8 */	addi r4, r30, 0x2f8
/* 805B9898  4B AC B1 9C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805B989C  38 1D 07 00 */	addi r0, r29, 0x700
/* 805B98A0  90 1D 07 80 */	stw r0, 0x780(r29)
/* 805B98A4  80 1D 07 D8 */	lwz r0, 0x7d8(r29)
/* 805B98A8  60 00 00 04 */	ori r0, r0, 4
/* 805B98AC  90 1D 07 D8 */	stw r0, 0x7d8(r29)
/* 805B98B0  38 7D 08 B0 */	addi r3, r29, 0x8b0
/* 805B98B4  38 9E 03 38 */	addi r4, r30, 0x338
/* 805B98B8  4B AC B1 7C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805B98BC  38 1D 07 00 */	addi r0, r29, 0x700
/* 805B98C0  90 1D 08 F4 */	stw r0, 0x8f4(r29)
/* 805B98C4  38 7D 08 74 */	addi r3, r29, 0x874
/* 805B98C8  38 80 00 FF */	li r4, 0xff
/* 805B98CC  38 A0 00 00 */	li r5, 0
/* 805B98D0  7F A6 EB 78 */	mr r6, r29
/* 805B98D4  4B AC 9F 8C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805B98D8  38 7D 09 E8 */	addi r3, r29, 0x9e8
/* 805B98DC  38 9E 03 78 */	addi r4, r30, 0x378
/* 805B98E0  4B AC B1 54 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805B98E4  38 1D 08 74 */	addi r0, r29, 0x874
/* 805B98E8  90 1D 0A 2C */	stw r0, 0xa2c(r29)
/* 805B98EC  38 7D 10 00 */	addi r3, r29, 0x1000
/* 805B98F0  38 9E 03 B8 */	addi r4, r30, 0x3b8
/* 805B98F4  4B AC B1 40 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805B98F8  38 1D 08 74 */	addi r0, r29, 0x874
/* 805B98FC  90 1D 10 44 */	stw r0, 0x1044(r29)
/* 805B9900  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805B9904  38 9D 05 38 */	addi r4, r29, 0x538
/* 805B9908  7C 85 23 78 */	mr r5, r4
/* 805B990C  38 C0 00 03 */	li r6, 3
/* 805B9910  38 E0 00 01 */	li r7, 1
/* 805B9914  4B D0 77 80 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 805B9918  38 1D 05 E0 */	addi r0, r29, 0x5e0
/* 805B991C  90 1D 11 5C */	stw r0, 0x115c(r29)
/* 805B9920  3B 00 00 00 */	li r24, 0
/* 805B9924  3B 60 00 00 */	li r27, 0
/* 805B9928  3B 5D 07 00 */	addi r26, r29, 0x700
lbl_805B992C:
/* 805B992C  7F 3D DA 14 */	add r25, r29, r27
/* 805B9930  38 79 0B 20 */	addi r3, r25, 0xb20
/* 805B9934  38 9E 03 F8 */	addi r4, r30, 0x3f8
/* 805B9938  4B AC B0 FC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805B993C  93 59 0B 64 */	stw r26, 0xb64(r25)
/* 805B9940  3B 18 00 01 */	addi r24, r24, 1
/* 805B9944  2C 18 00 04 */	cmpwi r24, 4
/* 805B9948  3B 7B 01 38 */	addi r27, r27, 0x138
/* 805B994C  41 80 FF E0 */	blt lbl_805B992C
/* 805B9950  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805B9954  54 18 00 2E */	rlwinm r24, r0, 0, 0, 0x17
/* 805B9958  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805B995C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805B9960  80 63 00 00 */	lwz r3, 0(r3)
/* 805B9964  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805B9968  4B A5 2A 74 */	b mDoMtx_YrotS__FPA4_fs
/* 805B996C  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 805B9970  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805B9974  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B9978  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805B997C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 805B9980  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805B9984  3B 20 00 00 */	li r25, 0
/* 805B9988  3B C0 00 00 */	li r30, 0
/* 805B998C  C3 FF 00 08 */	lfs f31, 8(r31)
lbl_805B9990:
/* 805B9990  38 61 00 24 */	addi r3, r1, 0x24
/* 805B9994  38 81 00 18 */	addi r4, r1, 0x18
/* 805B9998  4B CB 75 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 805B999C  38 61 00 18 */	addi r3, r1, 0x18
/* 805B99A0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805B99A4  7C 65 1B 78 */	mr r5, r3
/* 805B99A8  4B D8 D6 E8 */	b PSVECAdd
/* 805B99AC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805B99B0  7C 07 07 74 */	extsb r7, r0
/* 805B99B4  38 00 00 00 */	li r0, 0
/* 805B99B8  90 01 00 08 */	stw r0, 8(r1)
/* 805B99BC  38 60 02 0B */	li r3, 0x20b
/* 805B99C0  28 1D 00 00 */	cmplwi r29, 0
/* 805B99C4  41 82 00 0C */	beq lbl_805B99D0
/* 805B99C8  80 9D 00 04 */	lwz r4, 4(r29)
/* 805B99CC  48 00 00 08 */	b lbl_805B99D4
lbl_805B99D0:
/* 805B99D0  38 80 FF FF */	li r4, -1
lbl_805B99D4:
/* 805B99D4  7F 05 CB 78 */	or r5, r24, r25
/* 805B99D8  38 C1 00 18 */	addi r6, r1, 0x18
/* 805B99DC  39 00 00 00 */	li r8, 0
/* 805B99E0  39 20 00 00 */	li r9, 0
/* 805B99E4  39 40 FF FF */	li r10, -1
/* 805B99E8  4B A6 05 08 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805B99EC  38 1E 06 E0 */	addi r0, r30, 0x6e0
/* 805B99F0  7C 7D 01 2E */	stwx r3, r29, r0
/* 805B99F4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805B99F8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805B99FC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805B9A00  3B 39 00 01 */	addi r25, r25, 1
/* 805B9A04  2C 19 00 02 */	cmpwi r25, 2
/* 805B9A08  3B DE 00 04 */	addi r30, r30, 4
/* 805B9A0C  41 80 FF 84 */	blt lbl_805B9990
/* 805B9A10  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805B9A14  7C 07 07 74 */	extsb r7, r0
/* 805B9A18  38 00 00 00 */	li r0, 0
/* 805B9A1C  90 01 00 08 */	stw r0, 8(r1)
/* 805B9A20  38 60 01 DB */	li r3, 0x1db
/* 805B9A24  28 1D 00 00 */	cmplwi r29, 0
/* 805B9A28  41 82 00 0C */	beq lbl_805B9A34
/* 805B9A2C  80 9D 00 04 */	lwz r4, 4(r29)
/* 805B9A30  48 00 00 08 */	b lbl_805B9A38
lbl_805B9A34:
/* 805B9A34  38 80 FF FF */	li r4, -1
lbl_805B9A38:
/* 805B9A38  38 A0 FF FF */	li r5, -1
/* 805B9A3C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 805B9A40  39 00 00 00 */	li r8, 0
/* 805B9A44  39 20 00 00 */	li r9, 0
/* 805B9A48  39 40 FF FF */	li r10, -1
/* 805B9A4C  4B A6 04 A4 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805B9A50  90 7D 06 E8 */	stw r3, 0x6e8(r29)
/* 805B9A54  38 60 00 00 */	li r3, 0
/* 805B9A58  4B A7 2F 24 */	b getLayerNo__14dComIfG_play_cFi
/* 805B9A5C  2C 03 00 04 */	cmpwi r3, 4
/* 805B9A60  40 82 00 0C */	bne lbl_805B9A6C
/* 805B9A64  38 00 00 01 */	li r0, 1
/* 805B9A68  B0 1D 12 38 */	sth r0, 0x1238(r29)
lbl_805B9A6C:
/* 805B9A6C  38 00 00 02 */	li r0, 2
/* 805B9A70  98 1D 06 EC */	stb r0, 0x6ec(r29)
/* 805B9A74  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 805B9A78  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)
/* 805B9A7C  28 00 00 00 */	cmplwi r0, 0
/* 805B9A80  40 82 00 20 */	bne lbl_805B9AA0
/* 805B9A84  38 00 00 0A */	li r0, 0xa
/* 805B9A88  B0 1D 12 38 */	sth r0, 0x1238(r29)
/* 805B9A8C  38 00 00 00 */	li r0, 0
/* 805B9A90  B0 1D 06 CA */	sth r0, 0x6ca(r29)
/* 805B9A94  38 00 00 01 */	li r0, 1
/* 805B9A98  98 1D 06 F8 */	stb r0, 0x6f8(r29)
/* 805B9A9C  48 00 00 4C */	b lbl_805B9AE8
lbl_805B9AA0:
/* 805B9AA0  38 00 00 00 */	li r0, 0
/* 805B9AA4  B0 1D 06 CA */	sth r0, 0x6ca(r29)
/* 805B9AA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805B9AAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805B9AB0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B9AB4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805B9AB8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100000D@ha */
/* 805B9ABC  38 84 00 0D */	addi r4, r4, 0x000D /* 0x0100000D@l */
/* 805B9AC0  38 A0 00 00 */	li r5, 0
/* 805B9AC4  38 C0 00 00 */	li r6, 0
/* 805B9AC8  4B CF 55 48 */	b bgmStart__8Z2SeqMgrFUlUll
/* 805B9ACC  38 00 00 02 */	li r0, 2
/* 805B9AD0  98 1D 13 92 */	stb r0, 0x1392(r29)
/* 805B9AD4  38 00 00 01 */	li r0, 1
/* 805B9AD8  98 1D 06 F8 */	stb r0, 0x6f8(r29)
/* 805B9ADC  98 1D 06 ED */	stb r0, 0x6ed(r29)
/* 805B9AE0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805B9AE4  D0 1D 06 F0 */	stfs f0, 0x6f0(r29)
lbl_805B9AE8:
/* 805B9AE8  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 805B9AEC  4B CA DE 68 */	b cM_rndF__Ff
/* 805B9AF0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805B9AF4  EC 00 08 2A */	fadds f0, f0, f1
/* 805B9AF8  FC 00 00 1E */	fctiwz f0, f0
/* 805B9AFC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 805B9B00  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 805B9B04  98 1D 06 FA */	stb r0, 0x6fa(r29)
/* 805B9B08  38 00 00 01 */	li r0, 1
/* 805B9B0C  98 1D 11 50 */	stb r0, 0x1150(r29)
/* 805B9B10  7F A3 EB 78 */	mr r3, r29
/* 805B9B14  4B FF EF 11 */	bl daB_BQ_Execute__FP10b_bq_class
lbl_805B9B18:
/* 805B9B18  7F 83 E3 78 */	mr r3, r28
lbl_805B9B1C:
/* 805B9B1C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805B9B20  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805B9B24  39 61 00 70 */	addi r11, r1, 0x70
/* 805B9B28  4B DA 86 EC */	b _restgpr_24
/* 805B9B2C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805B9B30  7C 08 03 A6 */	mtlr r0
/* 805B9B34  38 21 00 80 */	addi r1, r1, 0x80
/* 805B9B38  4E 80 00 20 */	blr 
