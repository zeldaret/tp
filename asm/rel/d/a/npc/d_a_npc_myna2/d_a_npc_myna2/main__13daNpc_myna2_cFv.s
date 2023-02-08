lbl_80A848B4:
/* 80A848B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A848B8  7C 08 02 A6 */	mflr r0
/* 80A848BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A848C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A848C4  4B 8D D9 15 */	bl _savegpr_28
/* 80A848C8  7C 7D 1B 78 */	mr r29, r3
/* 80A848CC  3C 80 80 A9 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A886B4@ha */
/* 80A848D0  3B C4 86 B4 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A886B4@l */
/* 80A848D4  3C 80 80 A9 */	lis r4, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A848D8  3B E4 84 34 */	addi r31, r4, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A848DC  48 00 0F B9 */	bl doEvent__13daNpc_myna2_cFv
/* 80A848E0  2C 03 00 00 */	cmpwi r3, 0
/* 80A848E4  40 82 00 10 */	bne lbl_80A848F4
/* 80A848E8  7F A3 EB 78 */	mr r3, r29
/* 80A848EC  38 80 00 01 */	li r4, 1
/* 80A848F0  48 00 0E C1 */	bl doNormalAction__13daNpc_myna2_cFi
lbl_80A848F4:
/* 80A848F4  3B 80 00 00 */	li r28, 0
/* 80A848F8  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 80A848FC  28 00 00 00 */	cmplwi r0, 0
/* 80A84900  40 82 00 1C */	bne lbl_80A8491C
/* 80A84904  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80A84908  28 00 00 00 */	cmplwi r0, 0
/* 80A8490C  41 82 00 14 */	beq lbl_80A84920
/* 80A84910  4B 5A B1 45 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A84914  2C 03 00 00 */	cmpwi r3, 0
/* 80A84918  40 82 00 08 */	bne lbl_80A84920
lbl_80A8491C:
/* 80A8491C  3B 80 00 01 */	li r28, 1
lbl_80A84920:
/* 80A84920  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80A84924  41 82 00 0C */	beq lbl_80A84930
/* 80A84928  38 00 00 00 */	li r0, 0
/* 80A8492C  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80A84930:
/* 80A84930  38 7F 00 00 */	addi r3, r31, 0
/* 80A84934  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 80A84938  28 00 00 00 */	cmplwi r0, 0
/* 80A8493C  40 82 00 AC */	bne lbl_80A849E8
/* 80A84940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A84944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A84948  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 80A8494C  28 03 00 00 */	cmplwi r3, 0
/* 80A84950  41 82 00 30 */	beq lbl_80A84980
/* 80A84954  88 1D 09 ED */	lbz r0, 0x9ed(r29)
/* 80A84958  28 00 00 00 */	cmplwi r0, 0
/* 80A8495C  41 82 00 8C */	beq lbl_80A849E8
/* 80A84960  38 00 00 00 */	li r0, 0
/* 80A84964  28 03 00 00 */	cmplwi r3, 0
/* 80A84968  41 82 00 0C */	beq lbl_80A84974
/* 80A8496C  28 03 00 02 */	cmplwi r3, 2
/* 80A84970  40 82 00 08 */	bne lbl_80A84978
lbl_80A84974:
/* 80A84974  38 00 00 01 */	li r0, 1
lbl_80A84978:
/* 80A84978  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A8497C  41 82 00 6C */	beq lbl_80A849E8
lbl_80A84980:
/* 80A84980  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A84984  28 00 00 00 */	cmplwi r0, 0
/* 80A84988  41 82 00 24 */	beq lbl_80A849AC
/* 80A8498C  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A84990  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 80A84994  7C 63 02 14 */	add r3, r3, r0
/* 80A84998  80 03 00 04 */	lwz r0, 4(r3)
/* 80A8499C  54 00 10 3A */	slwi r0, r0, 2
/* 80A849A0  38 7E 01 28 */	addi r3, r30, 0x128
/* 80A849A4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A849A8  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80A849AC:
/* 80A849AC  7F A3 EB 78 */	mr r3, r29
/* 80A849B0  88 9D 09 E9 */	lbz r4, 0x9e9(r29)
/* 80A849B4  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A849B8  54 00 18 38 */	slwi r0, r0, 3
/* 80A849BC  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 80A849C0  7C 05 00 2E */	lwzx r0, r5, r0
/* 80A849C4  54 00 10 3A */	slwi r0, r0, 2
/* 80A849C8  38 BE 00 D0 */	addi r5, r30, 0xd0
/* 80A849CC  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A849D0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A849D4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A849D8  38 E0 00 28 */	li r7, 0x28
/* 80A849DC  39 00 00 FF */	li r8, 0xff
/* 80A849E0  39 20 00 01 */	li r9, 1
/* 80A849E4  4B 6C EE 99 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A849E8:
/* 80A849E8  88 1D 09 EE */	lbz r0, 0x9ee(r29)
/* 80A849EC  28 00 00 00 */	cmplwi r0, 0
/* 80A849F0  41 82 00 14 */	beq lbl_80A84A04
/* 80A849F4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A849F8  D0 1D 09 7C */	stfs f0, 0x97c(r29)
/* 80A849FC  38 00 00 00 */	li r0, 0
/* 80A84A00  98 1D 09 EE */	stb r0, 0x9ee(r29)
lbl_80A84A04:
/* 80A84A04  7F A3 EB 78 */	mr r3, r29
/* 80A84A08  48 00 09 51 */	bl playMotion__13daNpc_myna2_cFv
/* 80A84A0C  88 1D 0E 0C */	lbz r0, 0xe0c(r29)
/* 80A84A10  28 00 00 00 */	cmplwi r0, 0
/* 80A84A14  40 82 00 0C */	bne lbl_80A84A20
/* 80A84A18  38 60 00 01 */	li r3, 1
/* 80A84A1C  48 00 01 30 */	b lbl_80A84B4C
lbl_80A84A20:
/* 80A84A20  37 9D 07 A8 */	addic. r28, r29, 0x7a8
/* 80A84A24  41 82 00 14 */	beq lbl_80A84A38
/* 80A84A28  7F 83 E3 78 */	mr r3, r28
/* 80A84A2C  7F 84 E3 78 */	mr r4, r28
/* 80A84A30  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80A84A34  4B 8C 26 A5 */	bl PSVECScale
lbl_80A84A38:
/* 80A84A38  7F A3 EB 78 */	mr r3, r29
/* 80A84A3C  7F 84 E3 78 */	mr r4, r28
/* 80A84A40  4B 59 5C 8D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80A84A44  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80A84A48  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A84A4C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A84A50  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A84A54  4B 5F 20 59 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A84A58  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80A84A5C  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80A84A60  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80A84A64  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80A84A68  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80A84A6C  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80A84A70  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80A84A74  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80A84A78  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80A84A7C  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80A84A80  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80A84A84  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80A84A88  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80A84A8C  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80A84A90  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80A84A94  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80A84A98  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80A84A9C  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80A84AA0  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80A84AA4  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80A84AA8  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80A84AAC  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80A84AB0  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80A84AB4  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80A84AB8  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80A84ABC  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80A84AC0  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80A84AC4  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A84AC8  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80A84ACC  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80A84AD0  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80A84AD4  C0 1D 09 80 */	lfs f0, 0x980(r29)
/* 80A84AD8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A84ADC  41 82 00 6C */	beq lbl_80A84B48
/* 80A84AE0  38 7D 0A 58 */	addi r3, r29, 0xa58
/* 80A84AE4  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80A84AE8  4B 6D 0A 85 */	bl daNpcF_getGroundAngle__FP13cBgS_PolyInfos
/* 80A84AEC  B0 7D 09 98 */	sth r3, 0x998(r29)
/* 80A84AF0  7F A3 EB 78 */	mr r3, r29
/* 80A84AF4  4B 6C E2 91 */	bl setEnvTevColor__8daNpcF_cFv
/* 80A84AF8  7F A3 EB 78 */	mr r3, r29
/* 80A84AFC  4B 6C E2 E5 */	bl setRoomNo__8daNpcF_cFv
/* 80A84B00  38 7D 06 C0 */	addi r3, r29, 0x6c0
/* 80A84B04  4B 72 69 BD */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 80A84B08  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80A84B0C  90 1D 09 B0 */	stw r0, 0x9b0(r29)
/* 80A84B10  88 7D 07 CA */	lbz r3, 0x7ca(r29)
/* 80A84B14  4B 5A 85 59 */	bl dComIfGp_getReverb__Fi
/* 80A84B18  98 7D 09 E8 */	stb r3, 0x9e8(r29)
/* 80A84B1C  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 80A84B20  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80A84B24  41 82 00 24 */	beq lbl_80A84B48
/* 80A84B28  C0 3D 07 9C */	lfs f1, 0x79c(r29)
/* 80A84B2C  C0 1D 09 80 */	lfs f0, 0x980(r29)
/* 80A84B30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A84B34  40 81 00 14 */	ble lbl_80A84B48
/* 80A84B38  38 7D 07 50 */	addi r3, r29, 0x750
/* 80A84B3C  4B 72 69 85 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 80A84B40  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80A84B44  90 1D 09 B0 */	stw r0, 0x9b0(r29)
lbl_80A84B48:
/* 80A84B48  38 60 00 00 */	li r3, 0
lbl_80A84B4C:
/* 80A84B4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A84B50  4B 8D D6 D5 */	bl _restgpr_28
/* 80A84B54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A84B58  7C 08 03 A6 */	mtlr r0
/* 80A84B5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A84B60  4E 80 00 20 */	blr 
