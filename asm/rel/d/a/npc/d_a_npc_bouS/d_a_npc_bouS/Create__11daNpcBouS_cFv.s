lbl_80973948:
/* 80973948  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8097394C  7C 08 02 A6 */	mflr r0
/* 80973950  90 01 00 44 */	stw r0, 0x44(r1)
/* 80973954  39 61 00 40 */	addi r11, r1, 0x40
/* 80973958  4B 9E E8 74 */	b _savegpr_25
/* 8097395C  7C 7D 1B 78 */	mr r29, r3
/* 80973960  3C 80 80 98 */	lis r4, m__17daNpcBouS_Param_c@ha
/* 80973964  3B E4 84 10 */	addi r31, r4, m__17daNpcBouS_Param_c@l
/* 80973968  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8097396C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80973970  40 82 00 1C */	bne lbl_8097398C
/* 80973974  28 1D 00 00 */	cmplwi r29, 0
/* 80973978  41 82 00 08 */	beq lbl_80973980
/* 8097397C  4B FF FB D1 */	bl __ct__11daNpcBouS_cFv
lbl_80973980:
/* 80973980  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80973984  60 00 00 08 */	ori r0, r0, 8
/* 80973988  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8097398C:
/* 8097398C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80973990  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 80973994  7C 00 07 34 */	extsh r0, r0
/* 80973998  90 1D 0D F0 */	stw r0, 0xdf0(r29)
/* 8097399C  3B 20 00 00 */	li r25, 0
/* 809739A0  3B 80 00 00 */	li r28, 0
/* 809739A4  3B 60 00 00 */	li r27, 0
/* 809739A8  3C 60 80 98 */	lis r3, l_arcNames@ha
/* 809739AC  3B 43 89 20 */	addi r26, r3, l_arcNames@l
lbl_809739B0:
/* 809739B0  38 7B 0D D4 */	addi r3, r27, 0xdd4
/* 809739B4  7C 7D 1A 14 */	add r3, r29, r3
/* 809739B8  7C 9A E0 2E */	lwzx r4, r26, r28
/* 809739BC  4B 6B 95 00 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809739C0  7C 7E 1B 78 */	mr r30, r3
/* 809739C4  2C 1E 00 04 */	cmpwi r30, 4
/* 809739C8  41 82 00 08 */	beq lbl_809739D0
/* 809739CC  48 00 01 B8 */	b lbl_80973B84
lbl_809739D0:
/* 809739D0  3B 39 00 01 */	addi r25, r25, 1
/* 809739D4  2C 19 00 02 */	cmpwi r25, 2
/* 809739D8  3B 9C 00 04 */	addi r28, r28, 4
/* 809739DC  3B 7B 00 08 */	addi r27, r27, 8
/* 809739E0  41 80 FF D0 */	blt lbl_809739B0
/* 809739E4  2C 1E 00 04 */	cmpwi r30, 4
/* 809739E8  40 82 01 98 */	bne lbl_80973B80
/* 809739EC  7F A3 EB 78 */	mr r3, r29
/* 809739F0  3C 80 80 97 */	lis r4, createHeapCallBack__11daNpcBouS_cFP10fopAc_ac_c@ha
/* 809739F4  38 84 42 BC */	addi r4, r4, createHeapCallBack__11daNpcBouS_cFP10fopAc_ac_c@l
/* 809739F8  38 A0 3D 40 */	li r5, 0x3d40
/* 809739FC  4B 6A 6A B4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80973A00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80973A04  40 82 00 0C */	bne lbl_80973A10
/* 80973A08  38 60 00 05 */	li r3, 5
/* 80973A0C  48 00 01 78 */	b lbl_80973B84
lbl_80973A10:
/* 80973A10  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80973A14  80 63 00 04 */	lwz r3, 4(r3)
/* 80973A18  38 03 00 24 */	addi r0, r3, 0x24
/* 80973A1C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80973A20  7F A3 EB 78 */	mr r3, r29
/* 80973A24  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80973A28  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80973A2C  FC 60 08 90 */	fmr f3, f1
/* 80973A30  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80973A34  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80973A38  FC C0 20 90 */	fmr f6, f4
/* 80973A3C  4B 6A 6B 0C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80973A40  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80973A44  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80973A48  38 BD 05 38 */	addi r5, r29, 0x538
/* 80973A4C  38 C0 00 03 */	li r6, 3
/* 80973A50  38 E0 00 01 */	li r7, 1
/* 80973A54  4B 94 CA DC */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80973A58  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80973A5C  38 9F 00 00 */	addi r4, r31, 0
/* 80973A60  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80973A64  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80973A68  4B 70 24 F0 */	b SetWall__12dBgS_AcchCirFff
/* 80973A6C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80973A70  90 01 00 08 */	stw r0, 8(r1)
/* 80973A74  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80973A78  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80973A7C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80973A80  7F A6 EB 78 */	mr r6, r29
/* 80973A84  38 E0 00 01 */	li r7, 1
/* 80973A88  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 80973A8C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80973A90  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80973A94  4B 70 27 B4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80973A98  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 80973A9C  38 9F 00 00 */	addi r4, r31, 0
/* 80973AA0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80973AA4  FC 00 00 1E */	fctiwz f0, f0
/* 80973AA8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80973AAC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80973AB0  38 A0 00 00 */	li r5, 0
/* 80973AB4  7F A6 EB 78 */	mr r6, r29
/* 80973AB8  4B 70 FD A8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80973ABC  38 7D 0C 84 */	addi r3, r29, 0xc84
/* 80973AC0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 80973AC4  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 80973AC8  4B 71 0D EC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80973ACC  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 80973AD0  90 1D 0C C8 */	stw r0, 0xcc8(r29)
/* 80973AD4  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80973AD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80973ADC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80973AE0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80973AE4  4B 70 2F C8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80973AE8  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80973AEC  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80973AF0  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80973AF4  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80973AF8  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80973AFC  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80973B00  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80973B04  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80973B08  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80973B0C  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80973B10  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80973B14  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80973B18  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80973B1C  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80973B20  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80973B24  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80973B28  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80973B2C  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80973B30  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80973B34  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80973B38  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80973B3C  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80973B40  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80973B44  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80973B48  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80973B4C  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80973B50  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80973B54  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80973B58  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80973B5C  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80973B60  7F A3 EB 78 */	mr r3, r29
/* 80973B64  4B 7D F2 20 */	b setEnvTevColor__8daNpcF_cFv
/* 80973B68  7F A3 EB 78 */	mr r3, r29
/* 80973B6C  4B 7D F2 74 */	b setRoomNo__8daNpcF_cFv
/* 80973B70  7F A3 EB 78 */	mr r3, r29
/* 80973B74  48 00 0B BD */	bl reset__11daNpcBouS_cFv
/* 80973B78  7F A3 EB 78 */	mr r3, r29
/* 80973B7C  48 00 04 81 */	bl Execute__11daNpcBouS_cFv
lbl_80973B80:
/* 80973B80  7F C3 F3 78 */	mr r3, r30
lbl_80973B84:
/* 80973B84  39 61 00 40 */	addi r11, r1, 0x40
/* 80973B88  4B 9E E6 90 */	b _restgpr_25
/* 80973B8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80973B90  7C 08 03 A6 */	mtlr r0
/* 80973B94  38 21 00 40 */	addi r1, r1, 0x40
/* 80973B98  4E 80 00 20 */	blr 
