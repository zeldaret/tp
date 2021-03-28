lbl_80BD28C0:
/* 80BD28C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD28C4  7C 08 02 A6 */	mflr r0
/* 80BD28C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD28CC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD28D0  4B 78 F9 08 */	b _savegpr_28
/* 80BD28D4  7C 7D 1B 78 */	mr r29, r3
/* 80BD28D8  3C 80 80 BD */	lis r4, ccCylSrc@ha
/* 80BD28DC  3B E4 30 C0 */	addi r31, r4, ccCylSrc@l
/* 80BD28E0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BD28E4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BD28E8  40 82 01 34 */	bne lbl_80BD2A1C
/* 80BD28EC  7F A0 EB 79 */	or. r0, r29, r29
/* 80BD28F0  41 82 01 20 */	beq lbl_80BD2A10
/* 80BD28F4  7C 1E 03 78 */	mr r30, r0
/* 80BD28F8  4B 4A 5D 2C */	b __ct__16dBgS_MoveBgActorFv
/* 80BD28FC  3C 60 80 BD */	lis r3, __vt__14daObjCRVGATE_c@ha
/* 80BD2900  38 03 32 90 */	addi r0, r3, __vt__14daObjCRVGATE_c@l
/* 80BD2904  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BD2908  38 7E 06 1C */	addi r3, r30, 0x61c
/* 80BD290C  3C 80 80 BD */	lis r4, __ct__4cXyzFv@ha
/* 80BD2910  38 84 2E 7C */	addi r4, r4, __ct__4cXyzFv@l
/* 80BD2914  3C A0 80 BD */	lis r5, __dt__4cXyzFv@ha
/* 80BD2918  38 A5 08 44 */	addi r5, r5, __dt__4cXyzFv@l
/* 80BD291C  38 C0 00 0C */	li r6, 0xc
/* 80BD2920  38 E0 00 03 */	li r7, 3
/* 80BD2924  4B 78 F4 3C */	b __construct_array
/* 80BD2928  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80BD292C  4B 6E BF 18 */	b __ct__16Z2SoundObjSimpleFv
/* 80BD2930  38 7E 06 84 */	addi r3, r30, 0x684
/* 80BD2934  4B 4A 35 78 */	b __ct__12dBgS_AcchCirFv
/* 80BD2938  3B 9E 06 C4 */	addi r28, r30, 0x6c4
/* 80BD293C  7F 83 E3 78 */	mr r3, r28
/* 80BD2940  4B 4A 37 60 */	b __ct__9dBgS_AcchFv
/* 80BD2944  3C 60 80 BD */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BD2948  38 63 32 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BD294C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80BD2950  38 03 00 0C */	addi r0, r3, 0xc
/* 80BD2954  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80BD2958  38 03 00 18 */	addi r0, r3, 0x18
/* 80BD295C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80BD2960  38 7C 00 14 */	addi r3, r28, 0x14
/* 80BD2964  4B 4A 65 04 */	b SetObj__16dBgS_PolyPassChkFv
/* 80BD2968  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BD296C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BD2970  90 1E 08 B4 */	stw r0, 0x8b4(r30)
/* 80BD2974  38 7E 08 B8 */	addi r3, r30, 0x8b8
/* 80BD2978  4B 4B 0D E8 */	b __ct__10dCcD_GSttsFv
/* 80BD297C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BD2980  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BD2984  90 7E 08 B4 */	stw r3, 0x8b4(r30)
/* 80BD2988  38 03 00 20 */	addi r0, r3, 0x20
/* 80BD298C  90 1E 08 B8 */	stw r0, 0x8b8(r30)
/* 80BD2990  38 7E 08 D8 */	addi r3, r30, 0x8d8
/* 80BD2994  3C 80 80 BD */	lis r4, __ct__8dCcD_SphFv@ha
/* 80BD2998  38 84 2D 40 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80BD299C  3C A0 80 BD */	lis r5, __dt__8dCcD_SphFv@ha
/* 80BD29A0  38 A5 2C 74 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80BD29A4  38 C0 01 38 */	li r6, 0x138
/* 80BD29A8  38 E0 00 03 */	li r7, 3
/* 80BD29AC  4B 78 F3 B4 */	b __construct_array
/* 80BD29B0  3B 9E 0C 80 */	addi r28, r30, 0xc80
/* 80BD29B4  7F 83 E3 78 */	mr r3, r28
/* 80BD29B8  4B 4B 10 70 */	b __ct__12dCcD_GObjInfFv
/* 80BD29BC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BD29C0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BD29C4  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BD29C8  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha
/* 80BD29CC  38 03 32 60 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BD29D0  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80BD29D4  3C 60 80 BD */	lis r3, __vt__8cM3dGCyl@ha
/* 80BD29D8  38 03 32 54 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BD29DC  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80BD29E0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BD29E4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BD29E8  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80BD29EC  38 03 00 58 */	addi r0, r3, 0x58
/* 80BD29F0  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80BD29F4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BD29F8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BD29FC  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80BD2A00  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BD2A04  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BD2A08  38 03 00 84 */	addi r0, r3, 0x84
/* 80BD2A0C  90 1C 01 38 */	stw r0, 0x138(r28)
lbl_80BD2A10:
/* 80BD2A10  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80BD2A14  60 00 00 08 */	ori r0, r0, 8
/* 80BD2A18  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80BD2A1C:
/* 80BD2A1C  38 7D 06 7C */	addi r3, r29, 0x67c
/* 80BD2A20  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BD2A24  38 84 31 F4 */	addi r4, r4, l_arcName@l
/* 80BD2A28  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD2A2C  4B 45 A4 90 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BD2A30  7C 7E 1B 78 */	mr r30, r3
/* 80BD2A34  2C 1E 00 04 */	cmpwi r30, 4
/* 80BD2A38  40 82 01 90 */	bne lbl_80BD2BC8
/* 80BD2A3C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80BD2A40  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80BD2A44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD2A48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD2A4C  3C 63 00 02 */	addis r3, r3, 2
/* 80BD2A50  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BD2A54  38 84 31 F4 */	addi r4, r4, l_arcName@l
/* 80BD2A58  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD2A5C  3C A0 80 BD */	lis r5, stringBase0@ha
/* 80BD2A60  38 A5 31 BC */	addi r5, r5, stringBase0@l
/* 80BD2A64  38 A5 00 27 */	addi r5, r5, 0x27
/* 80BD2A68  38 63 C2 F8 */	addi r3, r3, -15624
/* 80BD2A6C  4B 46 9C 4C */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80BD2A70  7C 65 1B 78 */	mr r5, r3
/* 80BD2A74  7F A3 EB 78 */	mr r3, r29
/* 80BD2A78  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BD2A7C  38 84 31 F4 */	addi r4, r4, l_arcName@l
/* 80BD2A80  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD2A84  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BD2A88  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BD2A8C  38 E0 14 80 */	li r7, 0x1480
/* 80BD2A90  39 00 00 00 */	li r8, 0
/* 80BD2A94  4B 4A 5D 28 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BD2A98  7C 7E 1B 78 */	mr r30, r3
/* 80BD2A9C  2C 1E 00 05 */	cmpwi r30, 5
/* 80BD2AA0  40 82 00 08 */	bne lbl_80BD2AA8
/* 80BD2AA4  48 00 01 28 */	b lbl_80BD2BCC
lbl_80BD2AA8:
/* 80BD2AA8  38 00 00 00 */	li r0, 0
/* 80BD2AAC  90 01 00 08 */	stw r0, 8(r1)
/* 80BD2AB0  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 80BD2AB4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BD2AB8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80BD2ABC  7F A6 EB 78 */	mr r6, r29
/* 80BD2AC0  38 E0 00 01 */	li r7, 1
/* 80BD2AC4  39 1D 06 84 */	addi r8, r29, 0x684
/* 80BD2AC8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80BD2ACC  39 40 00 00 */	li r10, 0
/* 80BD2AD0  4B 4A 37 78 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BD2AD4  7F A3 EB 78 */	mr r3, r29
/* 80BD2AD8  4B FF D8 C1 */	bl initCcCylinder__14daObjCRVGATE_cFv
/* 80BD2ADC  80 7D 06 74 */	lwz r3, 0x674(r29)
/* 80BD2AE0  38 03 00 24 */	addi r0, r3, 0x24
/* 80BD2AE4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BD2AE8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BD2AEC  98 1D 05 AC */	stb r0, 0x5ac(r29)
/* 80BD2AF0  7F A3 EB 78 */	mr r3, r29
/* 80BD2AF4  4B FF FC 65 */	bl SetDoor__14daObjCRVGATE_cFv
/* 80BD2AF8  38 80 00 00 */	li r4, 0
/* 80BD2AFC  98 9D 05 AA */	stb r4, 0x5aa(r29)
/* 80BD2B00  90 9D 05 A0 */	stw r4, 0x5a0(r29)
/* 80BD2B04  38 00 00 01 */	li r0, 1
/* 80BD2B08  98 1D 05 AF */	stb r0, 0x5af(r29)
/* 80BD2B0C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80BD2B10  D0 1D 05 EC */	stfs f0, 0x5ec(r29)
/* 80BD2B14  D0 1D 05 F0 */	stfs f0, 0x5f0(r29)
/* 80BD2B18  D0 1D 05 F4 */	stfs f0, 0x5f4(r29)
/* 80BD2B1C  B0 9D 06 46 */	sth r4, 0x646(r29)
/* 80BD2B20  C0 1D 05 E0 */	lfs f0, 0x5e0(r29)
/* 80BD2B24  D0 1D 05 F8 */	stfs f0, 0x5f8(r29)
/* 80BD2B28  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 80BD2B2C  D0 1D 05 FC */	stfs f0, 0x5fc(r29)
/* 80BD2B30  C0 1D 05 E8 */	lfs f0, 0x5e8(r29)
/* 80BD2B34  D0 1D 06 00 */	stfs f0, 0x600(r29)
/* 80BD2B38  38 00 00 03 */	li r0, 3
/* 80BD2B3C  7C 09 03 A6 */	mtctr r0
lbl_80BD2B40:
/* 80BD2B40  38 64 09 74 */	addi r3, r4, 0x974
/* 80BD2B44  7C 1D 18 2E */	lwzx r0, r29, r3
/* 80BD2B48  60 00 00 01 */	ori r0, r0, 1
/* 80BD2B4C  7C 1D 19 2E */	stwx r0, r29, r3
/* 80BD2B50  38 84 01 38 */	addi r4, r4, 0x138
/* 80BD2B54  42 00 FF EC */	bdnz lbl_80BD2B40
/* 80BD2B58  7F A3 EB 78 */	mr r3, r29
/* 80BD2B5C  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80BD2B60  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80BD2B64  C0 7F 00 EC */	lfs f3, 0xec(r31)
/* 80BD2B68  C0 9F 00 88 */	lfs f4, 0x88(r31)
/* 80BD2B6C  FC A0 20 90 */	fmr f5, f4
/* 80BD2B70  C0 DF 00 78 */	lfs f6, 0x78(r31)
/* 80BD2B74  4B 44 79 D4 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BD2B78  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BD2B7C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80BD2B80  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BD2B84  EC 21 00 2A */	fadds f1, f1, f0
/* 80BD2B88  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BD2B8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BD2B90  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BD2B94  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BD2B98  38 61 00 10 */	addi r3, r1, 0x10
/* 80BD2B9C  4B 44 B1 20 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80BD2BA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD2BA4  41 82 00 10 */	beq lbl_80BD2BB4
/* 80BD2BA8  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80BD2BAC  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80BD2BB0  D0 1D 06 18 */	stfs f0, 0x618(r29)
lbl_80BD2BB4:
/* 80BD2BB4  38 00 00 00 */	li r0, 0
/* 80BD2BB8  98 1D 05 A4 */	stb r0, 0x5a4(r29)
/* 80BD2BBC  98 1D 05 A5 */	stb r0, 0x5a5(r29)
/* 80BD2BC0  7F A3 EB 78 */	mr r3, r29
/* 80BD2BC4  4B FF FA 8D */	bl daObjCRVGATE_Execute__FP14daObjCRVGATE_c
lbl_80BD2BC8:
/* 80BD2BC8  7F C3 F3 78 */	mr r3, r30
lbl_80BD2BCC:
/* 80BD2BCC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD2BD0  4B 78 F6 54 */	b _restgpr_28
/* 80BD2BD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD2BD8  7C 08 03 A6 */	mtlr r0
/* 80BD2BDC  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD2BE0  4E 80 00 20 */	blr 
