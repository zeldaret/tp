lbl_80BC35D0:
/* 80BC35D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC35D4  7C 08 02 A6 */	mflr r0
/* 80BC35D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC35DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC35E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC35E4  7C 7F 1B 78 */	mr r31, r3
/* 80BC35E8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BC35EC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC35F0  40 82 00 B4 */	bne lbl_80BC36A4
/* 80BC35F4  7F E0 FB 79 */	or. r0, r31, r31
/* 80BC35F8  41 82 00 A0 */	beq lbl_80BC3698
/* 80BC35FC  7C 1E 03 78 */	mr r30, r0
/* 80BC3600  4B 4B 50 24 */	b __ct__16dBgS_MoveBgActorFv
/* 80BC3604  3C 60 80 BC */	lis r3, __vt__13daBubbPilar_c@ha
/* 80BC3608  38 03 41 D0 */	addi r0, r3, __vt__13daBubbPilar_c@l
/* 80BC360C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BC3610  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BC3614  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BC3618  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80BC361C  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80BC3620  4B 4C 01 40 */	b __ct__10dCcD_GSttsFv
/* 80BC3624  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BC3628  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BC362C  90 7E 05 C8 */	stw r3, 0x5c8(r30)
/* 80BC3630  38 03 00 20 */	addi r0, r3, 0x20
/* 80BC3634  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80BC3638  3B DE 05 EC */	addi r30, r30, 0x5ec
/* 80BC363C  7F C3 F3 78 */	mr r3, r30
/* 80BC3640  4B 4C 03 E8 */	b __ct__12dCcD_GObjInfFv
/* 80BC3644  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BC3648  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BC364C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BC3650  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha
/* 80BC3654  38 03 41 C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BC3658  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80BC365C  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha
/* 80BC3660  38 03 41 B8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BC3664  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BC3668  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BC366C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BC3670  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BC3674  38 03 00 58 */	addi r0, r3, 0x58
/* 80BC3678  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BC367C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BC3680  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BC3684  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BC3688  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BC368C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BC3690  38 03 00 84 */	addi r0, r3, 0x84
/* 80BC3694  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BC3698:
/* 80BC3698  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BC369C  60 00 00 08 */	ori r0, r0, 8
/* 80BC36A0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BC36A4:
/* 80BC36A4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BC36A8  3C 80 80 BC */	lis r4, stringBase0@ha
/* 80BC36AC  38 84 40 B4 */	addi r4, r4, stringBase0@l
/* 80BC36B0  4B 46 98 0C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BC36B4  2C 03 00 04 */	cmpwi r3, 4
/* 80BC36B8  41 82 00 08 */	beq lbl_80BC36C0
/* 80BC36BC  48 00 01 74 */	b lbl_80BC3830
lbl_80BC36C0:
/* 80BC36C0  7F E3 FB 78 */	mr r3, r31
/* 80BC36C4  3C 80 80 BC */	lis r4, stringBase0@ha
/* 80BC36C8  38 84 40 B4 */	addi r4, r4, stringBase0@l
/* 80BC36CC  38 A0 00 08 */	li r5, 8
/* 80BC36D0  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BC36D4  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BC36D8  38 E0 19 00 */	li r7, 0x1900
/* 80BC36DC  39 00 00 00 */	li r8, 0
/* 80BC36E0  4B 4B 50 DC */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BC36E4  2C 03 00 05 */	cmpwi r3, 5
/* 80BC36E8  40 82 00 0C */	bne lbl_80BC36F4
/* 80BC36EC  38 60 00 05 */	li r3, 5
/* 80BC36F0  48 00 01 40 */	b lbl_80BC3830
lbl_80BC36F4:
/* 80BC36F4  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80BC36F8  38 80 00 C8 */	li r4, 0xc8
/* 80BC36FC  38 A0 00 FF */	li r5, 0xff
/* 80BC3700  7F E6 FB 78 */	mr r6, r31
/* 80BC3704  4B 4C 01 5C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BC3708  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80BC370C  3C 80 80 BC */	lis r4, mCcDCyl__13daBubbPilar_c@ha
/* 80BC3710  38 84 40 DC */	addi r4, r4, mCcDCyl__13daBubbPilar_c@l
/* 80BC3714  4B 4C 11 A0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BC3718  38 1F 05 B0 */	addi r0, r31, 0x5b0
/* 80BC371C  90 1F 06 30 */	stw r0, 0x630(r31)
/* 80BC3720  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BC3724  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80BC3728  98 1F 07 2B */	stb r0, 0x72b(r31)
/* 80BC372C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BC3730  98 1F 07 2A */	stb r0, 0x72a(r31)
/* 80BC3734  88 1F 07 2B */	lbz r0, 0x72b(r31)
/* 80BC3738  28 00 00 00 */	cmplwi r0, 0
/* 80BC373C  41 82 00 2C */	beq lbl_80BC3768
/* 80BC3740  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80BC3744  28 04 00 00 */	cmplwi r4, 0
/* 80BC3748  41 82 00 14 */	beq lbl_80BC375C
/* 80BC374C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC3750  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC3754  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BC3758  4B 4B 0A F8 */	b Release__4cBgSFP9dBgW_Base
lbl_80BC375C:
/* 80BC375C  80 1F 06 04 */	lwz r0, 0x604(r31)
/* 80BC3760  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BC3764  90 1F 06 04 */	stw r0, 0x604(r31)
lbl_80BC3768:
/* 80BC3768  88 9F 07 2A */	lbz r4, 0x72a(r31)
/* 80BC376C  28 04 00 FF */	cmplwi r4, 0xff
/* 80BC3770  40 82 00 18 */	bne lbl_80BC3788
/* 80BC3774  7F E3 FB 78 */	mr r3, r31
/* 80BC3778  48 00 04 FD */	bl initModeEffOn__13daBubbPilar_cFv
/* 80BC377C  38 00 00 01 */	li r0, 1
/* 80BC3780  98 1F 07 2D */	stb r0, 0x72d(r31)
/* 80BC3784  48 00 00 4C */	b lbl_80BC37D0
lbl_80BC3788:
/* 80BC3788  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC378C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC3790  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BC3794  7C 05 07 74 */	extsb r5, r0
/* 80BC3798  4B 47 1B C8 */	b isSwitch__10dSv_info_cCFii
/* 80BC379C  98 7F 07 2C */	stb r3, 0x72c(r31)
/* 80BC37A0  88 1F 07 2C */	lbz r0, 0x72c(r31)
/* 80BC37A4  28 00 00 00 */	cmplwi r0, 0
/* 80BC37A8  41 82 00 18 */	beq lbl_80BC37C0
/* 80BC37AC  7F E3 FB 78 */	mr r3, r31
/* 80BC37B0  48 00 04 C5 */	bl initModeEffOn__13daBubbPilar_cFv
/* 80BC37B4  38 00 00 01 */	li r0, 1
/* 80BC37B8  98 1F 07 2D */	stb r0, 0x72d(r31)
/* 80BC37BC  48 00 00 14 */	b lbl_80BC37D0
lbl_80BC37C0:
/* 80BC37C0  7F E3 FB 78 */	mr r3, r31
/* 80BC37C4  48 00 02 F5 */	bl initModeWait__13daBubbPilar_cFv
/* 80BC37C8  38 00 00 00 */	li r0, 0
/* 80BC37CC  98 1F 07 2D */	stb r0, 0x72d(r31)
lbl_80BC37D0:
/* 80BC37D0  88 1F 07 2D */	lbz r0, 0x72d(r31)
/* 80BC37D4  54 00 10 3A */	slwi r0, r0, 2
/* 80BC37D8  7C 7F 02 14 */	add r3, r31, r0
/* 80BC37DC  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80BC37E0  38 03 00 24 */	addi r0, r3, 0x24
/* 80BC37E4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BC37E8  88 1F 07 2D */	lbz r0, 0x72d(r31)
/* 80BC37EC  54 00 10 3A */	slwi r0, r0, 2
/* 80BC37F0  7C 7F 02 14 */	add r3, r31, r0
/* 80BC37F4  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80BC37F8  80 83 00 04 */	lwz r4, 4(r3)
/* 80BC37FC  7F E3 FB 78 */	mr r3, r31
/* 80BC3800  4B 45 6D 78 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BC3804  7F E3 FB 78 */	mr r3, r31
/* 80BC3808  4B FF FC 59 */	bl setBaseMtx__13daBubbPilar_cFv
/* 80BC380C  38 60 00 00 */	li r3, 0
/* 80BC3810  7C 64 1B 78 */	mr r4, r3
/* 80BC3814  38 00 00 04 */	li r0, 4
/* 80BC3818  7C 09 03 A6 */	mtctr r0
lbl_80BC381C:
/* 80BC381C  38 03 07 40 */	addi r0, r3, 0x740
/* 80BC3820  7C 9F 01 2E */	stwx r4, r31, r0
/* 80BC3824  38 63 00 04 */	addi r3, r3, 4
/* 80BC3828  42 00 FF F4 */	bdnz lbl_80BC381C
/* 80BC382C  38 60 00 04 */	li r3, 4
lbl_80BC3830:
/* 80BC3830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC3834  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC3838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC383C  7C 08 03 A6 */	mtlr r0
/* 80BC3840  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3844  4E 80 00 20 */	blr 
