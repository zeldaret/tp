lbl_80D02584:
/* 80D02584  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D02588  7C 08 02 A6 */	mflr r0
/* 80D0258C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D02590  39 61 00 20 */	addi r11, r1, 0x20
/* 80D02594  4B 65 FC 45 */	bl _savegpr_28
/* 80D02598  7C 7D 1B 78 */	mr r29, r3
/* 80D0259C  3C 80 80 D0 */	lis r4, lit_3662@ha /* 0x80D03F90@ha */
/* 80D025A0  3B E4 3F 90 */	addi r31, r4, lit_3662@l /* 0x80D03F90@l */
/* 80D025A4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D025A8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D025AC  40 82 01 0C */	bne lbl_80D026B8
/* 80D025B0  7F A0 EB 79 */	or. r0, r29, r29
/* 80D025B4  41 82 00 F8 */	beq lbl_80D026AC
/* 80D025B8  7C 1E 03 78 */	mr r30, r0
/* 80D025BC  4B 37 60 69 */	bl __ct__16dBgS_MoveBgActorFv
/* 80D025C0  3C 60 80 D0 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80D041E0@ha */
/* 80D025C4  38 03 41 E0 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80D041E0@l */
/* 80D025C8  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80D025CC  93 DE 05 AC */	stw r30, 0x5ac(r30)
/* 80D025D0  38 00 00 00 */	li r0, 0
/* 80D025D4  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80D025D8  3C 60 80 D0 */	lis r3, __vt__10daSyRock_c@ha /* 0x80D041F8@ha */
/* 80D025DC  38 63 41 F8 */	addi r3, r3, __vt__10daSyRock_c@l /* 0x80D041F8@l */
/* 80D025E0  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80D025E4  38 03 00 28 */	addi r0, r3, 0x28
/* 80D025E8  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80D025EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D025F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D025F4  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80D025F8  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80D025FC  4B 38 11 65 */	bl __ct__10dCcD_GSttsFv
/* 80D02600  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D02604  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D02608  90 7E 05 E4 */	stw r3, 0x5e4(r30)
/* 80D0260C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D02610  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 80D02614  3B 9E 06 08 */	addi r28, r30, 0x608
/* 80D02618  7F 83 E3 78 */	mr r3, r28
/* 80D0261C  4B 38 14 0D */	bl __ct__12dCcD_GObjInfFv
/* 80D02620  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D02624  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D02628  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D0262C  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D041D4@ha */
/* 80D02630  38 03 41 D4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D041D4@l */
/* 80D02634  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80D02638  3C 60 80 D0 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D041C8@ha */
/* 80D0263C  38 03 41 C8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D041C8@l */
/* 80D02640  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D02644  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D02648  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D0264C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80D02650  38 03 00 58 */	addi r0, r3, 0x58
/* 80D02654  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D02658  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D0265C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D02660  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80D02664  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D02668  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80D0266C  38 03 00 84 */	addi r0, r3, 0x84
/* 80D02670  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80D02674  38 7E 07 7C */	addi r3, r30, 0x77c
/* 80D02678  4B 37 38 35 */	bl __ct__12dBgS_AcchCirFv
/* 80D0267C  3B 9E 07 BC */	addi r28, r30, 0x7bc
/* 80D02680  7F 83 E3 78 */	mr r3, r28
/* 80D02684  4B 37 3A 1D */	bl __ct__9dBgS_AcchFv
/* 80D02688  3C 60 80 D0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D041A4@ha */
/* 80D0268C  38 63 41 A4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D041A4@l */
/* 80D02690  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80D02694  38 03 00 0C */	addi r0, r3, 0xc
/* 80D02698  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80D0269C  38 03 00 18 */	addi r0, r3, 0x18
/* 80D026A0  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80D026A4  38 7C 00 14 */	addi r3, r28, 0x14
/* 80D026A8  4B 37 67 C1 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_80D026AC:
/* 80D026AC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D026B0  60 00 00 08 */	ori r0, r0, 8
/* 80D026B4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D026B8:
/* 80D026B8  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80D026BC  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80D026C0  2C 00 00 01 */	cmpwi r0, 1
/* 80D026C4  40 82 00 2C */	bne lbl_80D026F0
/* 80D026C8  3C 60 80 D0 */	lis r3, searchWaterPillar__10daSyRock_cFPvPv@ha /* 0x80D030A8@ha */
/* 80D026CC  38 63 30 A8 */	addi r3, r3, searchWaterPillar__10daSyRock_cFPvPv@l /* 0x80D030A8@l */
/* 80D026D0  7F A4 EB 78 */	mr r4, r29
/* 80D026D4  4B 31 71 25 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D026D8  90 7D 09 94 */	stw r3, 0x994(r29)
/* 80D026DC  80 1D 09 94 */	lwz r0, 0x994(r29)
/* 80D026E0  28 00 00 00 */	cmplwi r0, 0
/* 80D026E4  40 82 00 0C */	bne lbl_80D026F0
/* 80D026E8  38 60 00 00 */	li r3, 0
/* 80D026EC  48 00 02 2C */	b lbl_80D02918
lbl_80D026F0:
/* 80D026F0  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 80D026F4  3C 80 80 D0 */	lis r4, d_a_obj_syRock__stringBase0@ha /* 0x80D04030@ha */
/* 80D026F8  38 84 40 30 */	addi r4, r4, d_a_obj_syRock__stringBase0@l /* 0x80D04030@l */
/* 80D026FC  4B 32 A7 C1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D02700  7C 7E 1B 78 */	mr r30, r3
/* 80D02704  2C 1E 00 04 */	cmpwi r30, 4
/* 80D02708  40 82 02 0C */	bne lbl_80D02914
/* 80D0270C  7F A3 EB 78 */	mr r3, r29
/* 80D02710  3C 80 80 D0 */	lis r4, d_a_obj_syRock__stringBase0@ha /* 0x80D04030@ha */
/* 80D02714  38 84 40 30 */	addi r4, r4, d_a_obj_syRock__stringBase0@l /* 0x80D04030@l */
/* 80D02718  38 A0 00 08 */	li r5, 8
/* 80D0271C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80D02720  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80D02724  38 E0 21 00 */	li r7, 0x2100
/* 80D02728  39 00 00 00 */	li r8, 0
/* 80D0272C  4B 37 60 91 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D02730  2C 03 00 05 */	cmpwi r3, 5
/* 80D02734  40 82 00 0C */	bne lbl_80D02740
/* 80D02738  38 60 00 05 */	li r3, 5
/* 80D0273C  48 00 01 DC */	b lbl_80D02918
lbl_80D02740:
/* 80D02740  38 7D 07 7C */	addi r3, r29, 0x77c
/* 80D02744  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D02748  FC 40 08 90 */	fmr f2, f1
/* 80D0274C  4B 37 38 0D */	bl SetWall__12dBgS_AcchCirFff
/* 80D02750  38 00 00 00 */	li r0, 0
/* 80D02754  90 01 00 08 */	stw r0, 8(r1)
/* 80D02758  38 7D 07 BC */	addi r3, r29, 0x7bc
/* 80D0275C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D02760  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80D02764  7F A6 EB 78 */	mr r6, r29
/* 80D02768  38 E0 00 01 */	li r7, 1
/* 80D0276C  39 1D 07 7C */	addi r8, r29, 0x77c
/* 80D02770  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80D02774  39 40 00 00 */	li r10, 0
/* 80D02778  4B 37 3A D1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D0277C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80D02780  D0 1D 08 8C */	stfs f0, 0x88c(r29)
/* 80D02784  38 00 00 00 */	li r0, 0
/* 80D02788  90 1D 07 48 */	stw r0, 0x748(r29)
/* 80D0278C  B0 1D 07 4C */	sth r0, 0x74c(r29)
/* 80D02790  B0 1D 07 4E */	sth r0, 0x74e(r29)
/* 80D02794  B0 1D 07 50 */	sth r0, 0x750(r29)
/* 80D02798  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D0279C  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 80D027A0  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 80D027A4  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 80D027A8  D0 1D 07 60 */	stfs f0, 0x760(r29)
/* 80D027AC  D0 1D 07 64 */	stfs f0, 0x764(r29)
/* 80D027B0  D0 1D 07 68 */	stfs f0, 0x768(r29)
/* 80D027B4  D0 1D 07 6C */	stfs f0, 0x76c(r29)
/* 80D027B8  D0 1D 07 70 */	stfs f0, 0x770(r29)
/* 80D027BC  D0 1D 07 74 */	stfs f0, 0x774(r29)
/* 80D027C0  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 80D027C4  38 80 00 FF */	li r4, 0xff
/* 80D027C8  38 A0 00 FF */	li r5, 0xff
/* 80D027CC  7F A6 EB 78 */	mr r6, r29
/* 80D027D0  4B 38 10 91 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D027D4  38 7D 06 08 */	addi r3, r29, 0x608
/* 80D027D8  3C 80 80 D0 */	lis r4, mCcDCyl__10daSyRock_c@ha /* 0x80D0405C@ha */
/* 80D027DC  38 84 40 5C */	addi r4, r4, mCcDCyl__10daSyRock_c@l /* 0x80D0405C@l */
/* 80D027E0  4B 38 20 D5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D027E4  38 1D 05 CC */	addi r0, r29, 0x5cc
/* 80D027E8  90 1D 06 4C */	stw r0, 0x64c(r29)
/* 80D027EC  80 1D 06 08 */	lwz r0, 0x608(r29)
/* 80D027F0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D027F4  90 1D 06 08 */	stw r0, 0x608(r29)
/* 80D027F8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D027FC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D02800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D02804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D02808  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D0280C  7C 05 07 74 */	extsb r5, r0
/* 80D02810  4B 33 2B 51 */	bl isSwitch__10dSv_info_cCFii
/* 80D02814  2C 03 00 00 */	cmpwi r3, 0
/* 80D02818  41 82 00 58 */	beq lbl_80D02870
/* 80D0281C  38 00 00 00 */	li r0, 0
/* 80D02820  98 1D 09 9C */	stb r0, 0x99c(r29)
/* 80D02824  80 1D 06 34 */	lwz r0, 0x634(r29)
/* 80D02828  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D0282C  90 1D 06 34 */	stw r0, 0x634(r29)
/* 80D02830  80 7D 09 98 */	lwz r3, 0x998(r29)
/* 80D02834  28 03 00 00 */	cmplwi r3, 0
/* 80D02838  41 82 00 2C */	beq lbl_80D02864
/* 80D0283C  4B 56 59 99 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D02840  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D02844  41 82 00 20 */	beq lbl_80D02864
/* 80D02848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0284C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D02850  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D02854  80 9D 09 98 */	lwz r4, 0x998(r29)
/* 80D02858  4B 37 19 F9 */	bl Release__4cBgSFP9dBgW_Base
/* 80D0285C  80 7D 09 98 */	lwz r3, 0x998(r29)
/* 80D02860  4B 37 91 61 */	bl Move__4dBgWFv
lbl_80D02864:
/* 80D02864  7F A3 EB 78 */	mr r3, r29
/* 80D02868  48 00 02 95 */	bl setFallStat__10daSyRock_cFv
/* 80D0286C  48 00 00 64 */	b lbl_80D028D0
lbl_80D02870:
/* 80D02870  38 00 00 01 */	li r0, 1
/* 80D02874  98 1D 09 9C */	stb r0, 0x99c(r29)
/* 80D02878  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 80D0287C  28 04 00 00 */	cmplwi r4, 0
/* 80D02880  41 82 00 14 */	beq lbl_80D02894
/* 80D02884  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D02888  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0288C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D02890  4B 37 19 C1 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D02894:
/* 80D02894  80 9D 09 98 */	lwz r4, 0x998(r29)
/* 80D02898  28 04 00 00 */	cmplwi r4, 0
/* 80D0289C  41 82 00 20 */	beq lbl_80D028BC
/* 80D028A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D028A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D028A8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D028AC  7F A5 EB 78 */	mr r5, r29
/* 80D028B0  4B 37 21 59 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80D028B4  80 7D 09 98 */	lwz r3, 0x998(r29)
/* 80D028B8  4B 37 91 09 */	bl Move__4dBgWFv
lbl_80D028BC:
/* 80D028BC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D028C0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D028C4  98 1D 05 C9 */	stb r0, 0x5c9(r29)
/* 80D028C8  7F A3 EB 78 */	mr r3, r29
/* 80D028CC  48 00 05 A5 */	bl init_modeWait__10daSyRock_cFv
lbl_80D028D0:
/* 80D028D0  38 00 00 02 */	li r0, 2
/* 80D028D4  98 1D 07 79 */	stb r0, 0x779(r29)
/* 80D028D8  88 1D 09 9C */	lbz r0, 0x99c(r29)
/* 80D028DC  54 00 10 3A */	slwi r0, r0, 2
/* 80D028E0  7C 7D 02 14 */	add r3, r29, r0
/* 80D028E4  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80D028E8  38 03 00 24 */	addi r0, r3, 0x24
/* 80D028EC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D028F0  88 1D 09 9C */	lbz r0, 0x99c(r29)
/* 80D028F4  54 00 10 3A */	slwi r0, r0, 2
/* 80D028F8  7C 7D 02 14 */	add r3, r29, r0
/* 80D028FC  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80D02900  80 83 00 04 */	lwz r4, 4(r3)
/* 80D02904  7F A3 EB 78 */	mr r3, r29
/* 80D02908  4B 31 7C 71 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D0290C  7F A3 EB 78 */	mr r3, r29
/* 80D02910  4B FF FA 6D */	bl setBaseMtx__10daSyRock_cFv
lbl_80D02914:
/* 80D02914  7F C3 F3 78 */	mr r3, r30
lbl_80D02918:
/* 80D02918  39 61 00 20 */	addi r11, r1, 0x20
/* 80D0291C  4B 65 F9 09 */	bl _restgpr_28
/* 80D02920  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D02924  7C 08 03 A6 */	mtlr r0
/* 80D02928  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0292C  4E 80 00 20 */	blr 
