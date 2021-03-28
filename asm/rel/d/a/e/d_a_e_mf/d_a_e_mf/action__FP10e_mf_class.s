lbl_807104EC:
/* 807104EC  94 21 FD 80 */	stwu r1, -0x280(r1)
/* 807104F0  7C 08 02 A6 */	mflr r0
/* 807104F4  90 01 02 84 */	stw r0, 0x284(r1)
/* 807104F8  DB E1 02 70 */	stfd f31, 0x270(r1)
/* 807104FC  F3 E1 02 78 */	psq_st f31, 632(r1), 0, 0 /* qr0 */
/* 80710500  39 61 02 70 */	addi r11, r1, 0x270
/* 80710504  4B C5 1C C4 */	b _savegpr_24
/* 80710508  7C 7D 1B 78 */	mr r29, r3
/* 8071050C  3C 80 80 71 */	lis r4, lit_3828@ha
/* 80710510  3B C4 39 74 */	addi r30, r4, lit_3828@l
/* 80710514  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80710518  3B 24 61 C0 */	addi r25, r4, g_dComIfG_gameInfo@l
/* 8071051C  83 F9 5D AC */	lwz r31, 0x5dac(r25)
/* 80710520  38 00 00 00 */	li r0, 0
/* 80710524  98 03 06 D4 */	stb r0, 0x6d4(r3)
/* 80710528  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 8071052C  4B 90 A4 38 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80710530  D0 3D 06 B0 */	stfs f1, 0x6b0(r29)
/* 80710534  7F A3 EB 78 */	mr r3, r29
/* 80710538  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 8071053C  4B 90 A1 D4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80710540  B0 7D 06 B4 */	sth r3, 0x6b4(r29)
/* 80710544  7F A3 EB 78 */	mr r3, r29
/* 80710548  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 8071054C  4B 90 A1 EC */	b fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80710550  B0 7D 06 B6 */	sth r3, 0x6b6(r29)
/* 80710554  7F A3 EB 78 */	mr r3, r29
/* 80710558  4B FF FC 01 */	bl damage_check__FP10e_mf_class
/* 8071055C  38 00 00 00 */	li r0, 0
/* 80710560  98 1D 08 0E */	stb r0, 0x80e(r29)
/* 80710564  3B 80 00 00 */	li r28, 0
/* 80710568  3B 00 00 01 */	li r24, 1
/* 8071056C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 80710570  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80710574  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 80710578  7F E3 FB 78 */	mr r3, r31
/* 8071057C  7F A4 EB 78 */	mr r4, r29
/* 80710580  4B 90 C8 7C */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80710584  2C 03 00 00 */	cmpwi r3, 0
/* 80710588  41 82 00 1C */	beq lbl_807105A4
/* 8071058C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80710590  54 00 00 3E */	slwi r0, r0, 0
/* 80710594  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80710598  38 00 00 00 */	li r0, 0
/* 8071059C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807105A0  48 00 00 0C */	b lbl_807105AC
lbl_807105A4:
/* 807105A4  38 00 00 04 */	li r0, 4
/* 807105A8  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_807105AC:
/* 807105AC  A8 1D 06 AE */	lha r0, 0x6ae(r29)
/* 807105B0  28 00 00 19 */	cmplwi r0, 0x19
/* 807105B4  41 81 00 F8 */	bgt lbl_807106AC
/* 807105B8  3C 60 80 71 */	lis r3, lit_6893@ha
/* 807105BC  38 63 3C 70 */	addi r3, r3, lit_6893@l
/* 807105C0  54 00 10 3A */	slwi r0, r0, 2
/* 807105C4  7C 03 00 2E */	lwzx r0, r3, r0
/* 807105C8  7C 09 03 A6 */	mtctr r0
/* 807105CC  4E 80 04 20 */	bctr 
lbl_807105D0:
/* 807105D0  7F A3 EB 78 */	mr r3, r29
/* 807105D4  4B FF C1 F1 */	bl e_mf_normal__FP10e_mf_class
/* 807105D8  48 00 00 D4 */	b lbl_807106AC
lbl_807105DC:
/* 807105DC  7F A3 EB 78 */	mr r3, r29
/* 807105E0  4B FF CC E9 */	bl e_mf_fight_run__FP10e_mf_class
/* 807105E4  3B 80 00 01 */	li r28, 1
/* 807105E8  48 00 00 C4 */	b lbl_807106AC
lbl_807105EC:
/* 807105EC  7F A3 EB 78 */	mr r3, r29
/* 807105F0  4B FF DD 7D */	bl e_mf_attack__FP10e_mf_class
/* 807105F4  3B 80 00 01 */	li r28, 1
/* 807105F8  48 00 00 B4 */	b lbl_807106AC
lbl_807105FC:
/* 807105FC  7F A3 EB 78 */	mr r3, r29
/* 80710600  4B FF E1 61 */	bl e_mf_tail_attack__FP10e_mf_class
/* 80710604  3B 80 00 01 */	li r28, 1
/* 80710608  48 00 00 A4 */	b lbl_807106AC
lbl_8071060C:
/* 8071060C  7F A3 EB 78 */	mr r3, r29
/* 80710610  4B FF E4 01 */	bl e_mf_guard__FP10e_mf_class
/* 80710614  3B 80 00 01 */	li r28, 1
/* 80710618  48 00 00 94 */	b lbl_807106AC
lbl_8071061C:
/* 8071061C  7F A3 EB 78 */	mr r3, r29
/* 80710620  4B FF D5 95 */	bl e_mf_jump__FP10e_mf_class
/* 80710624  3B 80 00 01 */	li r28, 1
/* 80710628  48 00 00 84 */	b lbl_807106AC
lbl_8071062C:
/* 8071062C  7F A3 EB 78 */	mr r3, r29
/* 80710630  4B FF B4 E1 */	bl e_mf_stay__FP10e_mf_class
/* 80710634  48 00 00 78 */	b lbl_807106AC
lbl_80710638:
/* 80710638  7F A3 EB 78 */	mr r3, r29
/* 8071063C  4B FF B9 59 */	bl e_mf_otoreac__FP10e_mf_class
/* 80710640  48 00 00 6C */	b lbl_807106AC
lbl_80710644:
/* 80710644  7F A3 EB 78 */	mr r3, r29
/* 80710648  4B FF C4 D5 */	bl e_mf_drawback__FP10e_mf_class
/* 8071064C  3B 80 00 01 */	li r28, 1
/* 80710650  48 00 00 5C */	b lbl_807106AC
lbl_80710654:
/* 80710654  7F A3 EB 78 */	mr r3, r29
/* 80710658  4B FF C6 61 */	bl e_mf_wolfbite__FP10e_mf_class
/* 8071065C  48 00 00 50 */	b lbl_807106AC
lbl_80710660:
/* 80710660  7F A3 EB 78 */	mr r3, r29
/* 80710664  4B FF BC 61 */	bl e_mf_bomb_action__FP10e_mf_class
/* 80710668  48 00 00 44 */	b lbl_807106AC
lbl_8071066C:
/* 8071066C  7F A3 EB 78 */	mr r3, r29
/* 80710670  4B FF E5 F1 */	bl e_mf_s_damage__FP10e_mf_class
/* 80710674  48 00 00 38 */	b lbl_807106AC
lbl_80710678:
/* 80710678  7F A3 EB 78 */	mr r3, r29
/* 8071067C  4B FF EA 11 */	bl e_mf_damage__FP10e_mf_class
/* 80710680  48 00 00 2C */	b lbl_807106AC
lbl_80710684:
/* 80710684  7F A3 EB 78 */	mr r3, r29
/* 80710688  4B FF F5 65 */	bl e_mf_backdrop__FP10e_mf_class
/* 8071068C  48 00 00 20 */	b lbl_807106AC
lbl_80710690:
/* 80710690  7F A3 EB 78 */	mr r3, r29
/* 80710694  4B FF F6 AD */	bl e_mf_water__FP10e_mf_class
/* 80710698  3B 00 00 00 */	li r24, 0
/* 8071069C  48 00 00 10 */	b lbl_807106AC
lbl_807106A0:
/* 807106A0  7F A3 EB 78 */	mr r3, r29
/* 807106A4  4B FF D7 39 */	bl e_mf_gakejump__FP10e_mf_class
/* 807106A8  3B 80 00 01 */	li r28, 1
lbl_807106AC:
/* 807106AC  7F 00 07 75 */	extsb. r0, r24
/* 807106B0  41 82 01 30 */	beq lbl_807107E0
/* 807106B4  3B 21 01 DC */	addi r25, r1, 0x1dc
/* 807106B8  7F 23 CB 78 */	mr r3, r25
/* 807106BC  4B 96 6E C0 */	b __ct__11dBgS_GndChkFv
/* 807106C0  3C 60 80 71 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807106C4  38 63 3E E4 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 807106C8  90 61 01 EC */	stw r3, 0x1ec(r1)
/* 807106CC  3B 43 00 0C */	addi r26, r3, 0xc
/* 807106D0  93 41 01 FC */	stw r26, 0x1fc(r1)
/* 807106D4  3B 63 00 18 */	addi r27, r3, 0x18
/* 807106D8  93 61 02 18 */	stw r27, 0x218(r1)
/* 807106DC  3B 03 00 24 */	addi r24, r3, 0x24
/* 807106E0  93 01 02 28 */	stw r24, 0x228(r1)
/* 807106E4  38 79 00 3C */	addi r3, r25, 0x3c
/* 807106E8  4B 96 87 80 */	b SetObj__16dBgS_PolyPassChkFv
/* 807106EC  38 61 01 88 */	addi r3, r1, 0x188
/* 807106F0  4B 96 70 C0 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 807106F4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807106F8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807106FC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80710700  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80710704  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80710708  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8071070C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80710710  EC 01 00 2A */	fadds f0, f1, f0
/* 80710714  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80710718  38 61 01 88 */	addi r3, r1, 0x188
/* 8071071C  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80710720  4B B5 76 08 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80710724  7F 23 CB 78 */	mr r3, r25
/* 80710728  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8071072C  4B B5 75 FC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80710730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80710734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80710738  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 8071073C  7F 23 CB 78 */	mr r3, r25
/* 80710740  38 81 01 88 */	addi r4, r1, 0x188
/* 80710744  4B 96 3D 5C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80710748  D0 3D 0A 3C */	stfs f1, 0xa3c(r29)
/* 8071074C  7F 23 CB 78 */	mr r3, r25
/* 80710750  38 81 01 DC */	addi r4, r1, 0x1dc
/* 80710754  4B 96 3D 4C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80710758  C0 5D 0A 3C */	lfs f2, 0xa3c(r29)
/* 8071075C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80710760  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80710764  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80710768  40 80 00 48 */	bge lbl_807107B0
/* 8071076C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80710770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80710774  40 81 00 3C */	ble lbl_807107B0
/* 80710778  38 00 00 18 */	li r0, 0x18
/* 8071077C  B0 1D 06 AE */	sth r0, 0x6ae(r29)
/* 80710780  7F 23 CB 78 */	mr r3, r25
/* 80710784  38 81 01 9C */	addi r4, r1, 0x19c
/* 80710788  4B 96 46 C8 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8071078C  2C 03 00 06 */	cmpwi r3, 6
/* 80710790  40 82 00 10 */	bne lbl_807107A0
/* 80710794  38 00 00 01 */	li r0, 1
/* 80710798  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8071079C  48 00 00 0C */	b lbl_807107A8
lbl_807107A0:
/* 807107A0  38 00 00 00 */	li r0, 0
/* 807107A4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807107A8:
/* 807107A8  C0 1D 0A 3C */	lfs f0, 0xa3c(r29)
/* 807107AC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_807107B0:
/* 807107B0  38 61 01 88 */	addi r3, r1, 0x188
/* 807107B4  38 80 FF FF */	li r4, -1
/* 807107B8  4B 96 70 90 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 807107BC  3C 60 80 71 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807107C0  38 03 3E E4 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 807107C4  90 01 01 EC */	stw r0, 0x1ec(r1)
/* 807107C8  93 41 01 FC */	stw r26, 0x1fc(r1)
/* 807107CC  93 61 02 18 */	stw r27, 0x218(r1)
/* 807107D0  93 01 02 28 */	stw r24, 0x228(r1)
/* 807107D4  38 61 01 DC */	addi r3, r1, 0x1dc
/* 807107D8  38 80 00 00 */	li r4, 0
/* 807107DC  4B 96 6E 14 */	b __dt__11dBgS_GndChkFv
lbl_807107E0:
/* 807107E0  7F 80 07 75 */	extsb. r0, r28
/* 807107E4  41 82 00 14 */	beq lbl_807107F8
/* 807107E8  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 807107EC  38 80 00 01 */	li r4, 1
/* 807107F0  4B BB 13 8C */	b setLinkSearch__15Z2CreatureEnemyFb
/* 807107F4  48 00 00 10 */	b lbl_80710804
lbl_807107F8:
/* 807107F8  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 807107FC  38 80 00 00 */	li r4, 0
/* 80710800  4B BB 13 7C */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_80710804:
/* 80710804  88 1D 08 0E */	lbz r0, 0x80e(r29)
/* 80710808  7C 00 07 75 */	extsb. r0, r0
/* 8071080C  40 82 00 18 */	bne lbl_80710824
/* 80710810  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80710814  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80710818  38 A0 00 02 */	li r5, 2
/* 8071081C  38 C0 20 00 */	li r6, 0x2000
/* 80710820  4B B5 FD E8 */	b cLib_addCalcAngleS2__FPssss
lbl_80710824:
/* 80710824  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80710828  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 8071082C  38 A0 00 02 */	li r5, 2
/* 80710830  38 C0 20 00 */	li r6, 0x2000
/* 80710834  4B B5 FD D4 */	b cLib_addCalcAngleS2__FPssss
/* 80710838  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8071083C  A8 9D 04 E0 */	lha r4, 0x4e0(r29)
/* 80710840  38 A0 00 02 */	li r5, 2
/* 80710844  38 C0 20 00 */	li r6, 0x2000
/* 80710848  4B B5 FD C0 */	b cLib_addCalcAngleS2__FPssss
/* 8071084C  88 1D 05 D8 */	lbz r0, 0x5d8(r29)
/* 80710850  7C 00 07 75 */	extsb. r0, r0
/* 80710854  41 82 02 E0 */	beq lbl_80710B34
/* 80710858  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8071085C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80710860  80 63 00 00 */	lwz r3, 0(r3)
/* 80710864  A8 9D 05 D4 */	lha r4, 0x5d4(r29)
/* 80710868  4B 8F BB 74 */	b mDoMtx_YrotS__FPA4_fs
/* 8071086C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80710870  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80710874  80 63 00 00 */	lwz r3, 0(r3)
/* 80710878  A8 9D 05 D6 */	lha r4, 0x5d6(r29)
/* 8071087C  4B 8F BB 20 */	b mDoMtx_XrotM__FPA4_fs
/* 80710880  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80710884  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80710888  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8071088C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80710890  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80710894  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80710898  38 81 00 AC */	addi r4, r1, 0xac
/* 8071089C  4B B6 06 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 807108A0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807108A4  38 81 00 AC */	addi r4, r1, 0xac
/* 807108A8  7C 65 1B 78 */	mr r5, r3
/* 807108AC  4B C3 67 E4 */	b PSVECAdd
/* 807108B0  38 61 00 64 */	addi r3, r1, 0x64
/* 807108B4  38 9D 05 BC */	addi r4, r29, 0x5bc
/* 807108B8  38 BD 05 C8 */	addi r5, r29, 0x5c8
/* 807108BC  4B B5 62 78 */	b __mi__4cXyzCFRC3Vec
/* 807108C0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807108C4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807108C8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 807108CC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807108D0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 807108D4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807108D8  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807108DC  4B C3 68 5C */	b PSVECSquareMag
/* 807108E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807108E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807108E8  40 81 00 58 */	ble lbl_80710940
/* 807108EC  FC 00 08 34 */	frsqrte f0, f1
/* 807108F0  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807108F4  FC 44 00 32 */	fmul f2, f4, f0
/* 807108F8  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807108FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80710900  FC 01 00 32 */	fmul f0, f1, f0
/* 80710904  FC 03 00 28 */	fsub f0, f3, f0
/* 80710908  FC 02 00 32 */	fmul f0, f2, f0
/* 8071090C  FC 44 00 32 */	fmul f2, f4, f0
/* 80710910  FC 00 00 32 */	fmul f0, f0, f0
/* 80710914  FC 01 00 32 */	fmul f0, f1, f0
/* 80710918  FC 03 00 28 */	fsub f0, f3, f0
/* 8071091C  FC 02 00 32 */	fmul f0, f2, f0
/* 80710920  FC 44 00 32 */	fmul f2, f4, f0
/* 80710924  FC 00 00 32 */	fmul f0, f0, f0
/* 80710928  FC 01 00 32 */	fmul f0, f1, f0
/* 8071092C  FC 03 00 28 */	fsub f0, f3, f0
/* 80710930  FC 02 00 32 */	fmul f0, f2, f0
/* 80710934  FF E1 00 32 */	fmul f31, f1, f0
/* 80710938  FF E0 F8 18 */	frsp f31, f31
/* 8071093C  48 00 00 90 */	b lbl_807109CC
lbl_80710940:
/* 80710940  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80710944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80710948  40 80 00 10 */	bge lbl_80710958
/* 8071094C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80710950  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80710954  48 00 00 78 */	b lbl_807109CC
lbl_80710958:
/* 80710958  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8071095C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80710960  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80710964  3C 00 7F 80 */	lis r0, 0x7f80
/* 80710968  7C 03 00 00 */	cmpw r3, r0
/* 8071096C  41 82 00 14 */	beq lbl_80710980
/* 80710970  40 80 00 40 */	bge lbl_807109B0
/* 80710974  2C 03 00 00 */	cmpwi r3, 0
/* 80710978  41 82 00 20 */	beq lbl_80710998
/* 8071097C  48 00 00 34 */	b lbl_807109B0
lbl_80710980:
/* 80710980  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80710984  41 82 00 0C */	beq lbl_80710990
/* 80710988  38 00 00 01 */	li r0, 1
/* 8071098C  48 00 00 28 */	b lbl_807109B4
lbl_80710990:
/* 80710990  38 00 00 02 */	li r0, 2
/* 80710994  48 00 00 20 */	b lbl_807109B4
lbl_80710998:
/* 80710998  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071099C  41 82 00 0C */	beq lbl_807109A8
/* 807109A0  38 00 00 05 */	li r0, 5
/* 807109A4  48 00 00 10 */	b lbl_807109B4
lbl_807109A8:
/* 807109A8  38 00 00 03 */	li r0, 3
/* 807109AC  48 00 00 08 */	b lbl_807109B4
lbl_807109B0:
/* 807109B0  38 00 00 04 */	li r0, 4
lbl_807109B4:
/* 807109B4  2C 00 00 01 */	cmpwi r0, 1
/* 807109B8  40 82 00 10 */	bne lbl_807109C8
/* 807109BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807109C0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 807109C4  48 00 00 08 */	b lbl_807109CC
lbl_807109C8:
/* 807109C8  FF E0 08 90 */	fmr f31, f1
lbl_807109CC:
/* 807109CC  38 61 00 58 */	addi r3, r1, 0x58
/* 807109D0  38 9D 05 BC */	addi r4, r29, 0x5bc
/* 807109D4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807109D8  4B B5 61 5C */	b __mi__4cXyzCFRC3Vec
/* 807109DC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807109E0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807109E4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807109E8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807109EC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807109F0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807109F4  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807109F8  4B C3 67 40 */	b PSVECSquareMag
/* 807109FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80710A00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80710A04  40 81 00 58 */	ble lbl_80710A5C
/* 80710A08  FC 00 08 34 */	frsqrte f0, f1
/* 80710A0C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80710A10  FC 44 00 32 */	fmul f2, f4, f0
/* 80710A14  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80710A18  FC 00 00 32 */	fmul f0, f0, f0
/* 80710A1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80710A20  FC 03 00 28 */	fsub f0, f3, f0
/* 80710A24  FC 02 00 32 */	fmul f0, f2, f0
/* 80710A28  FC 44 00 32 */	fmul f2, f4, f0
/* 80710A2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80710A30  FC 01 00 32 */	fmul f0, f1, f0
/* 80710A34  FC 03 00 28 */	fsub f0, f3, f0
/* 80710A38  FC 02 00 32 */	fmul f0, f2, f0
/* 80710A3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80710A40  FC 00 00 32 */	fmul f0, f0, f0
/* 80710A44  FC 01 00 32 */	fmul f0, f1, f0
/* 80710A48  FC 03 00 28 */	fsub f0, f3, f0
/* 80710A4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80710A50  FC 21 00 32 */	fmul f1, f1, f0
/* 80710A54  FC 20 08 18 */	frsp f1, f1
/* 80710A58  48 00 00 88 */	b lbl_80710AE0
lbl_80710A5C:
/* 80710A5C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80710A60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80710A64  40 80 00 10 */	bge lbl_80710A74
/* 80710A68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80710A6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80710A70  48 00 00 70 */	b lbl_80710AE0
lbl_80710A74:
/* 80710A74  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80710A78  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80710A7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80710A80  3C 00 7F 80 */	lis r0, 0x7f80
/* 80710A84  7C 03 00 00 */	cmpw r3, r0
/* 80710A88  41 82 00 14 */	beq lbl_80710A9C
/* 80710A8C  40 80 00 40 */	bge lbl_80710ACC
/* 80710A90  2C 03 00 00 */	cmpwi r3, 0
/* 80710A94  41 82 00 20 */	beq lbl_80710AB4
/* 80710A98  48 00 00 34 */	b lbl_80710ACC
lbl_80710A9C:
/* 80710A9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80710AA0  41 82 00 0C */	beq lbl_80710AAC
/* 80710AA4  38 00 00 01 */	li r0, 1
/* 80710AA8  48 00 00 28 */	b lbl_80710AD0
lbl_80710AAC:
/* 80710AAC  38 00 00 02 */	li r0, 2
/* 80710AB0  48 00 00 20 */	b lbl_80710AD0
lbl_80710AB4:
/* 80710AB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80710AB8  41 82 00 0C */	beq lbl_80710AC4
/* 80710ABC  38 00 00 05 */	li r0, 5
/* 80710AC0  48 00 00 10 */	b lbl_80710AD0
lbl_80710AC4:
/* 80710AC4  38 00 00 03 */	li r0, 3
/* 80710AC8  48 00 00 08 */	b lbl_80710AD0
lbl_80710ACC:
/* 80710ACC  38 00 00 04 */	li r0, 4
lbl_80710AD0:
/* 80710AD0  2C 00 00 01 */	cmpwi r0, 1
/* 80710AD4  40 82 00 0C */	bne lbl_80710AE0
/* 80710AD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80710ADC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80710AE0:
/* 80710AE0  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80710AE4  EC 60 07 F2 */	fmuls f3, f0, f31
/* 80710AE8  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80710AEC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80710AF0  40 81 00 08 */	ble lbl_80710AF8
/* 80710AF4  FC 60 00 90 */	fmr f3, f0
lbl_80710AF8:
/* 80710AF8  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80710AFC  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80710B00  EC 02 00 32 */	fmuls f0, f2, f0
/* 80710B04  FC 00 00 1E */	fctiwz f0, f0
/* 80710B08  D8 01 02 30 */	stfd f0, 0x230(r1)
/* 80710B0C  80 01 02 34 */	lwz r0, 0x234(r1)
/* 80710B10  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80710B14  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80710B18  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80710B1C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80710B20  EC 03 00 32 */	fmuls f0, f3, f0
/* 80710B24  D0 1D 07 00 */	stfs f0, 0x700(r29)
/* 80710B28  38 00 00 00 */	li r0, 0
/* 80710B2C  98 1D 05 D8 */	stb r0, 0x5d8(r29)
/* 80710B30  48 00 01 8C */	b lbl_80710CBC
lbl_80710B34:
/* 80710B34  38 7D 07 00 */	addi r3, r29, 0x700
/* 80710B38  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80710B3C  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80710B40  4B B5 EF 40 */	b cLib_addCalc0__FPfff
/* 80710B44  C0 3D 06 E4 */	lfs f1, 0x6e4(r29)
/* 80710B48  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80710B4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80710B50  41 82 00 48 */	beq lbl_80710B98
/* 80710B54  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80710B58  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80710B5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80710B60  A8 9D 07 06 */	lha r4, 0x706(r29)
/* 80710B64  4B 8F B8 78 */	b mDoMtx_YrotS__FPA4_fs
/* 80710B68  A8 1D 08 20 */	lha r0, 0x820(r29)
/* 80710B6C  2C 00 00 00 */	cmpwi r0, 0
/* 80710B70  40 82 00 10 */	bne lbl_80710B80
/* 80710B74  C0 1D 06 E4 */	lfs f0, 0x6e4(r29)
/* 80710B78  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80710B7C  48 00 00 10 */	b lbl_80710B8C
lbl_80710B80:
/* 80710B80  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80710B84  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80710B88  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80710B8C:
/* 80710B8C  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80710B90  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80710B94  48 00 00 20 */	b lbl_80710BB4
lbl_80710B98:
/* 80710B98  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80710B9C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80710BA0  80 63 00 00 */	lwz r3, 0(r3)
/* 80710BA4  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80710BA8  4B 8F B8 34 */	b mDoMtx_YrotS__FPA4_fs
/* 80710BAC  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80710BB0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
lbl_80710BB4:
/* 80710BB4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80710BB8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80710BBC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80710BC0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80710BC4  38 81 00 AC */	addi r4, r1, 0xac
/* 80710BC8  4B B6 03 24 */	b MtxPosition__FP4cXyzP4cXyz
/* 80710BCC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80710BD0  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80710BD4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80710BD8  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80710BDC  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80710BE0  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 80710BE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80710BE8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80710BEC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80710BF0  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 80710BF4  7C 65 1B 78 */	mr r5, r3
/* 80710BF8  4B C3 64 98 */	b PSVECAdd
/* 80710BFC  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80710C00  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80710C04  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80710C08  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80710C0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80710C10  40 80 00 08 */	bge lbl_80710C18
/* 80710C14  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80710C18:
/* 80710C18  A8 1D 06 AE */	lha r0, 0x6ae(r29)
/* 80710C1C  2C 00 00 09 */	cmpwi r0, 9
/* 80710C20  41 82 00 38 */	beq lbl_80710C58
/* 80710C24  88 1D 06 D2 */	lbz r0, 0x6d2(r29)
/* 80710C28  7C 00 07 75 */	extsb. r0, r0
/* 80710C2C  41 82 00 2C */	beq lbl_80710C58
/* 80710C30  34 7D 0A 40 */	addic. r3, r29, 0xa40
/* 80710C34  41 82 00 24 */	beq lbl_80710C58
/* 80710C38  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80710C3C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80710C40  EC 01 00 2A */	fadds f0, f1, f0
/* 80710C44  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80710C48  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80710C4C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80710C50  EC 01 00 2A */	fadds f0, f1, f0
/* 80710C54  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_80710C58:
/* 80710C58  C0 3D 06 E8 */	lfs f1, 0x6e8(r29)
/* 80710C5C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80710C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80710C64  40 81 00 58 */	ble lbl_80710CBC
/* 80710C68  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80710C6C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80710C70  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80710C74  FC 00 08 50 */	fneg f0, f1
/* 80710C78  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80710C7C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80710C80  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80710C84  80 63 00 00 */	lwz r3, 0(r3)
/* 80710C88  A8 9D 06 EC */	lha r4, 0x6ec(r29)
/* 80710C8C  4B 8F B7 50 */	b mDoMtx_YrotS__FPA4_fs
/* 80710C90  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80710C94  38 81 00 AC */	addi r4, r1, 0xac
/* 80710C98  4B B6 02 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 80710C9C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80710CA0  38 81 00 AC */	addi r4, r1, 0xac
/* 80710CA4  7C 65 1B 78 */	mr r5, r3
/* 80710CA8  4B C3 63 E8 */	b PSVECAdd
/* 80710CAC  38 7D 06 E8 */	addi r3, r29, 0x6e8
/* 80710CB0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80710CB4  C0 5E 01 2C */	lfs f2, 0x12c(r30)
/* 80710CB8  4B B5 ED C8 */	b cLib_addCalc0__FPfff
lbl_80710CBC:
/* 80710CBC  3B 80 08 00 */	li r28, 0x800
/* 80710CC0  88 7D 06 E0 */	lbz r3, 0x6e0(r29)
/* 80710CC4  7C 60 07 75 */	extsb. r0, r3
/* 80710CC8  41 82 00 74 */	beq lbl_80710D3C
/* 80710CCC  38 03 FF FF */	addi r0, r3, -1
/* 80710CD0  98 1D 06 E0 */	stb r0, 0x6e0(r29)
/* 80710CD4  38 00 00 02 */	li r0, 2
/* 80710CD8  98 1D 06 D4 */	stb r0, 0x6d4(r29)
/* 80710CDC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80710CE0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80710CE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80710CE8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80710CEC  4B 8F B6 F0 */	b mDoMtx_YrotS__FPA4_fs
/* 80710CF0  88 1D 06 E1 */	lbz r0, 0x6e1(r29)
/* 80710CF4  7C 00 07 75 */	extsb. r0, r0
/* 80710CF8  41 82 00 0C */	beq lbl_80710D04
/* 80710CFC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80710D00  48 00 00 08 */	b lbl_80710D08
lbl_80710D04:
/* 80710D04  C0 1E 01 04 */	lfs f0, 0x104(r30)
lbl_80710D08:
/* 80710D08  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80710D0C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80710D10  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80710D14  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80710D18  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80710D1C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80710D20  38 9D 07 18 */	addi r4, r29, 0x718
/* 80710D24  4B B6 01 C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80710D28  38 7D 07 18 */	addi r3, r29, 0x718
/* 80710D2C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80710D30  7C 65 1B 78 */	mr r5, r3
/* 80710D34  4B C3 63 5C */	b PSVECAdd
/* 80710D38  3B 80 04 00 */	li r28, 0x400
lbl_80710D3C:
/* 80710D3C  88 7D 06 D4 */	lbz r3, 0x6d4(r29)
/* 80710D40  7C 60 07 75 */	extsb. r0, r3
/* 80710D44  41 82 01 D4 */	beq lbl_80710F18
/* 80710D48  7C 60 07 74 */	extsb r0, r3
/* 80710D4C  2C 00 00 05 */	cmpwi r0, 5
/* 80710D50  40 82 00 40 */	bne lbl_80710D90
/* 80710D54  A8 1D 06 AC */	lha r0, 0x6ac(r29)
/* 80710D58  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80710D5C  40 82 01 B0 */	bne lbl_80710F0C
/* 80710D60  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80710D64  4B B5 6B F0 */	b cM_rndF__Ff
/* 80710D68  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80710D6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80710D70  40 80 01 9C */	bge lbl_80710F0C
/* 80710D74  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 80710D78  4B B5 6C 14 */	b cM_rndFX__Ff
/* 80710D7C  FC 00 08 1E */	fctiwz f0, f1
/* 80710D80  D8 01 02 30 */	stfd f0, 0x230(r1)
/* 80710D84  80 01 02 34 */	lwz r0, 0x234(r1)
/* 80710D88  B0 1D 06 DC */	sth r0, 0x6dc(r29)
/* 80710D8C  48 00 01 80 */	b lbl_80710F0C
lbl_80710D90:
/* 80710D90  2C 00 00 01 */	cmpwi r0, 1
/* 80710D94  40 82 00 30 */	bne lbl_80710DC4
/* 80710D98  38 61 00 4C */	addi r3, r1, 0x4c
/* 80710D9C  38 9F 05 38 */	addi r4, r31, 0x538
/* 80710DA0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80710DA4  4B B5 5D 90 */	b __mi__4cXyzCFRC3Vec
/* 80710DA8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80710DAC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80710DB0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80710DB4  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80710DB8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80710DBC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80710DC0  48 00 00 60 */	b lbl_80710E20
lbl_80710DC4:
/* 80710DC4  2C 00 00 02 */	cmpwi r0, 2
/* 80710DC8  40 82 00 30 */	bne lbl_80710DF8
/* 80710DCC  38 61 00 40 */	addi r3, r1, 0x40
/* 80710DD0  38 9D 07 18 */	addi r4, r29, 0x718
/* 80710DD4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80710DD8  4B B5 5D 5C */	b __mi__4cXyzCFRC3Vec
/* 80710DDC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80710DE0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80710DE4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80710DE8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80710DEC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80710DF0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80710DF4  48 00 00 2C */	b lbl_80710E20
lbl_80710DF8:
/* 80710DF8  38 61 00 34 */	addi r3, r1, 0x34
/* 80710DFC  38 9F 05 38 */	addi r4, r31, 0x538
/* 80710E00  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80710E04  4B B5 5D 30 */	b __mi__4cXyzCFRC3Vec
/* 80710E08  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80710E0C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80710E10  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80710E14  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80710E18  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80710E1C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
lbl_80710E20:
/* 80710E20  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 80710E24  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80710E28  3C 60 80 71 */	lis r3, l_HIO@ha
/* 80710E2C  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 80710E30  C0 03 00 08 */	lfs f0, 8(r3)
/* 80710E34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80710E38  EC 02 00 2A */	fadds f0, f2, f0
/* 80710E3C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80710E40  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 80710E44  C0 41 00 C0 */	lfs f2, 0xc0(r1)
/* 80710E48  4B B5 68 2C */	b cM_atan2s__Fff
/* 80710E4C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80710E50  7C 00 18 50 */	subf r0, r0, r3
/* 80710E54  7C 18 07 34 */	extsh r24, r0
/* 80710E58  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80710E5C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80710E60  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80710E64  EC 00 00 32 */	fmuls f0, f0, f0
/* 80710E68  EC 41 00 2A */	fadds f2, f1, f0
/* 80710E6C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80710E70  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80710E74  40 81 00 0C */	ble lbl_80710E80
/* 80710E78  FC 00 10 34 */	frsqrte f0, f2
/* 80710E7C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80710E80:
/* 80710E80  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 80710E84  4B B5 67 F0 */	b cM_atan2s__Fff
/* 80710E88  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80710E8C  7C 00 1A 14 */	add r0, r0, r3
/* 80710E90  7C 19 07 34 */	extsh r25, r0
/* 80710E94  2C 18 27 10 */	cmpwi r24, 0x2710
/* 80710E98  40 81 00 0C */	ble lbl_80710EA4
/* 80710E9C  3B 00 27 10 */	li r24, 0x2710
/* 80710EA0  48 00 00 10 */	b lbl_80710EB0
lbl_80710EA4:
/* 80710EA4  2C 18 D8 F0 */	cmpwi r24, -10000
/* 80710EA8  40 80 00 08 */	bge lbl_80710EB0
/* 80710EAC  3B 00 D8 F0 */	li r24, -10000
lbl_80710EB0:
/* 80710EB0  2C 19 27 10 */	cmpwi r25, 0x2710
/* 80710EB4  40 81 00 0C */	ble lbl_80710EC0
/* 80710EB8  3B 20 27 10 */	li r25, 0x2710
/* 80710EBC  48 00 00 10 */	b lbl_80710ECC
lbl_80710EC0:
/* 80710EC0  2C 19 B1 E0 */	cmpwi r25, -20000
/* 80710EC4  40 80 00 08 */	bge lbl_80710ECC
/* 80710EC8  3B 20 B1 E0 */	li r25, -20000
lbl_80710ECC:
/* 80710ECC  38 7D 06 D6 */	addi r3, r29, 0x6d6
/* 80710ED0  7F 00 07 34 */	extsh r0, r24
/* 80710ED4  7C 00 0E 70 */	srawi r0, r0, 1
/* 80710ED8  7C 00 01 94 */	addze r0, r0
/* 80710EDC  7C 04 07 34 */	extsh r4, r0
/* 80710EE0  38 A0 00 02 */	li r5, 2
/* 80710EE4  7F 86 E3 78 */	mr r6, r28
/* 80710EE8  4B B5 F7 20 */	b cLib_addCalcAngleS2__FPssss
/* 80710EEC  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 80710EF0  7F 20 07 34 */	extsh r0, r25
/* 80710EF4  7C 00 0E 70 */	srawi r0, r0, 1
/* 80710EF8  7C 00 01 94 */	addze r0, r0
/* 80710EFC  7C 04 07 34 */	extsh r4, r0
/* 80710F00  38 A0 00 02 */	li r5, 2
/* 80710F04  7F 86 E3 78 */	mr r6, r28
/* 80710F08  4B B5 F7 00 */	b cLib_addCalcAngleS2__FPssss
lbl_80710F0C:
/* 80710F0C  38 00 00 00 */	li r0, 0
/* 80710F10  B0 1D 06 DC */	sth r0, 0x6dc(r29)
/* 80710F14  48 00 00 34 */	b lbl_80710F48
lbl_80710F18:
/* 80710F18  38 7D 06 D6 */	addi r3, r29, 0x6d6
/* 80710F1C  38 80 00 00 */	li r4, 0
/* 80710F20  38 A0 00 02 */	li r5, 2
/* 80710F24  7F 86 E3 78 */	mr r6, r28
/* 80710F28  4B B5 F6 E0 */	b cLib_addCalcAngleS2__FPssss
/* 80710F2C  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 80710F30  38 80 00 00 */	li r4, 0
/* 80710F34  38 A0 00 02 */	li r5, 2
/* 80710F38  7F 86 E3 78 */	mr r6, r28
/* 80710F3C  4B B5 F6 CC */	b cLib_addCalcAngleS2__FPssss
/* 80710F40  38 00 00 00 */	li r0, 0
/* 80710F44  B0 1D 06 DC */	sth r0, 0x6dc(r29)
lbl_80710F48:
/* 80710F48  38 7D 06 DA */	addi r3, r29, 0x6da
/* 80710F4C  A8 9D 06 DC */	lha r4, 0x6dc(r29)
/* 80710F50  38 A0 00 04 */	li r5, 4
/* 80710F54  38 C0 04 00 */	li r6, 0x400
/* 80710F58  4B B5 F6 B0 */	b cLib_addCalcAngleS2__FPssss
/* 80710F5C  A8 7D 06 DE */	lha r3, 0x6de(r29)
/* 80710F60  2C 03 00 00 */	cmpwi r3, 0
/* 80710F64  41 82 00 5C */	beq lbl_80710FC0
/* 80710F68  38 03 FF FF */	addi r0, r3, -1
/* 80710F6C  B0 1D 06 DE */	sth r0, 0x6de(r29)
/* 80710F70  A8 9D 06 DE */	lha r4, 0x6de(r29)
/* 80710F74  1C 04 2E E0 */	mulli r0, r4, 0x2ee0
/* 80710F78  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80710F7C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80710F80  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80710F84  7C 63 04 2E */	lfsx f3, r3, r0
/* 80710F88  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 80710F8C  C8 3E 00 88 */	lfd f1, 0x88(r30)
/* 80710F90  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80710F94  90 01 02 34 */	stw r0, 0x234(r1)
/* 80710F98  3C 00 43 30 */	lis r0, 0x4330
/* 80710F9C  90 01 02 30 */	stw r0, 0x230(r1)
/* 80710FA0  C8 01 02 30 */	lfd f0, 0x230(r1)
/* 80710FA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80710FA8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80710FAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80710FB0  FC 00 00 1E */	fctiwz f0, f0
/* 80710FB4  D8 01 02 38 */	stfd f0, 0x238(r1)
/* 80710FB8  80 01 02 3C */	lwz r0, 0x23c(r1)
/* 80710FBC  B0 1D 06 DA */	sth r0, 0x6da(r29)
lbl_80710FC0:
/* 80710FC0  C0 3D 07 2C */	lfs f1, 0x72c(r29)
/* 80710FC4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80710FC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80710FCC  40 81 00 B0 */	ble lbl_8071107C
/* 80710FD0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80710FD4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80710FD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80710FDC  A8 9D 07 30 */	lha r4, 0x730(r29)
/* 80710FE0  4B 8F B3 FC */	b mDoMtx_YrotS__FPA4_fs
/* 80710FE4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80710FE8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80710FEC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80710FF0  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80710FF4  C0 1D 07 2C */	lfs f0, 0x72c(r29)
/* 80710FF8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80710FFC  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 80711000  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 80711004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80711008  40 81 00 08 */	ble lbl_80711010
/* 8071100C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
lbl_80711010:
/* 80711010  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80711014  38 81 00 AC */	addi r4, r1, 0xac
/* 80711018  4B B5 FE D4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8071101C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80711020  FC 00 00 1E */	fctiwz f0, f0
/* 80711024  D8 01 02 38 */	stfd f0, 0x238(r1)
/* 80711028  80 01 02 3C */	lwz r0, 0x23c(r1)
/* 8071102C  B0 1D 07 86 */	sth r0, 0x786(r29)
/* 80711030  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80711034  FC 00 00 1E */	fctiwz f0, f0
/* 80711038  D8 01 02 30 */	stfd f0, 0x230(r1)
/* 8071103C  80 01 02 34 */	lwz r0, 0x234(r1)
/* 80711040  B0 1D 07 84 */	sth r0, 0x784(r29)
/* 80711044  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80711048  FC 00 00 1E */	fctiwz f0, f0
/* 8071104C  D8 01 02 40 */	stfd f0, 0x240(r1)
/* 80711050  80 01 02 44 */	lwz r0, 0x244(r1)
/* 80711054  B0 1D 07 8C */	sth r0, 0x78c(r29)
/* 80711058  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8071105C  FC 00 00 1E */	fctiwz f0, f0
/* 80711060  D8 01 02 48 */	stfd f0, 0x248(r1)
/* 80711064  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 80711068  B0 1D 07 8A */	sth r0, 0x78a(r29)
/* 8071106C  38 7D 07 2C */	addi r3, r29, 0x72c
/* 80711070  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80711074  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80711078  4B B5 EA 08 */	b cLib_addCalc0__FPfff
lbl_8071107C:
/* 8071107C  C0 1D 07 3C */	lfs f0, 0x73c(r29)
/* 80711080  FC 20 02 10 */	fabs f1, f0
/* 80711084  FC 40 08 18 */	frsp f2, f1
/* 80711088  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8071108C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80711090  40 81 00 60 */	ble lbl_807110F0
/* 80711094  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80711098  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8071109C  A8 1D 07 40 */	lha r0, 0x740(r29)
/* 807110A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807110A4  7C 63 02 14 */	add r3, r3, r0
/* 807110A8  C0 63 00 04 */	lfs f3, 4(r3)
/* 807110AC  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 807110B0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 807110B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 807110B8  FC 00 00 1E */	fctiwz f0, f0
/* 807110BC  D8 01 02 48 */	stfd f0, 0x248(r1)
/* 807110C0  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 807110C4  B0 1D 07 8A */	sth r0, 0x78a(r29)
/* 807110C8  A8 7D 07 90 */	lha r3, 0x790(r29)
/* 807110CC  A8 1D 07 8A */	lha r0, 0x78a(r29)
/* 807110D0  7C 03 02 14 */	add r0, r3, r0
/* 807110D4  B0 1D 07 90 */	sth r0, 0x790(r29)
/* 807110D8  38 7D 07 3C */	addi r3, r29, 0x73c
/* 807110DC  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 807110E0  4B B5 E9 A0 */	b cLib_addCalc0__FPfff
/* 807110E4  A8 7D 07 40 */	lha r3, 0x740(r29)
/* 807110E8  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 807110EC  B0 1D 07 40 */	sth r0, 0x740(r29)
lbl_807110F0:
/* 807110F0  C0 1D 07 34 */	lfs f0, 0x734(r29)
/* 807110F4  FC 20 02 10 */	fabs f1, f0
/* 807110F8  FC 40 08 18 */	frsp f2, f1
/* 807110FC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80711100  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80711104  40 81 00 50 */	ble lbl_80711154
/* 80711108  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8071110C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80711110  A8 1D 07 38 */	lha r0, 0x738(r29)
/* 80711114  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80711118  7C 63 02 14 */	add r3, r3, r0
/* 8071111C  C0 63 00 04 */	lfs f3, 4(r3)
/* 80711120  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 80711124  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80711128  EC 02 00 32 */	fmuls f0, f2, f0
/* 8071112C  FC 00 00 1E */	fctiwz f0, f0
/* 80711130  D8 01 02 48 */	stfd f0, 0x248(r1)
/* 80711134  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 80711138  B0 1D 07 84 */	sth r0, 0x784(r29)
/* 8071113C  38 7D 07 34 */	addi r3, r29, 0x734
/* 80711140  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80711144  4B B5 E9 3C */	b cLib_addCalc0__FPfff
/* 80711148  A8 7D 07 38 */	lha r3, 0x738(r29)
/* 8071114C  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 80711150  B0 1D 07 38 */	sth r0, 0x738(r29)
lbl_80711154:
/* 80711154  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80711158  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8071115C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80711160  40 80 00 30 */	bge lbl_80711190
/* 80711164  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 80711168  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8071116C  41 82 00 24 */	beq lbl_80711190
/* 80711170  38 7D 07 3C */	addi r3, r29, 0x73c
/* 80711174  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80711178  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 8071117C  4B B5 E9 04 */	b cLib_addCalc0__FPfff
/* 80711180  38 7D 07 34 */	addi r3, r29, 0x734
/* 80711184  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80711188  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 8071118C  4B B5 E8 F4 */	b cLib_addCalc0__FPfff
lbl_80711190:
/* 80711190  C0 3D 06 E4 */	lfs f1, 0x6e4(r29)
/* 80711194  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80711198  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8071119C  41 82 01 54 */	beq lbl_807112F0
/* 807111A0  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 807111A4  A8 1D 07 06 */	lha r0, 0x706(r29)
/* 807111A8  7C 03 00 50 */	subf r0, r3, r0
/* 807111AC  7C 04 07 34 */	extsh r4, r0
/* 807111B0  20 64 40 00 */	subfic r3, r4, 0x4000
/* 807111B4  B0 7D 07 98 */	sth r3, 0x798(r29)
/* 807111B8  A8 1D 07 98 */	lha r0, 0x798(r29)
/* 807111BC  2C 00 17 70 */	cmpwi r0, 0x1770
/* 807111C0  40 81 00 10 */	ble lbl_807111D0
/* 807111C4  38 00 17 70 */	li r0, 0x1770
/* 807111C8  B0 1D 07 98 */	sth r0, 0x798(r29)
/* 807111CC  48 00 00 14 */	b lbl_807111E0
lbl_807111D0:
/* 807111D0  2C 00 DC D8 */	cmpwi r0, -9000
/* 807111D4  40 80 00 0C */	bge lbl_807111E0
/* 807111D8  38 00 DC D8 */	li r0, -9000
/* 807111DC  B0 1D 07 98 */	sth r0, 0x798(r29)
lbl_807111E0:
/* 807111E0  B0 7D 07 9E */	sth r3, 0x79e(r29)
/* 807111E4  A8 1D 07 9E */	lha r0, 0x79e(r29)
/* 807111E8  2C 00 42 68 */	cmpwi r0, 0x4268
/* 807111EC  40 81 00 10 */	ble lbl_807111FC
/* 807111F0  38 00 42 68 */	li r0, 0x4268
/* 807111F4  B0 1D 07 9E */	sth r0, 0x79e(r29)
/* 807111F8  48 00 00 14 */	b lbl_8071120C
lbl_807111FC:
/* 807111FC  7C 00 07 35 */	extsh. r0, r0
/* 80711200  40 80 00 0C */	bge lbl_8071120C
/* 80711204  38 00 00 00 */	li r0, 0
/* 80711208  B0 1D 07 9E */	sth r0, 0x79e(r29)
lbl_8071120C:
/* 8071120C  38 64 40 00 */	addi r3, r4, 0x4000
/* 80711210  B0 7D 07 A4 */	sth r3, 0x7a4(r29)
/* 80711214  A8 1D 07 A4 */	lha r0, 0x7a4(r29)
/* 80711218  2C 00 17 70 */	cmpwi r0, 0x1770
/* 8071121C  40 81 00 10 */	ble lbl_8071122C
/* 80711220  38 00 17 70 */	li r0, 0x1770
/* 80711224  B0 1D 07 A4 */	sth r0, 0x7a4(r29)
/* 80711228  48 00 00 14 */	b lbl_8071123C
lbl_8071122C:
/* 8071122C  2C 00 DC D8 */	cmpwi r0, -9000
/* 80711230  40 80 00 0C */	bge lbl_8071123C
/* 80711234  38 00 DC D8 */	li r0, -9000
/* 80711238  B0 1D 07 A4 */	sth r0, 0x7a4(r29)
lbl_8071123C:
/* 8071123C  B0 7D 07 AA */	sth r3, 0x7aa(r29)
/* 80711240  A8 1D 07 AA */	lha r0, 0x7aa(r29)
/* 80711244  2C 00 42 68 */	cmpwi r0, 0x4268
/* 80711248  40 81 00 10 */	ble lbl_80711258
/* 8071124C  38 00 42 68 */	li r0, 0x4268
/* 80711250  B0 1D 07 AA */	sth r0, 0x7aa(r29)
/* 80711254  48 00 00 14 */	b lbl_80711268
lbl_80711258:
/* 80711258  7C 00 07 35 */	extsh. r0, r0
/* 8071125C  40 80 00 0C */	bge lbl_80711268
/* 80711260  38 00 00 00 */	li r0, 0
/* 80711264  B0 1D 07 AA */	sth r0, 0x7aa(r29)
lbl_80711268:
/* 80711268  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8071126C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80711270  80 63 00 00 */	lwz r3, 0(r3)
/* 80711274  4B 8F B1 68 */	b mDoMtx_YrotS__FPA4_fs
/* 80711278  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8071127C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80711280  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80711284  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 80711288  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8071128C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80711290  38 81 00 AC */	addi r4, r1, 0xac
/* 80711294  4B B5 FC 58 */	b MtxPosition__FP4cXyzP4cXyz
/* 80711298  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8071129C  FC 00 00 50 */	fneg f0, f0
/* 807112A0  FC 00 00 1E */	fctiwz f0, f0
/* 807112A4  D8 01 02 48 */	stfd f0, 0x248(r1)
/* 807112A8  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 807112AC  B0 1D 08 18 */	sth r0, 0x818(r29)
/* 807112B0  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 807112B4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 807112B8  FC 00 00 50 */	fneg f0, f0
/* 807112BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 807112C0  FC 00 00 1E */	fctiwz f0, f0
/* 807112C4  D8 01 02 40 */	stfd f0, 0x240(r1)
/* 807112C8  80 01 02 44 */	lwz r0, 0x244(r1)
/* 807112CC  B0 1D 08 16 */	sth r0, 0x816(r29)
/* 807112D0  A8 1D 08 16 */	lha r0, 0x816(r29)
/* 807112D4  2C 00 27 10 */	cmpwi r0, 0x2710
/* 807112D8  40 81 00 0C */	ble lbl_807112E4
/* 807112DC  38 00 27 10 */	li r0, 0x2710
/* 807112E0  B0 1D 08 16 */	sth r0, 0x816(r29)
lbl_807112E4:
/* 807112E4  A8 7D 08 16 */	lha r3, 0x816(r29)
/* 807112E8  38 03 17 70 */	addi r0, r3, 0x1770
/* 807112EC  B0 1D 08 16 */	sth r0, 0x816(r29)
lbl_807112F0:
/* 807112F0  3B 80 00 00 */	li r28, 0
/* 807112F4  3B 60 00 00 */	li r27, 0
/* 807112F8  3B 40 00 00 */	li r26, 0
/* 807112FC  3B 20 00 00 */	li r25, 0
/* 80711300  3C 60 80 71 */	lis r3, j_spd@ha
/* 80711304  3B E3 3C 50 */	addi r31, r3, j_spd@l
lbl_80711308:
/* 80711308  7F 1D CA 14 */	add r24, r29, r25
/* 8071130C  38 78 07 42 */	addi r3, r24, 0x742
/* 80711310  A8 98 07 84 */	lha r4, 0x784(r24)
/* 80711314  38 A0 00 02 */	li r5, 2
/* 80711318  7C DF D2 AE */	lhax r6, r31, r26
/* 8071131C  4B B5 F2 EC */	b cLib_addCalcAngleS2__FPssss
/* 80711320  38 78 07 44 */	addi r3, r24, 0x744
/* 80711324  A8 98 07 86 */	lha r4, 0x786(r24)
/* 80711328  38 A0 00 02 */	li r5, 2
/* 8071132C  7C DF D2 AE */	lhax r6, r31, r26
/* 80711330  4B B5 F2 D8 */	b cLib_addCalcAngleS2__FPssss
/* 80711334  38 78 07 46 */	addi r3, r24, 0x746
/* 80711338  A8 98 07 88 */	lha r4, 0x788(r24)
/* 8071133C  38 A0 00 02 */	li r5, 2
/* 80711340  7C DF D2 AE */	lhax r6, r31, r26
/* 80711344  4B B5 F2 C4 */	b cLib_addCalcAngleS2__FPssss
/* 80711348  38 00 00 00 */	li r0, 0
/* 8071134C  B0 18 07 88 */	sth r0, 0x788(r24)
/* 80711350  B0 18 07 84 */	sth r0, 0x784(r24)
/* 80711354  2C 1C 00 03 */	cmpwi r28, 3
/* 80711358  41 80 00 58 */	blt lbl_807113B0
/* 8071135C  2C 1C 00 06 */	cmpwi r28, 6
/* 80711360  41 81 00 50 */	bgt lbl_807113B0
/* 80711364  38 9A 07 DC */	addi r4, r26, 0x7dc
/* 80711368  7C 7D 22 AE */	lhax r3, r29, r4
/* 8071136C  2C 03 00 00 */	cmpwi r3, 0
/* 80711370  40 82 00 34 */	bne lbl_807113A4
/* 80711374  2C 1C 00 04 */	cmpwi r28, 4
/* 80711378  41 82 00 0C */	beq lbl_80711384
/* 8071137C  2C 1C 00 06 */	cmpwi r28, 6
/* 80711380  40 82 00 0C */	bne lbl_8071138C
lbl_80711384:
/* 80711384  38 C0 06 00 */	li r6, 0x600
/* 80711388  48 00 00 08 */	b lbl_80711390
lbl_8071138C:
/* 8071138C  38 C0 08 00 */	li r6, 0x800
lbl_80711390:
/* 80711390  38 78 07 86 */	addi r3, r24, 0x786
/* 80711394  38 80 00 00 */	li r4, 0
/* 80711398  38 A0 00 01 */	li r5, 1
/* 8071139C  4B B5 F2 6C */	b cLib_addCalcAngleS2__FPssss
/* 807113A0  48 00 00 18 */	b lbl_807113B8
lbl_807113A4:
/* 807113A4  38 03 FF FF */	addi r0, r3, -1
/* 807113A8  7C 1D 23 2E */	sthx r0, r29, r4
/* 807113AC  48 00 00 0C */	b lbl_807113B8
lbl_807113B0:
/* 807113B0  38 00 00 00 */	li r0, 0
/* 807113B4  B0 18 07 86 */	sth r0, 0x786(r24)
lbl_807113B8:
/* 807113B8  2C 1C 00 03 */	cmpwi r28, 3
/* 807113BC  41 80 00 40 */	blt lbl_807113FC
/* 807113C0  A8 1D 06 AC */	lha r0, 0x6ac(r29)
/* 807113C4  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 807113C8  7C 00 DA 14 */	add r0, r0, r27
/* 807113CC  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 807113D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807113D4  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l
/* 807113D8  7C 60 22 14 */	add r3, r0, r4
/* 807113DC  C0 23 00 04 */	lfs f1, 4(r3)
/* 807113E0  C0 1D 07 C8 */	lfs f0, 0x7c8(r29)
/* 807113E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 807113E8  FC 00 00 1E */	fctiwz f0, f0
/* 807113EC  D8 01 02 48 */	stfd f0, 0x248(r1)
/* 807113F0  80 61 02 4C */	lwz r3, 0x24c(r1)
/* 807113F4  38 1A 07 CC */	addi r0, r26, 0x7cc
/* 807113F8  7C 7D 03 2E */	sthx r3, r29, r0
lbl_807113FC:
/* 807113FC  3B 9C 00 01 */	addi r28, r28, 1
/* 80711400  2C 1C 00 0B */	cmpwi r28, 0xb
/* 80711404  3B 7B 4E 20 */	addi r27, r27, 0x4e20
/* 80711408  3B 5A 00 02 */	addi r26, r26, 2
/* 8071140C  3B 39 00 06 */	addi r25, r25, 6
/* 80711410  41 80 FE F8 */	blt lbl_80711308
/* 80711414  38 7D 07 C8 */	addi r3, r29, 0x7c8
/* 80711418  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8071141C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80711420  4B B5 E6 60 */	b cLib_addCalc0__FPfff
/* 80711424  38 7D 08 12 */	addi r3, r29, 0x812
/* 80711428  A8 9D 08 18 */	lha r4, 0x818(r29)
/* 8071142C  38 A0 00 02 */	li r5, 2
/* 80711430  38 C0 08 00 */	li r6, 0x800
/* 80711434  4B B5 F1 D4 */	b cLib_addCalcAngleS2__FPssss
/* 80711438  38 7D 08 10 */	addi r3, r29, 0x810
/* 8071143C  A8 9D 08 16 */	lha r4, 0x816(r29)
/* 80711440  38 A0 00 02 */	li r5, 2
/* 80711444  38 C0 08 00 */	li r6, 0x800
/* 80711448  4B B5 F1 C0 */	b cLib_addCalcAngleS2__FPssss
/* 8071144C  38 00 00 00 */	li r0, 0
/* 80711450  B0 1D 08 16 */	sth r0, 0x816(r29)
/* 80711454  B0 1D 08 18 */	sth r0, 0x818(r29)
/* 80711458  A8 7D 08 08 */	lha r3, 0x808(r29)
/* 8071145C  2C 03 00 00 */	cmpwi r3, 0
/* 80711460  41 82 00 0C */	beq lbl_8071146C
/* 80711464  38 03 FF FF */	addi r0, r3, -1
/* 80711468  B0 1D 08 08 */	sth r0, 0x808(r29)
lbl_8071146C:
/* 8071146C  A8 1D 08 08 */	lha r0, 0x808(r29)
/* 80711470  C8 3E 00 88 */	lfd f1, 0x88(r30)
/* 80711474  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80711478  90 01 02 4C */	stw r0, 0x24c(r1)
/* 8071147C  3C 00 43 30 */	lis r0, 0x4330
/* 80711480  90 01 02 48 */	stw r0, 0x248(r1)
/* 80711484  C8 01 02 48 */	lfd f0, 0x248(r1)
/* 80711488  EC 40 08 28 */	fsubs f2, f0, f1
/* 8071148C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80711490  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80711494  40 81 00 08 */	ble lbl_8071149C
/* 80711498  FC 40 00 90 */	fmr f2, f0
lbl_8071149C:
/* 8071149C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 807114A0  38 60 00 00 */	li r3, 0
/* 807114A4  38 80 00 00 */	li r4, 0
/* 807114A8  38 A0 00 00 */	li r5, 0
/* 807114AC  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha
/* 807114B0  38 C6 9A 20 */	addi r6, r6, sincosTable___5JMath@l
/* 807114B4  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 807114B8  38 00 00 04 */	li r0, 4
/* 807114BC  7C 09 03 A6 */	mtctr r0
lbl_807114C0:
/* 807114C0  A8 1D 06 AC */	lha r0, 0x6ac(r29)
/* 807114C4  1C 00 13 88 */	mulli r0, r0, 0x1388
/* 807114C8  7C 00 2A 14 */	add r0, r0, r5
/* 807114CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807114D0  7C 06 04 2E */	lfsx f0, r6, r0
/* 807114D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 807114D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 807114DC  FC 00 00 1E */	fctiwz f0, f0
/* 807114E0  D8 01 02 48 */	stfd f0, 0x248(r1)
/* 807114E4  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 807114E8  7C FD 22 14 */	add r7, r29, r4
/* 807114EC  B0 07 07 EE */	sth r0, 0x7ee(r7)
/* 807114F0  A8 1D 06 AC */	lha r0, 0x6ac(r29)
/* 807114F4  1C 00 12 C0 */	mulli r0, r0, 0x12c0
/* 807114F8  7C 00 1A 14 */	add r0, r0, r3
/* 807114FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80711500  7C 06 04 2E */	lfsx f0, r6, r0
/* 80711504  EC 01 00 32 */	fmuls f0, f1, f0
/* 80711508  EC 02 00 32 */	fmuls f0, f2, f0
/* 8071150C  FC 00 00 1E */	fctiwz f0, f0
/* 80711510  D8 01 02 40 */	stfd f0, 0x240(r1)
/* 80711514  80 01 02 44 */	lwz r0, 0x244(r1)
/* 80711518  B0 07 07 F0 */	sth r0, 0x7f0(r7)
/* 8071151C  38 63 CD 38 */	addi r3, r3, -13000
/* 80711520  38 84 00 06 */	addi r4, r4, 6
/* 80711524  38 A5 C5 68 */	addi r5, r5, -15000
/* 80711528  42 00 FF 98 */	bdnz lbl_807114C0
/* 8071152C  38 7D 08 06 */	addi r3, r29, 0x806
/* 80711530  38 80 00 00 */	li r4, 0
/* 80711534  38 A0 00 04 */	li r5, 4
/* 80711538  38 C0 01 00 */	li r6, 0x100
/* 8071153C  4B B5 F0 CC */	b cLib_addCalcAngleS2__FPssss
/* 80711540  88 7D 07 16 */	lbz r3, 0x716(r29)
/* 80711544  7C 60 07 75 */	extsb. r0, r3
/* 80711548  41 82 02 EC */	beq lbl_80711834
/* 8071154C  38 03 FF FF */	addi r0, r3, -1
/* 80711550  98 1D 07 16 */	stb r0, 0x716(r29)
/* 80711554  A8 1D 07 04 */	lha r0, 0x704(r29)
/* 80711558  2C 00 00 00 */	cmpwi r0, 0
/* 8071155C  41 82 02 D8 */	beq lbl_80711834
/* 80711560  38 61 01 34 */	addi r3, r1, 0x134
/* 80711564  4B 96 60 18 */	b __ct__11dBgS_GndChkFv
/* 80711568  3B 80 00 00 */	li r28, 0
/* 8071156C  3B E0 00 00 */	li r31, 0
/* 80711570  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 80711574  80 63 00 04 */	lwz r3, 4(r3)
/* 80711578  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8071157C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80711580  38 63 00 60 */	addi r3, r3, 0x60
/* 80711584  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80711588  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8071158C  80 84 00 00 */	lwz r4, 0(r4)
/* 80711590  4B C3 4F 20 */	b PSMTXCopy
/* 80711594  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80711598  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8071159C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807115A0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807115A4  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807115A8  38 81 00 94 */	addi r4, r1, 0x94
/* 807115AC  4B B5 F9 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 807115B0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 807115B4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807115B8  EC 00 08 2A */	fadds f0, f0, f1
/* 807115BC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807115C0  EC 00 08 2A */	fadds f0, f0, f1
/* 807115C4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807115C8  38 61 01 34 */	addi r3, r1, 0x134
/* 807115CC  38 81 00 94 */	addi r4, r1, 0x94
/* 807115D0  4B B5 67 58 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807115D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807115D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807115DC  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 807115E0  7F 03 C3 78 */	mr r3, r24
/* 807115E4  38 81 01 34 */	addi r4, r1, 0x134
/* 807115E8  4B 96 2E B8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807115EC  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 807115F0  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 807115F4  FC 40 08 18 */	frsp f2, f1
/* 807115F8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 807115FC  41 82 01 04 */	beq lbl_80711700
/* 80711600  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80711604  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80711608  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8071160C  EC 01 10 2A */	fadds f0, f1, f2
/* 80711610  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80711614  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80711618  EC 00 08 2A */	fadds f0, f0, f1
/* 8071161C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80711620  38 61 01 34 */	addi r3, r1, 0x134
/* 80711624  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80711628  4B B5 66 E4 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 8071162C  7F 03 C3 78 */	mr r3, r24
/* 80711630  38 81 01 34 */	addi r4, r1, 0x134
/* 80711634  4B 96 2E 6C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80711638  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8071163C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80711640  FC 20 08 18 */	frsp f1, f1
/* 80711644  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80711648  41 82 00 38 */	beq lbl_80711680
/* 8071164C  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80711650  EC 21 00 28 */	fsubs f1, f1, f0
/* 80711654  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 80711658  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8071165C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80711660  4B B5 60 14 */	b cM_atan2s__Fff
/* 80711664  7C 03 00 D0 */	neg r0, r3
/* 80711668  7C 1F 07 34 */	extsh r31, r0
/* 8071166C  2C 1F 30 00 */	cmpwi r31, 0x3000
/* 80711670  41 81 00 0C */	bgt lbl_8071167C
/* 80711674  2C 1F D0 00 */	cmpwi r31, -12288
/* 80711678  40 80 00 08 */	bge lbl_80711680
lbl_8071167C:
/* 8071167C  3B E0 00 00 */	li r31, 0
lbl_80711680:
/* 80711680  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80711684  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80711688  EC 00 08 2A */	fadds f0, f0, f1
/* 8071168C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80711690  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80711694  EC 01 00 2A */	fadds f0, f1, f0
/* 80711698  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8071169C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 807116A0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807116A4  38 61 01 34 */	addi r3, r1, 0x134
/* 807116A8  38 81 00 A0 */	addi r4, r1, 0xa0
/* 807116AC  4B B5 66 60 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 807116B0  7F 03 C3 78 */	mr r3, r24
/* 807116B4  38 81 01 34 */	addi r4, r1, 0x134
/* 807116B8  4B 96 2D E8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807116BC  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 807116C0  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 807116C4  FC 20 08 18 */	frsp f1, f1
/* 807116C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807116CC  41 82 00 34 */	beq lbl_80711700
/* 807116D0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 807116D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 807116D8  C0 41 00 A0 */	lfs f2, 0xa0(r1)
/* 807116DC  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 807116E0  EC 42 00 28 */	fsubs f2, f2, f0
/* 807116E4  4B B5 5F 90 */	b cM_atan2s__Fff
/* 807116E8  7C 7C 07 34 */	extsh r28, r3
/* 807116EC  2C 1C 30 00 */	cmpwi r28, 0x3000
/* 807116F0  41 81 00 0C */	bgt lbl_807116FC
/* 807116F4  2C 1C D0 00 */	cmpwi r28, -12288
/* 807116F8  40 80 00 08 */	bge lbl_80711700
lbl_807116FC:
/* 807116FC  3B 80 00 00 */	li r28, 0
lbl_80711700:
/* 80711700  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80711704  4B 96 65 64 */	b __ct__11dBgS_LinChkFv
/* 80711708  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8071170C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80711710  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80711714  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80711718  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8071171C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80711720  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80711724  EC 01 00 2A */	fadds f0, f1, f0
/* 80711728  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8071172C  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 80711730  80 63 00 04 */	lwz r3, 4(r3)
/* 80711734  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80711738  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8071173C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80711740  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80711744  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80711748  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8071174C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80711750  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80711754  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80711758  80 84 00 00 */	lwz r4, 0(r4)
/* 8071175C  4B C3 4D 54 */	b PSMTXCopy
/* 80711760  38 61 00 88 */	addi r3, r1, 0x88
/* 80711764  38 81 00 70 */	addi r4, r1, 0x70
/* 80711768  4B B5 F7 84 */	b MtxPosition__FP4cXyzP4cXyz
/* 8071176C  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80711770  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80711774  EC 01 00 2A */	fadds f0, f1, f0
/* 80711778  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8071177C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80711780  38 81 00 7C */	addi r4, r1, 0x7c
/* 80711784  38 A1 00 70 */	addi r5, r1, 0x70
/* 80711788  7F A6 EB 78 */	mr r6, r29
/* 8071178C  4B 96 65 D8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80711790  7F 03 C3 78 */	mr r3, r24
/* 80711794  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80711798  4B 96 2C 1C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8071179C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807117A0  41 82 00 74 */	beq lbl_80711814
/* 807117A4  38 61 00 28 */	addi r3, r1, 0x28
/* 807117A8  38 81 00 7C */	addi r4, r1, 0x7c
/* 807117AC  38 A1 00 70 */	addi r5, r1, 0x70
/* 807117B0  4B B5 53 84 */	b __mi__4cXyzCFRC3Vec
/* 807117B4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 807117B8  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 807117BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807117C0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807117C4  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 807117C8  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 807117CC  4B B5 5E A8 */	b cM_atan2s__Fff
/* 807117D0  7C 64 1B 78 */	mr r4, r3
/* 807117D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807117D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807117DC  80 63 00 00 */	lwz r3, 0(r3)
/* 807117E0  4B 8F AB FC */	b mDoMtx_YrotS__FPA4_fs
/* 807117E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807117E8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807117EC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807117F0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 807117F4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807117F8  38 61 00 88 */	addi r3, r1, 0x88
/* 807117FC  38 81 00 AC */	addi r4, r1, 0xac
/* 80711800  4B B5 F6 EC */	b MtxPosition__FP4cXyzP4cXyz
/* 80711804  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80711808  38 81 00 AC */	addi r4, r1, 0xac
/* 8071180C  7C 65 1B 78 */	mr r5, r3
/* 80711810  4B C3 58 80 */	b PSVECAdd
lbl_80711814:
/* 80711814  B3 FD 07 10 */	sth r31, 0x710(r29)
/* 80711818  B3 9D 07 14 */	sth r28, 0x714(r29)
/* 8071181C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80711820  38 80 FF FF */	li r4, -1
/* 80711824  4B 96 64 B8 */	b __dt__11dBgS_LinChkFv
/* 80711828  38 61 01 34 */	addi r3, r1, 0x134
/* 8071182C  38 80 FF FF */	li r4, -1
/* 80711830  4B 96 5D C0 */	b __dt__11dBgS_GndChkFv
lbl_80711834:
/* 80711834  38 7D 07 0A */	addi r3, r29, 0x70a
/* 80711838  A8 9D 07 10 */	lha r4, 0x710(r29)
/* 8071183C  38 A0 00 01 */	li r5, 1
/* 80711840  38 C0 04 00 */	li r6, 0x400
/* 80711844  4B B5 ED C4 */	b cLib_addCalcAngleS2__FPssss
/* 80711848  38 7D 07 0E */	addi r3, r29, 0x70e
/* 8071184C  A8 9D 07 14 */	lha r4, 0x714(r29)
/* 80711850  38 A0 00 01 */	li r5, 1
/* 80711854  38 C0 04 00 */	li r6, 0x400
/* 80711858  4B B5 ED B0 */	b cLib_addCalcAngleS2__FPssss
/* 8071185C  88 1D 10 C4 */	lbz r0, 0x10c4(r29)
/* 80711860  7C 00 07 75 */	extsb. r0, r0
/* 80711864  41 82 00 CC */	beq lbl_80711930
/* 80711868  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 8071186C  83 23 00 04 */	lwz r25, 4(r3)
/* 80711870  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80711874  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80711878  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8071187C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80711880  3B 80 00 00 */	li r28, 0
/* 80711884  3B E0 00 00 */	li r31, 0
lbl_80711888:
/* 80711888  88 7D 10 C4 */	lbz r3, 0x10c4(r29)
/* 8071188C  7C 60 07 74 */	extsb r0, r3
/* 80711890  2C 00 00 03 */	cmpwi r0, 3
/* 80711894  41 82 00 28 */	beq lbl_807118BC
/* 80711898  2C 00 00 02 */	cmpwi r0, 2
/* 8071189C  40 82 00 0C */	bne lbl_807118A8
/* 807118A0  2C 1C 00 01 */	cmpwi r28, 1
/* 807118A4  41 82 00 18 */	beq lbl_807118BC
lbl_807118A8:
/* 807118A8  7C 60 07 74 */	extsb r0, r3
/* 807118AC  2C 00 00 01 */	cmpwi r0, 1
/* 807118B0  40 82 00 68 */	bne lbl_80711918
/* 807118B4  2C 1C 00 00 */	cmpwi r28, 0
/* 807118B8  40 82 00 60 */	bne lbl_80711918
lbl_807118BC:
/* 807118BC  80 79 00 84 */	lwz r3, 0x84(r25)
/* 807118C0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 807118C4  3C 60 80 71 */	lis r3, foot_idx@ha
/* 807118C8  38 63 3C 68 */	addi r3, r3, foot_idx@l
/* 807118CC  7C 03 F8 2E */	lwzx r0, r3, r31
/* 807118D0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807118D4  7C 64 02 14 */	add r3, r4, r0
/* 807118D8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807118DC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807118E0  80 84 00 00 */	lwz r4, 0(r4)
/* 807118E4  4B C3 4B CC */	b PSMTXCopy
/* 807118E8  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807118EC  38 81 00 AC */	addi r4, r1, 0xac
/* 807118F0  4B B5 F5 FC */	b MtxPosition__FP4cXyzP4cXyz
/* 807118F4  7C 9D FA 14 */	add r4, r29, r31
/* 807118F8  38 64 10 C8 */	addi r3, r4, 0x10c8
/* 807118FC  38 84 10 D0 */	addi r4, r4, 0x10d0
/* 80711900  38 A1 00 AC */	addi r5, r1, 0xac
/* 80711904  38 DD 04 E4 */	addi r6, r29, 0x4e4
/* 80711908  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8071190C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80711910  39 00 00 00 */	li r8, 0
/* 80711914  4B 90 B7 0C */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80711918:
/* 80711918  3B 9C 00 01 */	addi r28, r28, 1
/* 8071191C  2C 1C 00 02 */	cmpwi r28, 2
/* 80711920  3B FF 00 04 */	addi r31, r31, 4
/* 80711924  41 80 FF 64 */	blt lbl_80711888
/* 80711928  38 00 00 00 */	li r0, 0
/* 8071192C  98 1D 10 C4 */	stb r0, 0x10c4(r29)
lbl_80711930:
/* 80711930  88 7D 10 BA */	lbz r3, 0x10ba(r29)
/* 80711934  7C 60 07 75 */	extsb. r0, r3
/* 80711938  41 82 00 64 */	beq lbl_8071199C
/* 8071193C  38 03 FF FF */	addi r0, r3, -1
/* 80711940  98 1D 10 BA */	stb r0, 0x10ba(r29)
/* 80711944  88 1D 10 BA */	lbz r0, 0x10ba(r29)
/* 80711948  7C 00 07 75 */	extsb. r0, r0
/* 8071194C  40 82 00 50 */	bne lbl_8071199C
/* 80711950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80711954  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80711958  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8071195C  38 80 00 00 */	li r4, 0
/* 80711960  90 81 00 08 */	stw r4, 8(r1)
/* 80711964  38 00 FF FF */	li r0, -1
/* 80711968  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071196C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80711970  90 81 00 14 */	stw r4, 0x14(r1)
/* 80711974  90 81 00 18 */	stw r4, 0x18(r1)
/* 80711978  38 80 00 00 */	li r4, 0
/* 8071197C  38 A0 01 5E */	li r5, 0x15e
/* 80711980  38 DD 05 38 */	addi r6, r29, 0x538
/* 80711984  38 E0 00 00 */	li r7, 0
/* 80711988  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 8071198C  39 20 00 00 */	li r9, 0
/* 80711990  39 40 00 FF */	li r10, 0xff
/* 80711994  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80711998  4B 93 B0 F8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8071199C:
/* 8071199C  E3 E1 02 78 */	psq_l f31, 632(r1), 0, 0 /* qr0 */
/* 807119A0  CB E1 02 70 */	lfd f31, 0x270(r1)
/* 807119A4  39 61 02 70 */	addi r11, r1, 0x270
/* 807119A8  4B C5 08 6C */	b _restgpr_24
/* 807119AC  80 01 02 84 */	lwz r0, 0x284(r1)
/* 807119B0  7C 08 03 A6 */	mtlr r0
/* 807119B4  38 21 02 80 */	addi r1, r1, 0x280
/* 807119B8  4E 80 00 20 */	blr 
