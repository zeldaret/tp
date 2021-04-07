lbl_80834884:
/* 80834884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80834888  7C 08 02 A6 */	mflr r0
/* 8083488C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80834890  39 61 00 20 */	addi r11, r1, 0x20
/* 80834894  4B B2 D9 45 */	bl _savegpr_28
/* 80834898  7C 7D 1B 78 */	mr r29, r3
/* 8083489C  3C 80 80 83 */	lis r4, lit_3909@ha /* 0x808352D0@ha */
/* 808348A0  3B E4 52 D0 */	addi r31, r4, lit_3909@l /* 0x808352D0@l */
/* 808348A4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 808348A8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 808348AC  40 82 00 E8 */	bne lbl_80834994
/* 808348B0  7F A0 EB 79 */	or. r0, r29, r29
/* 808348B4  41 82 00 D4 */	beq lbl_80834988
/* 808348B8  7C 1E 03 78 */	mr r30, r0
/* 808348BC  4B 7E 42 A9 */	bl __ct__10fopAc_ac_cFv
/* 808348C0  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 808348C4  4B A8 C6 A1 */	bl __ct__15Z2CreatureEnemyFv
/* 808348C8  38 7E 06 74 */	addi r3, r30, 0x674
/* 808348CC  4B 84 15 E1 */	bl __ct__12dBgS_AcchCirFv
/* 808348D0  3B 9E 06 B4 */	addi r28, r30, 0x6b4
/* 808348D4  7F 83 E3 78 */	mr r3, r28
/* 808348D8  4B 84 17 C9 */	bl __ct__9dBgS_AcchFv
/* 808348DC  3C 60 80 83 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80835468@ha */
/* 808348E0  38 63 54 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80835468@l */
/* 808348E4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 808348E8  38 03 00 0C */	addi r0, r3, 0xc
/* 808348EC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 808348F0  38 03 00 18 */	addi r0, r3, 0x18
/* 808348F4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 808348F8  38 7C 00 14 */	addi r3, r28, 0x14
/* 808348FC  4B 84 45 6D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80834900  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80834904  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80834908  90 1E 08 A4 */	stw r0, 0x8a4(r30)
/* 8083490C  38 7E 08 A8 */	addi r3, r30, 0x8a8
/* 80834910  4B 84 EE 51 */	bl __ct__10dCcD_GSttsFv
/* 80834914  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80834918  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8083491C  90 7E 08 A4 */	stw r3, 0x8a4(r30)
/* 80834920  38 03 00 20 */	addi r0, r3, 0x20
/* 80834924  90 1E 08 A8 */	stw r0, 0x8a8(r30)
/* 80834928  3B 9E 08 C8 */	addi r28, r30, 0x8c8
/* 8083492C  7F 83 E3 78 */	mr r3, r28
/* 80834930  4B 84 F0 F9 */	bl __ct__12dCcD_GObjInfFv
/* 80834934  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80834938  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8083493C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80834940  3C 60 80 83 */	lis r3, __vt__8cM3dGAab@ha /* 0x8083545C@ha */
/* 80834944  38 03 54 5C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8083545C@l */
/* 80834948  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8083494C  3C 60 80 83 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80835450@ha */
/* 80834950  38 03 54 50 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80835450@l */
/* 80834954  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80834958  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8083495C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80834960  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80834964  38 03 00 58 */	addi r0, r3, 0x58
/* 80834968  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8083496C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80834970  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80834974  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80834978  38 03 00 2C */	addi r0, r3, 0x2c
/* 8083497C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80834980  38 03 00 84 */	addi r0, r3, 0x84
/* 80834984  90 1C 01 38 */	stw r0, 0x138(r28)
lbl_80834988:
/* 80834988  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8083498C  60 00 00 08 */	ori r0, r0, 8
/* 80834990  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80834994:
/* 80834994  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80834998  3C 80 80 83 */	lis r4, d_a_e_zs__stringBase0@ha /* 0x80835344@ha */
/* 8083499C  38 84 53 44 */	addi r4, r4, d_a_e_zs__stringBase0@l /* 0x80835344@l */
/* 808349A0  4B 7F 85 1D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 808349A4  7C 7E 1B 78 */	mr r30, r3
/* 808349A8  2C 1E 00 04 */	cmpwi r30, 4
/* 808349AC  40 82 01 E0 */	bne lbl_80834B8C
/* 808349B0  7F A3 EB 78 */	mr r3, r29
/* 808349B4  3C 80 80 83 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80834864@ha */
/* 808349B8  38 84 48 64 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80834864@l */
/* 808349BC  38 A0 0F C0 */	li r5, 0xfc0
/* 808349C0  4B 7E 5A F1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 808349C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 808349C8  40 82 00 0C */	bne lbl_808349D4
/* 808349CC  38 60 00 05 */	li r3, 5
/* 808349D0  48 00 01 C0 */	b lbl_80834B90
lbl_808349D4:
/* 808349D4  3C 60 80 83 */	lis r3, data_808354A0@ha /* 0x808354A0@ha */
/* 808349D8  8C 03 54 A0 */	lbzu r0, data_808354A0@l(r3)  /* 0x808354A0@l */
/* 808349DC  28 00 00 00 */	cmplwi r0, 0
/* 808349E0  40 82 00 20 */	bne lbl_80834A00
/* 808349E4  38 00 00 01 */	li r0, 1
/* 808349E8  98 03 00 00 */	stb r0, 0(r3)
/* 808349EC  98 1D 0A 28 */	stb r0, 0xa28(r29)
/* 808349F0  38 00 FF FF */	li r0, -1
/* 808349F4  3C 60 80 83 */	lis r3, l_HIO@ha /* 0x808354B0@ha */
/* 808349F8  38 63 54 B0 */	addi r3, r3, l_HIO@l /* 0x808354B0@l */
/* 808349FC  98 03 00 04 */	stb r0, 4(r3)
lbl_80834A00:
/* 80834A00  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80834A04  98 1D 06 72 */	stb r0, 0x672(r29)
/* 80834A08  88 1D 06 72 */	lbz r0, 0x672(r29)
/* 80834A0C  28 00 00 FF */	cmplwi r0, 0xff
/* 80834A10  40 82 00 0C */	bne lbl_80834A1C
/* 80834A14  38 00 00 00 */	li r0, 0
/* 80834A18  98 1D 06 72 */	stb r0, 0x672(r29)
lbl_80834A1C:
/* 80834A1C  38 00 00 04 */	li r0, 4
/* 80834A20  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80834A24  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80834A28  80 63 00 04 */	lwz r3, 4(r3)
/* 80834A2C  38 03 00 24 */	addi r0, r3, 0x24
/* 80834A30  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80834A34  7F A3 EB 78 */	mr r3, r29
/* 80834A38  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80834A3C  FC 40 08 90 */	fmr f2, f1
/* 80834A40  FC 60 08 90 */	fmr f3, f1
/* 80834A44  4B 7E 5A E5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80834A48  7F A3 EB 78 */	mr r3, r29
/* 80834A4C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80834A50  FC 40 08 90 */	fmr f2, f1
/* 80834A54  FC 60 08 90 */	fmr f3, f1
/* 80834A58  4B 7E 5A E1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80834A5C  38 00 00 00 */	li r0, 0
/* 80834A60  90 01 00 08 */	stw r0, 8(r1)
/* 80834A64  38 7D 06 B4 */	addi r3, r29, 0x6b4
/* 80834A68  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80834A6C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80834A70  7F A6 EB 78 */	mr r6, r29
/* 80834A74  38 E0 00 01 */	li r7, 1
/* 80834A78  39 1D 06 74 */	addi r8, r29, 0x674
/* 80834A7C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80834A80  39 40 00 00 */	li r10, 0
/* 80834A84  4B 84 17 C5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80834A88  38 7D 06 74 */	addi r3, r29, 0x674
/* 80834A8C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80834A90  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80834A94  4B 84 14 C5 */	bl SetWall__12dBgS_AcchCirFff
/* 80834A98  38 7D 08 8C */	addi r3, r29, 0x88c
/* 80834A9C  38 80 00 FF */	li r4, 0xff
/* 80834AA0  38 A0 00 00 */	li r5, 0
/* 80834AA4  7F A6 EB 78 */	mr r6, r29
/* 80834AA8  4B 84 ED B9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80834AAC  38 00 00 14 */	li r0, 0x14
/* 80834AB0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80834AB4  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 80834AB8  38 00 00 05 */	li r0, 5
/* 80834ABC  98 1D 06 71 */	stb r0, 0x671(r29)
/* 80834AC0  38 7D 08 C8 */	addi r3, r29, 0x8c8
/* 80834AC4  3C 80 80 83 */	lis r4, data_80835384@ha /* 0x80835384@ha */
/* 80834AC8  38 84 53 84 */	addi r4, r4, data_80835384@l /* 0x80835384@l */
/* 80834ACC  4B 84 FD E9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80834AD0  38 1D 08 8C */	addi r0, r29, 0x88c
/* 80834AD4  90 1D 09 0C */	stw r0, 0x90c(r29)
/* 80834AD8  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80834ADC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80834AE0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80834AE4  38 C0 00 03 */	li r6, 3
/* 80834AE8  38 E0 00 01 */	li r7, 1
/* 80834AEC  4B A8 C5 A9 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80834AF0  38 1D 05 B8 */	addi r0, r29, 0x5b8
/* 80834AF4  90 1D 0A 0C */	stw r0, 0xa0c(r29)
/* 80834AF8  38 00 00 0A */	li r0, 0xa
/* 80834AFC  98 1D 0A 22 */	stb r0, 0xa22(r29)
/* 80834B00  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80834B04  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80834B08  80 9D 05 B4 */	lwz r4, 0x5b4(r29)
/* 80834B0C  38 60 00 00 */	li r3, 0
/* 80834B10  B0 64 00 12 */	sth r3, 0x12(r4)
/* 80834B14  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80834B18  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80834B1C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 80834B20  60 00 02 00 */	ori r0, r0, 0x200
/* 80834B24  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 80834B28  88 1D 06 72 */	lbz r0, 0x672(r29)
/* 80834B2C  28 00 00 00 */	cmplwi r0, 0
/* 80834B30  40 82 00 18 */	bne lbl_80834B48
/* 80834B34  7F A3 EB 78 */	mr r3, r29
/* 80834B38  38 80 00 00 */	li r4, 0
/* 80834B3C  38 A0 00 00 */	li r5, 0
/* 80834B40  4B FF E7 51 */	bl setActionMode__8daE_ZS_cFii
/* 80834B44  48 00 00 18 */	b lbl_80834B5C
lbl_80834B48:
/* 80834B48  98 7D 06 73 */	stb r3, 0x673(r29)
/* 80834B4C  7F A3 EB 78 */	mr r3, r29
/* 80834B50  38 80 00 00 */	li r4, 0
/* 80834B54  38 A0 00 0A */	li r5, 0xa
/* 80834B58  4B FF E7 39 */	bl setActionMode__8daE_ZS_cFii
lbl_80834B5C:
/* 80834B5C  38 00 00 00 */	li r0, 0
/* 80834B60  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80834B64  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80834B68  98 1D 05 46 */	stb r0, 0x546(r29)
/* 80834B6C  7F A3 EB 78 */	mr r3, r29
/* 80834B70  4B FF FB 4D */	bl daE_ZS_Execute__FP8daE_ZS_c
/* 80834B74  80 1D 08 E0 */	lwz r0, 0x8e0(r29)
/* 80834B78  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80834B7C  90 1D 08 E0 */	stw r0, 0x8e0(r29)
/* 80834B80  80 1D 08 F4 */	lwz r0, 0x8f4(r29)
/* 80834B84  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80834B88  90 1D 08 F4 */	stw r0, 0x8f4(r29)
lbl_80834B8C:
/* 80834B8C  7F C3 F3 78 */	mr r3, r30
lbl_80834B90:
/* 80834B90  39 61 00 20 */	addi r11, r1, 0x20
/* 80834B94  4B B2 D6 91 */	bl _restgpr_28
/* 80834B98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80834B9C  7C 08 03 A6 */	mtlr r0
/* 80834BA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80834BA4  4E 80 00 20 */	blr 
