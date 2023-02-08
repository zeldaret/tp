lbl_80C88928:
/* 80C88928  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C8892C  7C 08 02 A6 */	mflr r0
/* 80C88930  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C88934  39 61 00 30 */	addi r11, r1, 0x30
/* 80C88938  4B 6D 98 A1 */	bl _savegpr_28
/* 80C8893C  7C 7D 1B 78 */	mr r29, r3
/* 80C88940  3C 80 80 C9 */	lis r4, lit_3627@ha /* 0x80C89F60@ha */
/* 80C88944  3B E4 9F 60 */	addi r31, r4, lit_3627@l /* 0x80C89F60@l */
/* 80C88948  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C8894C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C88950  40 82 00 88 */	bne lbl_80C889D8
/* 80C88954  7F A0 EB 79 */	or. r0, r29, r29
/* 80C88958  41 82 00 74 */	beq lbl_80C889CC
/* 80C8895C  7C 1E 03 78 */	mr r30, r0
/* 80C88960  4B 3E FC C5 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C88964  3C 60 80 C9 */	lis r3, __vt__10daL8Lift_c@ha /* 0x80C8A1A0@ha */
/* 80C88968  38 03 A1 A0 */	addi r0, r3, __vt__10daL8Lift_c@l /* 0x80C8A1A0@l */
/* 80C8896C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C88970  3B 9E 05 AC */	addi r28, r30, 0x5ac
/* 80C88974  3C 60 80 C9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80C8A194@ha */
/* 80C88978  38 03 A1 94 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80C8A194@l */
/* 80C8897C  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 80C88980  7F 83 E3 78 */	mr r3, r28
/* 80C88984  38 80 00 00 */	li r4, 0
/* 80C88988  4B 69 FA 75 */	bl init__12J3DFrameCtrlFs
/* 80C8898C  38 00 00 00 */	li r0, 0
/* 80C88990  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80C88994  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80C88998  4B 3E D5 15 */	bl __ct__12dBgS_AcchCirFv
/* 80C8899C  3B 9E 06 2C */	addi r28, r30, 0x62c
/* 80C889A0  7F 83 E3 78 */	mr r3, r28
/* 80C889A4  4B 3E D6 FD */	bl __ct__9dBgS_AcchFv
/* 80C889A8  3C 60 80 C9 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C8A170@ha */
/* 80C889AC  38 63 A1 70 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C8A170@l */
/* 80C889B0  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80C889B4  38 03 00 0C */	addi r0, r3, 0xc
/* 80C889B8  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80C889BC  38 03 00 18 */	addi r0, r3, 0x18
/* 80C889C0  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80C889C4  38 7C 00 14 */	addi r3, r28, 0x14
/* 80C889C8  4B 3F 04 A1 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_80C889CC:
/* 80C889CC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80C889D0  60 00 00 08 */	ori r0, r0, 8
/* 80C889D4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80C889D8:
/* 80C889D8  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C889DC  3C 80 80 C9 */	lis r4, d_a_obj_lv8Lift__stringBase0@ha /* 0x80C89FFC@ha */
/* 80C889E0  38 84 9F FC */	addi r4, r4, d_a_obj_lv8Lift__stringBase0@l /* 0x80C89FFC@l */
/* 80C889E4  4B 3A 44 D9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C889E8  7C 7E 1B 78 */	mr r30, r3
/* 80C889EC  2C 1E 00 04 */	cmpwi r30, 4
/* 80C889F0  40 82 02 38 */	bne lbl_80C88C28
/* 80C889F4  7F A3 EB 78 */	mr r3, r29
/* 80C889F8  3C 80 80 C9 */	lis r4, d_a_obj_lv8Lift__stringBase0@ha /* 0x80C89FFC@ha */
/* 80C889FC  38 84 9F FC */	addi r4, r4, d_a_obj_lv8Lift__stringBase0@l /* 0x80C89FFC@l */
/* 80C88A00  38 A0 00 0B */	li r5, 0xb
/* 80C88A04  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C88A08  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C88A0C  38 E0 0D 40 */	li r7, 0xd40
/* 80C88A10  39 00 00 00 */	li r8, 0
/* 80C88A14  4B 3E FD A9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C88A18  2C 03 00 05 */	cmpwi r3, 5
/* 80C88A1C  40 82 00 0C */	bne lbl_80C88A28
/* 80C88A20  38 60 00 05 */	li r3, 5
/* 80C88A24  48 00 02 08 */	b lbl_80C88C2C
lbl_80C88A28:
/* 80C88A28  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 80C88A2C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C88A30  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C88A34  4B 3E D5 25 */	bl SetWall__12dBgS_AcchCirFff
/* 80C88A38  38 00 00 00 */	li r0, 0
/* 80C88A3C  90 01 00 08 */	stw r0, 8(r1)
/* 80C88A40  38 7D 06 2C */	addi r3, r29, 0x62c
/* 80C88A44  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C88A48  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80C88A4C  7F A6 EB 78 */	mr r6, r29
/* 80C88A50  38 E0 00 01 */	li r7, 1
/* 80C88A54  39 1D 05 EC */	addi r8, r29, 0x5ec
/* 80C88A58  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80C88A5C  39 40 00 00 */	li r10, 0
/* 80C88A60  4B 3E D7 E9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C88A64  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C88A68  98 1D 05 C6 */	stb r0, 0x5c6(r29)
/* 80C88A6C  88 7D 05 C6 */	lbz r3, 0x5c6(r29)
/* 80C88A70  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C88A74  7C 04 07 74 */	extsb r4, r0
/* 80C88A78  4B 3C 8D 75 */	bl dPath_GetRoomPath__Fii
/* 80C88A7C  28 03 00 00 */	cmplwi r3, 0
/* 80C88A80  40 82 00 0C */	bne lbl_80C88A8C
/* 80C88A84  38 60 00 00 */	li r3, 0
/* 80C88A88  48 00 01 A4 */	b lbl_80C88C2C
lbl_80C88A8C:
/* 80C88A8C  80 63 00 08 */	lwz r3, 8(r3)
/* 80C88A90  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C88A94  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80C88A98  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C88A9C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C88AA0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C88AA4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80C88AA8  38 00 00 01 */	li r0, 1
/* 80C88AAC  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 80C88AB0  38 00 00 00 */	li r0, 0
/* 80C88AB4  B0 1D 05 C8 */	sth r0, 0x5c8(r29)
/* 80C88AB8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C88ABC  54 00 D6 BA */	rlwinm r0, r0, 0x1a, 0x1a, 0x1d
/* 80C88AC0  38 7F 00 04 */	addi r3, r31, 4
/* 80C88AC4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C88AC8  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 80C88ACC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C88AD0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80C88AD4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C88AD8  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 80C88ADC  98 1D 05 E9 */	stb r0, 0x5e9(r29)
/* 80C88AE0  7F A3 EB 78 */	mr r3, r29
/* 80C88AE4  48 00 02 89 */	bl lightSet__10daL8Lift_cFv
/* 80C88AE8  38 80 00 00 */	li r4, 0
/* 80C88AEC  98 9D 08 0D */	stb r4, 0x80d(r29)
/* 80C88AF0  38 60 00 01 */	li r3, 1
/* 80C88AF4  98 7D 08 08 */	stb r3, 0x808(r29)
/* 80C88AF8  88 1D 05 E9 */	lbz r0, 0x5e9(r29)
/* 80C88AFC  28 00 00 FF */	cmplwi r0, 0xff
/* 80C88B00  40 82 00 48 */	bne lbl_80C88B48
/* 80C88B04  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 80C88B08  C8 3F 00 58 */	lfd f1, 0x58(r31)
/* 80C88B0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C88B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88B14  3C 00 43 30 */	lis r0, 0x4330
/* 80C88B18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C88B1C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C88B20  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C88B24  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C88B28  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C88B2C  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 80C88B30  98 7D 08 0D */	stb r3, 0x80d(r29)
/* 80C88B34  38 7D 08 10 */	addi r3, r29, 0x810
/* 80C88B38  4B 51 EC 59 */	bl dKy_plight_set__FP15LIGHT_INFLUENCE
/* 80C88B3C  7F A3 EB 78 */	mr r3, r29
/* 80C88B40  48 00 0B 89 */	bl init_modeWaitInit__10daL8Lift_cFv
/* 80C88B44  48 00 00 68 */	b lbl_80C88BAC
lbl_80C88B48:
/* 80C88B48  98 9D 08 0C */	stb r4, 0x80c(r29)
/* 80C88B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C88B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C88B54  88 9D 05 E9 */	lbz r4, 0x5e9(r29)
/* 80C88B58  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C88B5C  7C 05 07 74 */	extsb r5, r0
/* 80C88B60  4B 3A C8 01 */	bl isSwitch__10dSv_info_cCFii
/* 80C88B64  98 7D 05 EA */	stb r3, 0x5ea(r29)
/* 80C88B68  88 1D 05 EA */	lbz r0, 0x5ea(r29)
/* 80C88B6C  28 00 00 00 */	cmplwi r0, 0
/* 80C88B70  41 82 00 10 */	beq lbl_80C88B80
/* 80C88B74  7F A3 EB 78 */	mr r3, r29
/* 80C88B78  48 00 0B F9 */	bl init_modeOnAnm__10daL8Lift_cFv
/* 80C88B7C  48 00 00 30 */	b lbl_80C88BAC
lbl_80C88B80:
/* 80C88B80  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 80C88B84  28 04 00 00 */	cmplwi r4, 0
/* 80C88B88  41 82 00 14 */	beq lbl_80C88B9C
/* 80C88B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C88B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C88B94  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C88B98  4B 3E B6 B9 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C88B9C:
/* 80C88B9C  38 00 00 00 */	li r0, 0
/* 80C88BA0  98 1D 08 08 */	stb r0, 0x808(r29)
/* 80C88BA4  7F A3 EB 78 */	mr r3, r29
/* 80C88BA8  48 00 0B 79 */	bl init_modeMoveWait__10daL8Lift_cFv
lbl_80C88BAC:
/* 80C88BAC  7F A3 EB 78 */	mr r3, r29
/* 80C88BB0  4B FF FC 29 */	bl setBaseMtx__10daL8Lift_cFv
/* 80C88BB4  3C 60 80 C9 */	lis r3, rideCallBack__10daL8Lift_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80C88DBC@ha */
/* 80C88BB8  38 03 8D BC */	addi r0, r3, rideCallBack__10daL8Lift_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80C88DBC@l */
/* 80C88BBC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80C88BC0  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C88BC4  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C88BC8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C88BCC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80C88BD0  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C88BD4  80 83 00 04 */	lwz r4, 4(r3)
/* 80C88BD8  7F A3 EB 78 */	mr r3, r29
/* 80C88BDC  4B 39 19 9D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C88BE0  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80C88BE4  80 63 00 04 */	lwz r3, 4(r3)
/* 80C88BE8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80C88BEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C88BF0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80C88BF4  38 80 00 01 */	li r4, 1
/* 80C88BF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80C88BFC  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80C88C00  7D 89 03 A6 */	mtctr r12
/* 80C88C04  4E 80 04 21 */	bctrl 
/* 80C88C08  3C 80 80 C9 */	lis r4, l_HIO@ha /* 0x80C8A1F4@ha */
/* 80C88C0C  38 84 A1 F4 */	addi r4, r4, l_HIO@l /* 0x80C8A1F4@l */
/* 80C88C10  88 04 00 07 */	lbz r0, 7(r4)
/* 80C88C14  98 03 00 00 */	stb r0, 0(r3)
/* 80C88C18  88 04 00 08 */	lbz r0, 8(r4)
/* 80C88C1C  98 03 00 01 */	stb r0, 1(r3)
/* 80C88C20  88 04 00 09 */	lbz r0, 9(r4)
/* 80C88C24  98 03 00 02 */	stb r0, 2(r3)
lbl_80C88C28:
/* 80C88C28  7F C3 F3 78 */	mr r3, r30
lbl_80C88C2C:
/* 80C88C2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C88C30  4B 6D 95 F5 */	bl _restgpr_28
/* 80C88C34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C88C38  7C 08 03 A6 */	mtlr r0
/* 80C88C3C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C88C40  4E 80 00 20 */	blr 
