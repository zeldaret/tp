lbl_8057842C:
/* 8057842C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80578430  7C 08 02 A6 */	mflr r0
/* 80578434  90 01 00 34 */	stw r0, 0x34(r1)
/* 80578438  39 61 00 30 */	addi r11, r1, 0x30
/* 8057843C  4B DE 9D 9C */	b _savegpr_28
/* 80578440  7C 7C 1B 78 */	mr r28, r3
/* 80578444  3C 80 80 58 */	lis r4, ccCylSrc@ha
/* 80578448  3B E4 8A 88 */	addi r31, r4, ccCylSrc@l
/* 8057844C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80578450  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80578454  40 82 00 D4 */	bne lbl_80578528
/* 80578458  7F 80 E3 79 */	or. r0, r28, r28
/* 8057845C  41 82 00 C0 */	beq lbl_8057851C
/* 80578460  7C 1D 03 78 */	mr r29, r0
/* 80578464  4B B0 01 C0 */	b __ct__16dBgS_MoveBgActorFv
/* 80578468  3C 60 80 58 */	lis r3, __vt__13daObjBHASHI_c@ha
/* 8057846C  38 03 8C 5C */	addi r0, r3, __vt__13daObjBHASHI_c@l
/* 80578470  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80578474  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80578478  3C 80 80 57 */	lis r4, __ct__7Hahen_cFv@ha
/* 8057847C  38 84 77 94 */	addi r4, r4, __ct__7Hahen_cFv@l
/* 80578480  3C A0 80 58 */	lis r5, __dt__7Hahen_cFv@ha
/* 80578484  38 A5 87 44 */	addi r5, r5, __dt__7Hahen_cFv@l
/* 80578488  38 C0 00 34 */	li r6, 0x34
/* 8057848C  38 E0 00 3C */	li r7, 0x3c
/* 80578490  4B DE 98 D0 */	b __construct_array
/* 80578494  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80578498  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8057849C  90 1D 13 00 */	stw r0, 0x1300(r29)
/* 805784A0  38 7D 13 04 */	addi r3, r29, 0x1304
/* 805784A4  4B B0 B2 BC */	b __ct__10dCcD_GSttsFv
/* 805784A8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805784AC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805784B0  90 7D 13 00 */	stw r3, 0x1300(r29)
/* 805784B4  38 03 00 20 */	addi r0, r3, 0x20
/* 805784B8  90 1D 13 04 */	stw r0, 0x1304(r29)
/* 805784BC  3B BD 13 24 */	addi r29, r29, 0x1324
/* 805784C0  7F A3 EB 78 */	mr r3, r29
/* 805784C4  4B B0 B5 64 */	b __ct__12dCcD_GObjInfFv
/* 805784C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805784CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805784D0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 805784D4  3C 60 80 58 */	lis r3, __vt__8cM3dGAab@ha
/* 805784D8  38 03 8C 50 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805784DC  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 805784E0  3C 60 80 58 */	lis r3, __vt__8cM3dGCyl@ha
/* 805784E4  38 03 8C 44 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 805784E8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 805784EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 805784F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 805784F4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 805784F8  38 03 00 58 */	addi r0, r3, 0x58
/* 805784FC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80578500  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80578504  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80578508  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8057850C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80578510  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80578514  38 03 00 84 */	addi r0, r3, 0x84
/* 80578518  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_8057851C:
/* 8057851C  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80578520  60 00 00 08 */	ori r0, r0, 8
/* 80578524  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80578528:
/* 80578528  38 7C 12 E0 */	addi r3, r28, 0x12e0
/* 8057852C  3C 80 80 58 */	lis r4, l_arcName@ha
/* 80578530  38 84 8B F0 */	addi r4, r4, l_arcName@l
/* 80578534  80 84 00 00 */	lwz r4, 0(r4)
/* 80578538  4B AB 49 84 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8057853C  7C 7D 1B 78 */	mr r29, r3
/* 80578540  2C 1D 00 04 */	cmpwi r29, 4
/* 80578544  40 82 01 54 */	bne lbl_80578698
/* 80578548  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8057854C  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80578550  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80578554  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80578558  3F C3 00 02 */	addis r30, r3, 2
/* 8057855C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80578560  7F C3 F3 78 */	mr r3, r30
/* 80578564  3C 80 80 58 */	lis r4, l_arcName@ha
/* 80578568  38 84 8B F0 */	addi r4, r4, l_arcName@l
/* 8057856C  80 84 00 00 */	lwz r4, 0(r4)
/* 80578570  3C A0 80 58 */	lis r5, stringBase0@ha
/* 80578574  38 A5 8B A8 */	addi r5, r5, stringBase0@l
/* 80578578  38 A5 00 34 */	addi r5, r5, 0x34
/* 8057857C  4B AC 41 3C */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80578580  7C 65 1B 78 */	mr r5, r3
/* 80578584  7F 83 E3 78 */	mr r3, r28
/* 80578588  3C 80 80 58 */	lis r4, l_arcName@ha
/* 8057858C  38 84 8B F0 */	addi r4, r4, l_arcName@l
/* 80578590  80 84 00 00 */	lwz r4, 0(r4)
/* 80578594  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80578598  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 8057859C  3C E0 00 01 */	lis r7, 0x0001 /* 0x00008DA0@ha */
/* 805785A0  38 E7 8D A0 */	addi r7, r7, 0x8DA0 /* 0x00008DA0@l */
/* 805785A4  39 00 00 00 */	li r8, 0
/* 805785A8  4B B0 02 14 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 805785AC  7C 7D 1B 78 */	mr r29, r3
/* 805785B0  2C 1D 00 05 */	cmpwi r29, 5
/* 805785B4  40 82 00 08 */	bne lbl_805785BC
/* 805785B8  48 00 00 E4 */	b lbl_8057869C
lbl_805785BC:
/* 805785BC  7F 83 E3 78 */	mr r3, r28
/* 805785C0  4B FF E4 99 */	bl initCcCylinder__13daObjBHASHI_cFv
/* 805785C4  38 00 00 00 */	li r0, 0
/* 805785C8  90 1C 05 A4 */	stw r0, 0x5a4(r28)
/* 805785CC  80 7C 11 EC */	lwz r3, 0x11ec(r28)
/* 805785D0  38 03 00 24 */	addi r0, r3, 0x24
/* 805785D4  90 1C 05 04 */	stw r0, 0x504(r28)
/* 805785D8  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 805785DC  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 805785E0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805785E4  EC 21 00 2A */	fadds f1, f1, f0
/* 805785E8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805785EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805785F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805785F4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805785F8  38 61 00 08 */	addi r3, r1, 8
/* 805785FC  4B AA 56 C0 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80578600  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80578604  41 82 00 20 */	beq lbl_80578624
/* 80578608  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 8057860C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80578610  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80578614  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80578618  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8057861C  EC 01 00 2A */	fadds f0, f1, f0
/* 80578620  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
lbl_80578624:
/* 80578624  7F 83 E3 78 */	mr r3, r28
/* 80578628  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 8057862C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80578630  FC 60 08 90 */	fmr f3, f1
/* 80578634  C0 9F 01 0C */	lfs f4, 0x10c(r31)
/* 80578638  C0 BF 01 10 */	lfs f5, 0x110(r31)
/* 8057863C  FC C0 20 90 */	fmr f6, f4
/* 80578640  4B AA 1F 08 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80578644  3C 60 80 58 */	lis r3, l_arcName@ha
/* 80578648  38 63 8B F0 */	addi r3, r3, l_arcName@l
/* 8057864C  80 63 00 00 */	lwz r3, 0(r3)
/* 80578650  3C 80 80 58 */	lis r4, stringBase0@ha
/* 80578654  38 84 8B A8 */	addi r4, r4, stringBase0@l
/* 80578658  38 84 00 1B */	addi r4, r4, 0x1b
/* 8057865C  7F C5 F3 78 */	mr r5, r30
/* 80578660  38 C0 00 80 */	li r6, 0x80
/* 80578664  4B AC 3D 18 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80578668  7C 64 1B 78 */	mr r4, r3
/* 8057866C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80578670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80578674  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80578678  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8057867C  7C 05 07 74 */	extsb r5, r0
/* 80578680  38 C0 00 00 */	li r6, 0
/* 80578684  4B AB 44 6C */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80578688  38 00 00 01 */	li r0, 1
/* 8057868C  98 1C 14 61 */	stb r0, 0x1461(r28)
/* 80578690  7F 83 E3 78 */	mr r3, r28
/* 80578694  4B FF FC 7D */	bl daObjBHASHI_Execute__FP13daObjBHASHI_c
lbl_80578698:
/* 80578698  7F A3 EB 78 */	mr r3, r29
lbl_8057869C:
/* 8057869C  39 61 00 30 */	addi r11, r1, 0x30
/* 805786A0  4B DE 9B 84 */	b _restgpr_28
/* 805786A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805786A8  7C 08 03 A6 */	mtlr r0
/* 805786AC  38 21 00 30 */	addi r1, r1, 0x30
/* 805786B0  4E 80 00 20 */	blr 
