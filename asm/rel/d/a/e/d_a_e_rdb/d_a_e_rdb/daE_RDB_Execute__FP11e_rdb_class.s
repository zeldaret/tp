lbl_80769324:
/* 80769324  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 80769328  7C 08 02 A6 */	mflr r0
/* 8076932C  90 01 02 14 */	stw r0, 0x214(r1)
/* 80769330  DB E1 02 00 */	stfd f31, 0x200(r1)
/* 80769334  F3 E1 02 08 */	psq_st f31, 520(r1), 0, 0 /* qr0 */
/* 80769338  DB C1 01 F0 */	stfd f30, 0x1f0(r1)
/* 8076933C  F3 C1 01 F8 */	psq_st f30, 504(r1), 0, 0 /* qr0 */
/* 80769340  39 61 01 F0 */	addi r11, r1, 0x1f0
/* 80769344  4B BF 8E 74 */	b _savegpr_20
/* 80769348  7C 7F 1B 78 */	mr r31, r3
/* 8076934C  3C 80 80 77 */	lis r4, lit_1109@ha
/* 80769350  3B A4 B9 C8 */	addi r29, r4, lit_1109@l
/* 80769354  3C 80 80 77 */	lis r4, lit_4007@ha
/* 80769358  3B C4 B4 5C */	addi r30, r4, lit_4007@l
/* 8076935C  88 03 0F E6 */	lbz r0, 0xfe6(r3)
/* 80769360  7C 00 07 75 */	extsb. r0, r0
/* 80769364  41 82 00 10 */	beq lbl_80769374
/* 80769368  4B FF EA ED */	bl demo_camera__FP11e_rdb_class
/* 8076936C  38 60 00 01 */	li r3, 1
/* 80769370  48 00 10 80 */	b lbl_8076A3F0
lbl_80769374:
/* 80769374  4B 8A EF 34 */	b cDmrNowMidnaTalk__Fv
/* 80769378  2C 03 00 00 */	cmpwi r3, 0
/* 8076937C  41 82 00 0C */	beq lbl_80769388
/* 80769380  38 60 00 01 */	li r3, 1
/* 80769384  48 00 10 6C */	b lbl_8076A3F0
lbl_80769388:
/* 80769388  A8 7F 06 7C */	lha r3, 0x67c(r31)
/* 8076938C  38 03 00 01 */	addi r0, r3, 1
/* 80769390  B0 1F 06 7C */	sth r0, 0x67c(r31)
/* 80769394  38 60 00 00 */	li r3, 0
/* 80769398  38 00 00 04 */	li r0, 4
/* 8076939C  7C 09 03 A6 */	mtctr r0
lbl_807693A0:
/* 807693A0  38 A3 06 B8 */	addi r5, r3, 0x6b8
/* 807693A4  7C 9F 2A AE */	lhax r4, r31, r5
/* 807693A8  2C 04 00 00 */	cmpwi r4, 0
/* 807693AC  41 82 00 0C */	beq lbl_807693B8
/* 807693B0  38 04 FF FF */	addi r0, r4, -1
/* 807693B4  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807693B8:
/* 807693B8  38 63 00 02 */	addi r3, r3, 2
/* 807693BC  42 00 FF E4 */	bdnz lbl_807693A0
/* 807693C0  A8 7F 06 C0 */	lha r3, 0x6c0(r31)
/* 807693C4  2C 03 00 00 */	cmpwi r3, 0
/* 807693C8  41 82 00 0C */	beq lbl_807693D4
/* 807693CC  38 03 FF FF */	addi r0, r3, -1
/* 807693D0  B0 1F 06 C0 */	sth r0, 0x6c0(r31)
lbl_807693D4:
/* 807693D4  A8 7F 06 C2 */	lha r3, 0x6c2(r31)
/* 807693D8  2C 03 00 00 */	cmpwi r3, 0
/* 807693DC  41 82 00 0C */	beq lbl_807693E8
/* 807693E0  38 03 FF FF */	addi r0, r3, -1
/* 807693E4  B0 1F 06 C2 */	sth r0, 0x6c2(r31)
lbl_807693E8:
/* 807693E8  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 807693EC  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 807693F0  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 807693F4  7F E3 FB 78 */	mr r3, r31
/* 807693F8  4B FF E0 31 */	bl action__FP11e_rdb_class
/* 807693FC  38 7F 07 30 */	addi r3, r31, 0x730
/* 80769400  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80769404  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80769408  3B 64 0F 38 */	addi r27, r4, 0xf38
/* 8076940C  7F 64 DB 78 */	mr r4, r27
/* 80769410  4B 90 D6 9C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80769414  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80769418  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8076941C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80769420  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80769424  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80769428  4B BD D4 C0 */	b PSMTXTrans
/* 8076942C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80769430  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80769434  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80769438  4B 8A 2F FC */	b mDoMtx_YrotM__FPA4_fs
/* 8076943C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80769440  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80769444  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80769448  4B 8A 2F 54 */	b mDoMtx_XrotM__FPA4_fs
/* 8076944C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80769450  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80769454  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80769458  4B 8A 30 74 */	b mDoMtx_ZrotM__FPA4_fs
/* 8076945C  3B 9D 00 4C */	addi r28, r29, 0x4c
/* 80769460  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80769464  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80769468  EF E1 00 32 */	fmuls f31, f1, f0
/* 8076946C  FC 20 F8 90 */	fmr f1, f31
/* 80769470  FC 40 F8 90 */	fmr f2, f31
/* 80769474  FC 60 F8 90 */	fmr f3, f31
/* 80769478  4B 8A 39 C0 */	b scaleM__14mDoMtx_stack_cFfff
/* 8076947C  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80769480  83 43 00 04 */	lwz r26, 4(r3)
/* 80769484  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80769488  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8076948C  38 9A 00 24 */	addi r4, r26, 0x24
/* 80769490  4B BD D0 20 */	b PSMTXCopy
/* 80769494  7F E3 FB 78 */	mr r3, r31
/* 80769498  4B FF F6 F9 */	bl anm_se_set__FP11e_rdb_class
/* 8076949C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807694A0  7C 03 07 74 */	extsb r3, r0
/* 807694A4  4B 8C 3B C8 */	b dComIfGp_getReverb__Fi
/* 807694A8  7C 65 1B 78 */	mr r5, r3
/* 807694AC  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 807694B0  38 80 00 00 */	li r4, 0
/* 807694B4  4B 8A 7B FC */	b play__16mDoExt_McaMorfSOFUlSc
/* 807694B8  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 807694BC  4B 8A 7D 30 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 807694C0  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 807694C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807694C8  38 63 01 20 */	addi r3, r3, 0x120
/* 807694CC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807694D0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807694D4  80 84 00 00 */	lwz r4, 0(r4)
/* 807694D8  4B BD CF D8 */	b PSMTXCopy
/* 807694DC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 807694E0  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 807694E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807694E8  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 807694EC  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 807694F0  38 61 01 9C */	addi r3, r1, 0x19c
/* 807694F4  38 9F 05 38 */	addi r4, r31, 0x538
/* 807694F8  4B B0 79 F4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807694FC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80769500  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80769504  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80769508  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8076950C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80769510  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80769514  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80769518  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8076951C  EC 01 00 2A */	fadds f0, f1, f0
/* 80769520  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80769524  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80769528  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8076952C  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 80769530  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 80769534  A8 1F 06 C0 */	lha r0, 0x6c0(r31)
/* 80769538  2C 00 00 00 */	cmpwi r0, 0
/* 8076953C  41 82 00 1C */	beq lbl_80769558
/* 80769540  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 80769544  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 80769548  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 8076954C  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 80769550  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 80769554  D0 01 01 8C */	stfs f0, 0x18c(r1)
lbl_80769558:
/* 80769558  38 61 01 6C */	addi r3, r1, 0x16c
/* 8076955C  38 9F 05 38 */	addi r4, r31, 0x538
/* 80769560  38 A1 01 84 */	addi r5, r1, 0x184
/* 80769564  4B AF D5 80 */	b __pl__4cXyzCFRC3Vec
/* 80769568  38 7F 0A 68 */	addi r3, r31, 0xa68
/* 8076956C  38 81 01 6C */	addi r4, r1, 0x16c
/* 80769570  4B B0 60 D8 */	b SetC__8cM3dGSphFRC4cXyz
/* 80769574  38 7F 0A 68 */	addi r3, r31, 0xa68
/* 80769578  C0 3E 01 84 */	lfs f1, 0x184(r30)
/* 8076957C  4B B0 61 8C */	b SetR__8cM3dGSphFf
/* 80769580  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80769584  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 80769588  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 8076958C  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80769590  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 80769594  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80769598  38 63 00 60 */	addi r3, r3, 0x60
/* 8076959C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807695A0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807695A4  80 84 00 00 */	lwz r4, 0(r4)
/* 807695A8  4B BD CF 08 */	b PSMTXCopy
/* 807695AC  38 61 01 9C */	addi r3, r1, 0x19c
/* 807695B0  38 81 01 90 */	addi r4, r1, 0x190
/* 807695B4  4B B0 79 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 807695B8  38 61 01 60 */	addi r3, r1, 0x160
/* 807695BC  38 81 01 90 */	addi r4, r1, 0x190
/* 807695C0  38 A1 01 84 */	addi r5, r1, 0x184
/* 807695C4  4B AF D5 20 */	b __pl__4cXyzCFRC3Vec
/* 807695C8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 807695CC  38 81 01 60 */	addi r4, r1, 0x160
/* 807695D0  4B B0 60 78 */	b SetC__8cM3dGSphFRC4cXyz
/* 807695D4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 807695D8  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807695DC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 807695E0  EC 21 00 32 */	fmuls f1, f1, f0
/* 807695E4  4B B0 61 24 */	b SetR__8cM3dGSphFf
/* 807695E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807695EC  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 807695F0  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 807695F4  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 807695F8  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 807695FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80769600  38 63 04 20 */	addi r3, r3, 0x420
/* 80769604  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80769608  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8076960C  80 84 00 00 */	lwz r4, 0(r4)
/* 80769610  4B BD CE A0 */	b PSMTXCopy
/* 80769614  38 61 01 9C */	addi r3, r1, 0x19c
/* 80769618  38 81 01 90 */	addi r4, r1, 0x190
/* 8076961C  4B B0 78 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80769620  38 61 01 54 */	addi r3, r1, 0x154
/* 80769624  38 81 01 90 */	addi r4, r1, 0x190
/* 80769628  38 A1 01 84 */	addi r5, r1, 0x184
/* 8076962C  4B AF D4 B8 */	b __pl__4cXyzCFRC3Vec
/* 80769630  38 7F 0C D8 */	addi r3, r31, 0xcd8
/* 80769634  38 81 01 54 */	addi r4, r1, 0x154
/* 80769638  4B B0 60 10 */	b SetC__8cM3dGSphFRC4cXyz
/* 8076963C  38 7F 0C D8 */	addi r3, r31, 0xcd8
/* 80769640  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80769644  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80769648  EC 21 00 32 */	fmuls f1, f1, f0
/* 8076964C  4B B0 60 BC */	b SetR__8cM3dGSphFf
/* 80769650  3A 80 00 00 */	li r20, 0
/* 80769654  3A E0 00 00 */	li r23, 0
/* 80769658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076965C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80769660  3B 23 23 3C */	addi r25, r3, 0x233c
lbl_80769664:
/* 80769664  7F 23 CB 78 */	mr r3, r25
/* 80769668  38 97 09 44 */	addi r4, r23, 0x944
/* 8076966C  7C 9F 22 14 */	add r4, r31, r4
/* 80769670  4B AF B5 38 */	b Set__4cCcSFP8cCcD_Obj
/* 80769674  3A 94 00 01 */	addi r20, r20, 1
/* 80769678  2C 14 00 02 */	cmpwi r20, 2
/* 8076967C  3A F7 01 38 */	addi r23, r23, 0x138
/* 80769680  40 81 FF E4 */	ble lbl_80769664
/* 80769684  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80769688  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8076968C  80 63 00 00 */	lwz r3, 0(r3)
/* 80769690  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80769694  4B 8A 2D 48 */	b mDoMtx_YrotS__FPA4_fs
/* 80769698  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8076969C  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 807696A0  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 807696A4  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 807696A8  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 807696AC  38 61 01 9C */	addi r3, r1, 0x19c
/* 807696B0  38 81 01 90 */	addi r4, r1, 0x190
/* 807696B4  4B B0 78 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 807696B8  38 61 01 90 */	addi r3, r1, 0x190
/* 807696BC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807696C0  7C 65 1B 78 */	mr r5, r3
/* 807696C4  4B BD D9 CC */	b PSVECAdd
/* 807696C8  38 7F 0E 10 */	addi r3, r31, 0xe10
/* 807696CC  38 81 01 90 */	addi r4, r1, 0x190
/* 807696D0  4B B0 5B 0C */	b SetC__8cM3dGCylFRC4cXyz
/* 807696D4  38 7F 0E 10 */	addi r3, r31, 0xe10
/* 807696D8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807696DC  4B B0 5B 24 */	b SetR__8cM3dGCylFf
/* 807696E0  38 7F 0E 10 */	addi r3, r31, 0xe10
/* 807696E4  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 807696E8  4B B0 5B 10 */	b SetH__8cM3dGCylFf
/* 807696EC  7F 23 CB 78 */	mr r3, r25
/* 807696F0  38 9F 0C EC */	addi r4, r31, 0xcec
/* 807696F4  4B AF B4 B4 */	b Set__4cCcSFP8cCcD_Obj
/* 807696F8  88 1F 06 80 */	lbz r0, 0x680(r31)
/* 807696FC  7C 00 07 74 */	extsb r0, r0
/* 80769700  2C 00 00 01 */	cmpwi r0, 1
/* 80769704  40 82 00 3C */	bne lbl_80769740
/* 80769708  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 8076970C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80769710  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 80769714  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80769718  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8076971C  80 84 00 00 */	lwz r4, 0(r4)
/* 80769720  4B BD CD 90 */	b PSMTXCopy
/* 80769724  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80769728  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8076972C  80 63 00 00 */	lwz r3, 0(r3)
/* 80769730  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 80769734  38 84 00 24 */	addi r4, r4, 0x24
/* 80769738  4B BD CD 78 */	b PSMTXCopy
/* 8076973C  48 00 02 DC */	b lbl_80769A18
lbl_80769740:
/* 80769740  2C 00 00 02 */	cmpwi r0, 2
/* 80769744  41 80 02 D4 */	blt lbl_80769A18
/* 80769748  38 7F 06 84 */	addi r3, r31, 0x684
/* 8076974C  38 9F 06 90 */	addi r4, r31, 0x690
/* 80769750  7C 65 1B 78 */	mr r5, r3
/* 80769754  4B BD D9 3C */	b PSVECAdd
/* 80769758  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 8076975C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80769760  EC 00 08 28 */	fsubs f0, f0, f1
/* 80769764  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 80769768  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 8076976C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80769770  4C 40 13 82 */	cror 2, 0, 2
/* 80769774  40 82 01 9C */	bne lbl_80769910
/* 80769778  D0 3F 06 88 */	stfs f1, 0x688(r31)
/* 8076977C  88 1F 06 80 */	lbz r0, 0x680(r31)
/* 80769780  2C 00 00 02 */	cmpwi r0, 2
/* 80769784  40 82 00 40 */	bne lbl_807697C4
/* 80769788  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 8076978C  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 80769790  EC 00 00 72 */	fmuls f0, f0, f1
/* 80769794  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 80769798  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8076979C  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 807697A0  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 807697A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 807697A8  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 807697AC  38 00 00 03 */	li r0, 3
/* 807697B0  98 1F 06 80 */	stb r0, 0x680(r31)
/* 807697B4  38 00 00 00 */	li r0, 0
/* 807697B8  B0 1F 06 A4 */	sth r0, 0x6a4(r31)
/* 807697BC  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
/* 807697C0  48 00 00 14 */	b lbl_807697D4
lbl_807697C4:
/* 807697C4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807697C8  D0 1F 06 90 */	stfs f0, 0x690(r31)
/* 807697CC  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 807697D0  D0 1F 06 98 */	stfs f0, 0x698(r31)
lbl_807697D4:
/* 807697D4  A8 7F 06 9C */	lha r3, 0x69c(r31)
/* 807697D8  A8 1F 06 A2 */	lha r0, 0x6a2(r31)
/* 807697DC  7C 03 02 14 */	add r0, r3, r0
/* 807697E0  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 807697E4  A8 1F 06 9C */	lha r0, 0x69c(r31)
/* 807697E8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 807697EC  41 80 01 0C */	blt lbl_807698F8
/* 807697F0  88 1F 06 80 */	lbz r0, 0x680(r31)
/* 807697F4  7C 00 07 74 */	extsb r0, r0
/* 807697F8  2C 00 00 03 */	cmpwi r0, 3
/* 807697FC  40 82 00 D0 */	bne lbl_807698CC
/* 80769800  38 00 00 04 */	li r0, 4
/* 80769804  98 1F 06 80 */	stb r0, 0x680(r31)
/* 80769808  38 00 40 00 */	li r0, 0x4000
/* 8076980C  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 80769810  38 00 FA 00 */	li r0, -1536
/* 80769814  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
/* 80769818  38 00 00 1E */	li r0, 0x1e
/* 8076981C  B0 1F 06 A8 */	sth r0, 0x6a8(r31)
/* 80769820  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800D8@ha */
/* 80769824  38 03 00 D8 */	addi r0, r3, 0x00D8 /* 0x000800D8@l */
/* 80769828  90 01 00 28 */	stw r0, 0x28(r1)
/* 8076982C  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80769830  38 81 00 28 */	addi r4, r1, 0x28
/* 80769834  38 A0 00 00 */	li r5, 0
/* 80769838  38 C0 FF FF */	li r6, -1
/* 8076983C  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 80769840  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80769844  7D 89 03 A6 */	mtctr r12
/* 80769848  4E 80 04 21 */	bctrl 
/* 8076984C  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 80769850  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 80769854  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80769858  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 8076985C  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 80769860  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 80769864  38 7F 0F D0 */	addi r3, r31, 0xfd0
/* 80769868  38 9F 0F D4 */	addi r4, r31, 0xfd4
/* 8076986C  38 A1 01 90 */	addi r5, r1, 0x190
/* 80769870  38 C0 00 00 */	li r6, 0
/* 80769874  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80769878  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8076987C  39 00 00 01 */	li r8, 1
/* 80769880  4B 8B 37 A0 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80769884  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 80769888  D0 1F 0F C0 */	stfs f0, 0xfc0(r31)
/* 8076988C  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 80769890  D0 1F 0F C4 */	stfs f0, 0xfc4(r31)
/* 80769894  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80769898  D0 1F 0F C8 */	stfs f0, 0xfc8(r31)
/* 8076989C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007057E@ha */
/* 807698A0  38 03 05 7E */	addi r0, r3, 0x057E /* 0x0007057E@l */
/* 807698A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807698A8  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 807698AC  38 81 00 24 */	addi r4, r1, 0x24
/* 807698B0  38 A0 00 00 */	li r5, 0
/* 807698B4  38 C0 FF FF */	li r6, -1
/* 807698B8  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 807698BC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807698C0  7D 89 03 A6 */	mtctr r12
/* 807698C4  4E 80 04 21 */	bctrl 
/* 807698C8  48 00 00 30 */	b lbl_807698F8
lbl_807698CC:
/* 807698CC  2C 00 00 04 */	cmpwi r0, 4
/* 807698D0  40 82 00 20 */	bne lbl_807698F0
/* 807698D4  38 00 00 05 */	li r0, 5
/* 807698D8  98 1F 06 80 */	stb r0, 0x680(r31)
/* 807698DC  38 00 40 00 */	li r0, 0x4000
/* 807698E0  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 807698E4  38 00 FD 00 */	li r0, -768
/* 807698E8  B0 1F 06 A2 */	sth r0, 0x6a2(r31)
/* 807698EC  48 00 00 0C */	b lbl_807698F8
lbl_807698F0:
/* 807698F0  38 00 40 00 */	li r0, 0x4000
/* 807698F4  B0 1F 06 9C */	sth r0, 0x69c(r31)
lbl_807698F8:
/* 807698F8  38 7F 06 A2 */	addi r3, r31, 0x6a2
/* 807698FC  38 80 08 00 */	li r4, 0x800
/* 80769900  38 A0 00 01 */	li r5, 1
/* 80769904  38 C0 01 00 */	li r6, 0x100
/* 80769908  4B B0 6D 00 */	b cLib_addCalcAngleS2__FPssss
/* 8076990C  48 00 00 24 */	b lbl_80769930
lbl_80769910:
/* 80769910  A8 7F 06 9E */	lha r3, 0x69e(r31)
/* 80769914  A8 1F 06 A4 */	lha r0, 0x6a4(r31)
/* 80769918  7C 03 02 14 */	add r0, r3, r0
/* 8076991C  B0 1F 06 9E */	sth r0, 0x69e(r31)
/* 80769920  A8 7F 06 9C */	lha r3, 0x69c(r31)
/* 80769924  A8 1F 06 A2 */	lha r0, 0x6a2(r31)
/* 80769928  7C 03 02 14 */	add r0, r3, r0
/* 8076992C  B0 1F 06 9C */	sth r0, 0x69c(r31)
lbl_80769930:
/* 80769930  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80769934  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80769938  C0 3F 06 84 */	lfs f1, 0x684(r31)
/* 8076993C  C0 5F 06 88 */	lfs f2, 0x688(r31)
/* 80769940  C0 7F 06 8C */	lfs f3, 0x68c(r31)
/* 80769944  4B BD CF A4 */	b PSMTXTrans
/* 80769948  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8076994C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80769950  A8 9F 06 9E */	lha r4, 0x69e(r31)
/* 80769954  4B 8A 2A E0 */	b mDoMtx_YrotM__FPA4_fs
/* 80769958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8076995C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80769960  A8 9F 06 9C */	lha r4, 0x69c(r31)
/* 80769964  4B 8A 2A 38 */	b mDoMtx_XrotM__FPA4_fs
/* 80769968  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8076996C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80769970  A8 9F 06 A0 */	lha r4, 0x6a0(r31)
/* 80769974  4B 8A 2B 58 */	b mDoMtx_ZrotM__FPA4_fs
/* 80769978  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8076997C  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 80769980  FC 60 08 90 */	fmr f3, f1
/* 80769984  4B 8A 34 18 */	b transM__14mDoMtx_stack_cFfff
/* 80769988  38 80 00 00 */	li r4, 0
/* 8076998C  A8 BF 06 A8 */	lha r5, 0x6a8(r31)
/* 80769990  7C A0 07 35 */	extsh. r0, r5
/* 80769994  41 82 00 54 */	beq lbl_807699E8
/* 80769998  1C 05 1B 58 */	mulli r0, r5, 0x1b58
/* 8076999C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807699A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807699A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807699A8  7C 63 04 2E */	lfsx f3, r3, r0
/* 807699AC  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 807699B0  C8 3E 00 D8 */	lfd f1, 0xd8(r30)
/* 807699B4  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 807699B8  90 01 01 AC */	stw r0, 0x1ac(r1)
/* 807699BC  3C 00 43 30 */	lis r0, 0x4330
/* 807699C0  90 01 01 A8 */	stw r0, 0x1a8(r1)
/* 807699C4  C8 01 01 A8 */	lfd f0, 0x1a8(r1)
/* 807699C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 807699CC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 807699D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 807699D4  FC 00 00 1E */	fctiwz f0, f0
/* 807699D8  D8 01 01 B0 */	stfd f0, 0x1b0(r1)
/* 807699DC  80 81 01 B4 */	lwz r4, 0x1b4(r1)
/* 807699E0  38 05 FF FF */	addi r0, r5, -1
/* 807699E4  B0 1F 06 A8 */	sth r0, 0x6a8(r31)
lbl_807699E8:
/* 807699E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807699EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807699F0  4B 8A 2A 44 */	b mDoMtx_YrotM__FPA4_fs
/* 807699F4  FC 20 F8 90 */	fmr f1, f31
/* 807699F8  FC 40 F8 90 */	fmr f2, f31
/* 807699FC  FC 60 F8 90 */	fmr f3, f31
/* 80769A00  4B 8A 34 38 */	b scaleM__14mDoMtx_stack_cFfff
/* 80769A04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80769A08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80769A0C  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 80769A10  38 84 00 24 */	addi r4, r4, 0x24
/* 80769A14  4B BD CA 9C */	b PSMTXCopy
lbl_80769A18:
/* 80769A18  88 1F 06 C4 */	lbz r0, 0x6c4(r31)
/* 80769A1C  7C 00 07 75 */	extsb. r0, r0
/* 80769A20  41 82 00 A0 */	beq lbl_80769AC0
/* 80769A24  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80769A28  D0 21 01 9C */	stfs f1, 0x19c(r1)
/* 80769A2C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80769A30  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 80769A34  D0 21 01 A4 */	stfs f1, 0x1a4(r1)
/* 80769A38  38 61 01 9C */	addi r3, r1, 0x19c
/* 80769A3C  38 81 01 90 */	addi r4, r1, 0x190
/* 80769A40  4B B0 74 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80769A44  C0 01 01 90 */	lfs f0, 0x190(r1)
/* 80769A48  D0 1F 0F C0 */	stfs f0, 0xfc0(r31)
/* 80769A4C  C0 01 01 94 */	lfs f0, 0x194(r1)
/* 80769A50  D0 1F 0F C4 */	stfs f0, 0xfc4(r31)
/* 80769A54  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 80769A58  D0 1F 0F C8 */	stfs f0, 0xfc8(r31)
/* 80769A5C  88 1F 06 C5 */	lbz r0, 0x6c5(r31)
/* 80769A60  7C 00 07 75 */	extsb. r0, r0
/* 80769A64  40 82 00 1C */	bne lbl_80769A80
/* 80769A68  38 00 00 01 */	li r0, 1
/* 80769A6C  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80769A70  38 7F 0E 64 */	addi r3, r31, 0xe64
/* 80769A74  38 81 01 90 */	addi r4, r1, 0x190
/* 80769A78  4B 91 B0 00 */	b StartCAt__8dCcD_SphFR4cXyz
/* 80769A7C  48 00 00 10 */	b lbl_80769A8C
lbl_80769A80:
/* 80769A80  38 7F 0E 64 */	addi r3, r31, 0xe64
/* 80769A84  38 81 01 90 */	addi r4, r1, 0x190
/* 80769A88  4B 91 B0 3C */	b MoveCAt__8dCcD_SphFR4cXyz
lbl_80769A8C:
/* 80769A8C  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80769A90  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80769A94  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80769A98  EC 21 00 32 */	fmuls f1, f1, f0
/* 80769A9C  4B B0 5C 6C */	b SetR__8cM3dGSphFf
/* 80769AA0  38 00 00 00 */	li r0, 0
/* 80769AA4  98 1F 06 C4 */	stb r0, 0x6c4(r31)
/* 80769AA8  80 1F 0E 64 */	lwz r0, 0xe64(r31)
/* 80769AAC  60 00 00 01 */	ori r0, r0, 1
/* 80769AB0  90 1F 0E 64 */	stw r0, 0xe64(r31)
/* 80769AB4  38 00 00 02 */	li r0, 2
/* 80769AB8  98 1F 06 C6 */	stb r0, 0x6c6(r31)
/* 80769ABC  48 00 00 18 */	b lbl_80769AD4
lbl_80769AC0:
/* 80769AC0  38 00 00 00 */	li r0, 0
/* 80769AC4  98 1F 06 C5 */	stb r0, 0x6c5(r31)
/* 80769AC8  80 1F 0E 64 */	lwz r0, 0xe64(r31)
/* 80769ACC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80769AD0  90 1F 0E 64 */	stw r0, 0xe64(r31)
lbl_80769AD4:
/* 80769AD4  88 7F 06 C6 */	lbz r3, 0x6c6(r31)
/* 80769AD8  7C 60 07 75 */	extsb. r0, r3
/* 80769ADC  41 82 00 6C */	beq lbl_80769B48
/* 80769AE0  7C 60 07 74 */	extsb r0, r3
/* 80769AE4  2C 00 00 01 */	cmpwi r0, 1
/* 80769AE8  40 82 00 48 */	bne lbl_80769B30
/* 80769AEC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80769AF0  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 80769AF4  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 80769AF8  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 80769AFC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80769B00  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 80769B04  38 61 01 9C */	addi r3, r1, 0x19c
/* 80769B08  38 81 01 90 */	addi r4, r1, 0x190
/* 80769B0C  4B B0 73 E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80769B10  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80769B14  38 81 01 90 */	addi r4, r1, 0x190
/* 80769B18  4B B0 5B 30 */	b SetC__8cM3dGSphFRC4cXyz
/* 80769B1C  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80769B20  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80769B24  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80769B28  EC 21 00 32 */	fmuls f1, f1, f0
/* 80769B2C  4B B0 5B DC */	b SetR__8cM3dGSphFf
lbl_80769B30:
/* 80769B30  38 00 00 00 */	li r0, 0
/* 80769B34  98 1F 06 C6 */	stb r0, 0x6c6(r31)
/* 80769B38  80 1F 0E 7C */	lwz r0, 0xe7c(r31)
/* 80769B3C  60 00 00 01 */	ori r0, r0, 1
/* 80769B40  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 80769B44  48 00 00 20 */	b lbl_80769B64
lbl_80769B48:
/* 80769B48  C0 21 01 90 */	lfs f1, 0x190(r1)
/* 80769B4C  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 80769B50  EC 01 00 2A */	fadds f0, f1, f0
/* 80769B54  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 80769B58  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80769B5C  38 81 01 90 */	addi r4, r1, 0x190
/* 80769B60  4B B0 5A E8 */	b SetC__8cM3dGSphFRC4cXyz
lbl_80769B64:
/* 80769B64  7F 23 CB 78 */	mr r3, r25
/* 80769B68  38 9F 0E 64 */	addi r4, r31, 0xe64
/* 80769B6C  4B AF B0 3C */	b Set__4cCcSFP8cCcD_Obj
/* 80769B70  7F E3 FB 78 */	mr r3, r31
/* 80769B74  4B FF E2 E1 */	bl demo_camera__FP11e_rdb_class
/* 80769B78  3A BB 3E C8 */	addi r21, r27, 0x3ec8
/* 80769B7C  7E A3 AB 78 */	mr r3, r21
/* 80769B80  3C 80 80 77 */	lis r4, stringBase0@ha
/* 80769B84  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 80769B88  38 84 00 23 */	addi r4, r4, 0x23
/* 80769B8C  4B BF EE 08 */	b strcmp
/* 80769B90  2C 03 00 00 */	cmpwi r3, 0
/* 80769B94  41 82 00 20 */	beq lbl_80769BB4
/* 80769B98  7E A3 AB 78 */	mr r3, r21
/* 80769B9C  3C 80 80 77 */	lis r4, stringBase0@ha
/* 80769BA0  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 80769BA4  38 84 00 2B */	addi r4, r4, 0x2b
/* 80769BA8  4B BF ED EC */	b strcmp
/* 80769BAC  2C 03 00 00 */	cmpwi r3, 0
/* 80769BB0  40 82 00 C4 */	bne lbl_80769C74
lbl_80769BB4:
/* 80769BB4  C3 FE 00 04 */	lfs f31, 4(r30)
/* 80769BB8  C3 DE 01 2C */	lfs f30, 0x12c(r30)
/* 80769BBC  88 1F 06 D8 */	lbz r0, 0x6d8(r31)
/* 80769BC0  7C 00 07 75 */	extsb. r0, r0
/* 80769BC4  40 82 00 18 */	bne lbl_80769BDC
/* 80769BC8  38 60 00 00 */	li r3, 0
/* 80769BCC  38 80 00 08 */	li r4, 8
/* 80769BD0  C0 3F 06 DC */	lfs f1, 0x6dc(r31)
/* 80769BD4  4B A3 EC 38 */	b dKy_custom_colset__FUcUcf
/* 80769BD8  48 00 00 88 */	b lbl_80769C60
lbl_80769BDC:
/* 80769BDC  2C 00 00 01 */	cmpwi r0, 1
/* 80769BE0  40 82 00 20 */	bne lbl_80769C00
/* 80769BE4  38 60 00 00 */	li r3, 0
/* 80769BE8  38 80 00 08 */	li r4, 8
/* 80769BEC  C0 3F 06 DC */	lfs f1, 0x6dc(r31)
/* 80769BF0  4B A3 EC 1C */	b dKy_custom_colset__FUcUcf
/* 80769BF4  C3 FE 00 08 */	lfs f31, 8(r30)
/* 80769BF8  C3 DE 00 68 */	lfs f30, 0x68(r30)
/* 80769BFC  48 00 00 64 */	b lbl_80769C60
lbl_80769C00:
/* 80769C00  2C 00 00 02 */	cmpwi r0, 2
/* 80769C04  40 82 00 1C */	bne lbl_80769C20
/* 80769C08  D3 FF 06 DC */	stfs f31, 0x6dc(r31)
/* 80769C0C  38 60 00 09 */	li r3, 9
/* 80769C10  38 80 00 08 */	li r4, 8
/* 80769C14  C0 3F 06 DC */	lfs f1, 0x6dc(r31)
/* 80769C18  4B A3 EB F4 */	b dKy_custom_colset__FUcUcf
/* 80769C1C  48 00 00 44 */	b lbl_80769C60
lbl_80769C20:
/* 80769C20  2C 00 00 03 */	cmpwi r0, 3
/* 80769C24  40 82 00 20 */	bne lbl_80769C44
/* 80769C28  38 60 00 09 */	li r3, 9
/* 80769C2C  38 80 00 0A */	li r4, 0xa
/* 80769C30  C0 3F 06 DC */	lfs f1, 0x6dc(r31)
/* 80769C34  4B A3 EB D8 */	b dKy_custom_colset__FUcUcf
/* 80769C38  C3 FE 00 08 */	lfs f31, 8(r30)
/* 80769C3C  C3 DE 01 EC */	lfs f30, 0x1ec(r30)
/* 80769C40  48 00 00 20 */	b lbl_80769C60
lbl_80769C44:
/* 80769C44  2C 00 00 04 */	cmpwi r0, 4
/* 80769C48  40 82 00 18 */	bne lbl_80769C60
/* 80769C4C  38 60 00 0B */	li r3, 0xb
/* 80769C50  38 80 00 0A */	li r4, 0xa
/* 80769C54  C0 3F 06 DC */	lfs f1, 0x6dc(r31)
/* 80769C58  4B A3 EB B4 */	b dKy_custom_colset__FUcUcf
/* 80769C5C  C3 DE 01 EC */	lfs f30, 0x1ec(r30)
lbl_80769C60:
/* 80769C60  38 7F 06 DC */	addi r3, r31, 0x6dc
/* 80769C64  FC 20 F8 90 */	fmr f1, f31
/* 80769C68  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80769C6C  FC 60 F0 90 */	fmr f3, f30
/* 80769C70  4B B0 5D CC */	b cLib_addCalc2__FPffff
lbl_80769C74:
/* 80769C74  88 1D 00 64 */	lbz r0, 0x64(r29)
/* 80769C78  7C 00 07 75 */	extsb. r0, r0
/* 80769C7C  40 82 05 A4 */	bne lbl_8076A220
/* 80769C80  C0 5E 01 F0 */	lfs f2, 0x1f0(r30)
/* 80769C84  D0 41 01 48 */	stfs f2, 0x148(r1)
/* 80769C88  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 80769C8C  D0 21 01 4C */	stfs f1, 0x14c(r1)
/* 80769C90  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80769C94  D0 01 01 50 */	stfs f0, 0x150(r1)
/* 80769C98  D0 5D 01 7C */	stfs f2, 0x17c(r29)
/* 80769C9C  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769CA0  D0 23 00 04 */	stfs f1, 4(r3)
/* 80769CA4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80769CA8  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769CAC  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769CB0  38 BD 00 58 */	addi r5, r29, 0x58
/* 80769CB4  4B FF B3 A5 */	bl __register_global_object
/* 80769CB8  C0 5E 01 FC */	lfs f2, 0x1fc(r30)
/* 80769CBC  D0 41 01 3C */	stfs f2, 0x13c(r1)
/* 80769CC0  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80769CC4  D0 21 01 40 */	stfs f1, 0x140(r1)
/* 80769CC8  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80769CCC  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 80769CD0  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769CD4  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80769CD8  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80769CDC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80769CE0  38 63 00 0C */	addi r3, r3, 0xc
/* 80769CE4  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769CE8  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769CEC  38 BD 00 68 */	addi r5, r29, 0x68
/* 80769CF0  4B FF B3 69 */	bl __register_global_object
/* 80769CF4  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 80769CF8  D0 41 01 30 */	stfs f2, 0x130(r1)
/* 80769CFC  C0 3E 02 04 */	lfs f1, 0x204(r30)
/* 80769D00  D0 21 01 34 */	stfs f1, 0x134(r1)
/* 80769D04  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 80769D08  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 80769D0C  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769D10  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80769D14  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80769D18  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80769D1C  38 63 00 18 */	addi r3, r3, 0x18
/* 80769D20  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769D24  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769D28  38 BD 00 74 */	addi r5, r29, 0x74
/* 80769D2C  4B FF B3 2D */	bl __register_global_object
/* 80769D30  C0 5E 02 0C */	lfs f2, 0x20c(r30)
/* 80769D34  D0 41 01 24 */	stfs f2, 0x124(r1)
/* 80769D38  C0 3E 02 10 */	lfs f1, 0x210(r30)
/* 80769D3C  D0 21 01 28 */	stfs f1, 0x128(r1)
/* 80769D40  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80769D44  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 80769D48  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769D4C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80769D50  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80769D54  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80769D58  38 63 00 24 */	addi r3, r3, 0x24
/* 80769D5C  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769D60  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769D64  38 BD 00 80 */	addi r5, r29, 0x80
/* 80769D68  4B FF B2 F1 */	bl __register_global_object
/* 80769D6C  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 80769D70  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 80769D74  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80769D78  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 80769D7C  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80769D80  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80769D84  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769D88  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80769D8C  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80769D90  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80769D94  38 63 00 30 */	addi r3, r3, 0x30
/* 80769D98  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769D9C  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769DA0  38 BD 00 8C */	addi r5, r29, 0x8c
/* 80769DA4  4B FF B2 B5 */	bl __register_global_object
/* 80769DA8  C0 5E 02 18 */	lfs f2, 0x218(r30)
/* 80769DAC  D0 41 01 0C */	stfs f2, 0x10c(r1)
/* 80769DB0  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80769DB4  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 80769DB8  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80769DBC  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80769DC0  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769DC4  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 80769DC8  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80769DCC  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80769DD0  38 63 00 3C */	addi r3, r3, 0x3c
/* 80769DD4  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769DD8  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769DDC  38 BD 00 98 */	addi r5, r29, 0x98
/* 80769DE0  4B FF B2 79 */	bl __register_global_object
/* 80769DE4  C0 5E 02 20 */	lfs f2, 0x220(r30)
/* 80769DE8  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 80769DEC  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80769DF0  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80769DF4  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80769DF8  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80769DFC  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769E00  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 80769E04  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 80769E08  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80769E0C  38 63 00 48 */	addi r3, r3, 0x48
/* 80769E10  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769E14  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769E18  38 BD 00 A4 */	addi r5, r29, 0xa4
/* 80769E1C  4B FF B2 3D */	bl __register_global_object
/* 80769E20  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 80769E24  D0 41 00 F4 */	stfs f2, 0xf4(r1)
/* 80769E28  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80769E2C  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 80769E30  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80769E34  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80769E38  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769E3C  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 80769E40  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 80769E44  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 80769E48  38 63 00 54 */	addi r3, r3, 0x54
/* 80769E4C  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769E50  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769E54  38 BD 00 B0 */	addi r5, r29, 0xb0
/* 80769E58  4B FF B2 01 */	bl __register_global_object
/* 80769E5C  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 80769E60  D0 41 00 E8 */	stfs f2, 0xe8(r1)
/* 80769E64  C0 3E 02 28 */	lfs f1, 0x228(r30)
/* 80769E68  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 80769E6C  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 80769E70  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80769E74  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769E78  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 80769E7C  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 80769E80  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 80769E84  38 63 00 60 */	addi r3, r3, 0x60
/* 80769E88  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769E8C  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769E90  38 BD 00 BC */	addi r5, r29, 0xbc
/* 80769E94  4B FF B1 C5 */	bl __register_global_object
/* 80769E98  C0 5E 02 30 */	lfs f2, 0x230(r30)
/* 80769E9C  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 80769EA0  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80769EA4  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 80769EA8  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80769EAC  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80769EB0  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769EB4  D0 43 00 6C */	stfs f2, 0x6c(r3)
/* 80769EB8  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 80769EBC  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 80769EC0  38 63 00 6C */	addi r3, r3, 0x6c
/* 80769EC4  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769EC8  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769ECC  38 BD 00 C8 */	addi r5, r29, 0xc8
/* 80769ED0  4B FF B1 89 */	bl __register_global_object
/* 80769ED4  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 80769ED8  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 80769EDC  C0 3E 02 34 */	lfs f1, 0x234(r30)
/* 80769EE0  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80769EE4  C0 1E 02 38 */	lfs f0, 0x238(r30)
/* 80769EE8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80769EEC  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769EF0  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 80769EF4  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 80769EF8  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 80769EFC  38 63 00 78 */	addi r3, r3, 0x78
/* 80769F00  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769F04  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769F08  38 BD 00 D4 */	addi r5, r29, 0xd4
/* 80769F0C  4B FF B1 4D */	bl __register_global_object
/* 80769F10  C0 5E 02 3C */	lfs f2, 0x23c(r30)
/* 80769F14  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 80769F18  C0 3E 02 40 */	lfs f1, 0x240(r30)
/* 80769F1C  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80769F20  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80769F24  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80769F28  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769F2C  D0 43 00 84 */	stfs f2, 0x84(r3)
/* 80769F30  D0 23 00 88 */	stfs f1, 0x88(r3)
/* 80769F34  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 80769F38  38 63 00 84 */	addi r3, r3, 0x84
/* 80769F3C  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769F40  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769F44  38 BD 00 E0 */	addi r5, r29, 0xe0
/* 80769F48  4B FF B1 11 */	bl __register_global_object
/* 80769F4C  C0 3E 02 00 */	lfs f1, 0x200(r30)
/* 80769F50  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80769F54  C0 1E 02 44 */	lfs f0, 0x244(r30)
/* 80769F58  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80769F5C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80769F60  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769F64  D0 23 00 90 */	stfs f1, 0x90(r3)
/* 80769F68  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 80769F6C  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 80769F70  38 63 00 90 */	addi r3, r3, 0x90
/* 80769F74  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769F78  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769F7C  38 BD 00 EC */	addi r5, r29, 0xec
/* 80769F80  4B FF B0 D9 */	bl __register_global_object
/* 80769F84  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 80769F88  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80769F8C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80769F90  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 80769F94  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80769F98  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80769F9C  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769FA0  D0 43 00 9C */	stfs f2, 0x9c(r3)
/* 80769FA4  D0 23 00 A0 */	stfs f1, 0xa0(r3)
/* 80769FA8  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80769FAC  38 63 00 9C */	addi r3, r3, 0x9c
/* 80769FB0  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769FB4  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769FB8  38 BD 00 F8 */	addi r5, r29, 0xf8
/* 80769FBC  4B FF B0 9D */	bl __register_global_object
/* 80769FC0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80769FC4  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 80769FC8  C0 3E 02 48 */	lfs f1, 0x248(r30)
/* 80769FCC  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80769FD0  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 80769FD4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80769FD8  38 7D 01 7C */	addi r3, r29, 0x17c
/* 80769FDC  D0 43 00 A8 */	stfs f2, 0xa8(r3)
/* 80769FE0  D0 23 00 AC */	stfs f1, 0xac(r3)
/* 80769FE4  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80769FE8  38 63 00 A8 */	addi r3, r3, 0xa8
/* 80769FEC  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 80769FF0  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 80769FF4  38 BD 01 04 */	addi r5, r29, 0x104
/* 80769FF8  4B FF B0 61 */	bl __register_global_object
/* 80769FFC  C0 5E 02 00 */	lfs f2, 0x200(r30)
/* 8076A000  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8076A004  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 8076A008  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8076A00C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8076A010  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8076A014  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8076A018  D0 43 00 B4 */	stfs f2, 0xb4(r3)
/* 8076A01C  D0 23 00 B8 */	stfs f1, 0xb8(r3)
/* 8076A020  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 8076A024  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8076A028  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 8076A02C  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 8076A030  38 BD 01 10 */	addi r5, r29, 0x110
/* 8076A034  4B FF B0 25 */	bl __register_global_object
/* 8076A038  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8076A03C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8076A040  C0 3E 02 4C */	lfs f1, 0x24c(r30)
/* 8076A044  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8076A048  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 8076A04C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8076A050  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8076A054  D0 43 00 C0 */	stfs f2, 0xc0(r3)
/* 8076A058  D0 23 00 C4 */	stfs f1, 0xc4(r3)
/* 8076A05C  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 8076A060  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8076A064  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 8076A068  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 8076A06C  38 BD 01 1C */	addi r5, r29, 0x11c
/* 8076A070  4B FF AF E9 */	bl __register_global_object
/* 8076A074  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8076A078  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 8076A07C  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 8076A080  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8076A084  C0 1E 02 50 */	lfs f0, 0x250(r30)
/* 8076A088  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8076A08C  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8076A090  D0 43 00 CC */	stfs f2, 0xcc(r3)
/* 8076A094  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8076A098  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8076A09C  38 63 00 CC */	addi r3, r3, 0xcc
/* 8076A0A0  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 8076A0A4  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 8076A0A8  38 BD 01 28 */	addi r5, r29, 0x128
/* 8076A0AC  4B FF AF AD */	bl __register_global_object
/* 8076A0B0  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8076A0B4  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8076A0B8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8076A0BC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8076A0C0  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 8076A0C4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8076A0C8  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8076A0CC  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 8076A0D0  D0 23 00 DC */	stfs f1, 0xdc(r3)
/* 8076A0D4  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 8076A0D8  38 63 00 D8 */	addi r3, r3, 0xd8
/* 8076A0DC  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 8076A0E0  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 8076A0E4  38 BD 01 34 */	addi r5, r29, 0x134
/* 8076A0E8  4B FF AF 71 */	bl __register_global_object
/* 8076A0EC  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8076A0F0  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8076A0F4  C0 3E 02 28 */	lfs f1, 0x228(r30)
/* 8076A0F8  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8076A0FC  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 8076A100  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8076A104  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8076A108  D0 43 00 E4 */	stfs f2, 0xe4(r3)
/* 8076A10C  D0 23 00 E8 */	stfs f1, 0xe8(r3)
/* 8076A110  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 8076A114  38 63 00 E4 */	addi r3, r3, 0xe4
/* 8076A118  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 8076A11C  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 8076A120  38 BD 01 40 */	addi r5, r29, 0x140
/* 8076A124  4B FF AF 35 */	bl __register_global_object
/* 8076A128  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8076A12C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8076A130  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8076A134  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8076A138  C0 1E 02 38 */	lfs f0, 0x238(r30)
/* 8076A13C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8076A140  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8076A144  D0 43 00 F0 */	stfs f2, 0xf0(r3)
/* 8076A148  D0 23 00 F4 */	stfs f1, 0xf4(r3)
/* 8076A14C  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 8076A150  38 63 00 F0 */	addi r3, r3, 0xf0
/* 8076A154  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 8076A158  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 8076A15C  38 BD 01 4C */	addi r5, r29, 0x14c
/* 8076A160  4B FF AE F9 */	bl __register_global_object
/* 8076A164  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8076A168  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8076A16C  C0 3E 02 28 */	lfs f1, 0x228(r30)
/* 8076A170  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8076A174  C0 1E 02 44 */	lfs f0, 0x244(r30)
/* 8076A178  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8076A17C  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8076A180  D0 43 00 FC */	stfs f2, 0xfc(r3)
/* 8076A184  D0 23 01 00 */	stfs f1, 0x100(r3)
/* 8076A188  D0 03 01 04 */	stfs f0, 0x104(r3)
/* 8076A18C  38 63 00 FC */	addi r3, r3, 0xfc
/* 8076A190  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 8076A194  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 8076A198  38 BD 01 58 */	addi r5, r29, 0x158
/* 8076A19C  4B FF AE BD */	bl __register_global_object
/* 8076A1A0  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8076A1A4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8076A1A8  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 8076A1AC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8076A1B0  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 8076A1B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8076A1B8  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8076A1BC  D0 43 01 08 */	stfs f2, 0x108(r3)
/* 8076A1C0  D0 23 01 0C */	stfs f1, 0x10c(r3)
/* 8076A1C4  D0 03 01 10 */	stfs f0, 0x110(r3)
/* 8076A1C8  38 63 01 08 */	addi r3, r3, 0x108
/* 8076A1CC  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 8076A1D0  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 8076A1D4  38 BD 01 64 */	addi r5, r29, 0x164
/* 8076A1D8  4B FF AE 81 */	bl __register_global_object
/* 8076A1DC  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 8076A1E0  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8076A1E4  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8076A1E8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8076A1EC  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8076A1F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8076A1F4  38 7D 01 7C */	addi r3, r29, 0x17c
/* 8076A1F8  D0 43 01 14 */	stfs f2, 0x114(r3)
/* 8076A1FC  D0 23 01 18 */	stfs f1, 0x118(r3)
/* 8076A200  D0 03 01 1C */	stfs f0, 0x11c(r3)
/* 8076A204  38 63 01 14 */	addi r3, r3, 0x114
/* 8076A208  3C 80 80 77 */	lis r4, __dt__4cXyzFv@ha
/* 8076A20C  38 84 B4 0C */	addi r4, r4, __dt__4cXyzFv@l
/* 8076A210  38 BD 01 70 */	addi r5, r29, 0x170
/* 8076A214  4B FF AE 45 */	bl __register_global_object
/* 8076A218  38 00 00 01 */	li r0, 1
/* 8076A21C  98 1D 00 64 */	stb r0, 0x64(r29)
lbl_8076A220:
/* 8076A220  88 1F 0F E4 */	lbz r0, 0xfe4(r31)
/* 8076A224  7C 00 07 75 */	extsb. r0, r0
/* 8076A228  41 82 01 94 */	beq lbl_8076A3BC
/* 8076A22C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8076A230  38 80 00 00 */	li r4, 0
/* 8076A234  38 A0 00 00 */	li r5, 0
/* 8076A238  38 C0 00 00 */	li r6, 0
/* 8076A23C  4B AF D1 B8 */	b __ct__5csXyzFsss
/* 8076A240  3B 40 00 00 */	li r26, 0
/* 8076A244  3B 00 00 00 */	li r24, 0
/* 8076A248  3A E0 00 00 */	li r23, 0
/* 8076A24C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076A250  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8076A254  C3 FE 02 00 */	lfs f31, 0x200(r30)
/* 8076A258  3F 60 00 01 */	lis r27, 1
/* 8076A25C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802C7@ha */
/* 8076A260  3A A3 02 C7 */	addi r21, r3, 0x02C7 /* 0x000802C7@l */
/* 8076A264  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8076A268  3A C3 13 68 */	addi r22, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8076A26C  48 00 01 24 */	b lbl_8076A390
lbl_8076A270:
/* 8076A270  3B 3D 01 7C */	addi r25, r29, 0x17c
/* 8076A274  7F 39 BA 14 */	add r25, r25, r23
/* 8076A278  C0 39 00 00 */	lfs f1, 0(r25)
/* 8076A27C  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 8076A280  40 82 00 10 */	bne lbl_8076A290
/* 8076A284  38 00 C0 00 */	li r0, -16384
/* 8076A288  B0 01 00 2E */	sth r0, 0x2e(r1)
/* 8076A28C  48 00 00 24 */	b lbl_8076A2B0
lbl_8076A290:
/* 8076A290  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8076A294  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8076A298  40 82 00 10 */	bne lbl_8076A2A8
/* 8076A29C  38 00 40 00 */	li r0, 0x4000
/* 8076A2A0  B0 01 00 2E */	sth r0, 0x2e(r1)
/* 8076A2A4  48 00 00 0C */	b lbl_8076A2B0
lbl_8076A2A8:
/* 8076A2A8  38 00 80 00 */	li r0, -32768
/* 8076A2AC  B0 01 00 2E */	sth r0, 0x2e(r1)
lbl_8076A2B0:
/* 8076A2B0  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8076A2B4  38 00 00 FF */	li r0, 0xff
/* 8076A2B8  90 01 00 08 */	stw r0, 8(r1)
/* 8076A2BC  38 80 00 00 */	li r4, 0
/* 8076A2C0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8076A2C4  38 00 FF FF */	li r0, -1
/* 8076A2C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8076A2CC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8076A2D0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8076A2D4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8076A2D8  7E 9F C2 14 */	add r20, r31, r24
/* 8076A2DC  80 94 0F E8 */	lwz r4, 0xfe8(r20)
/* 8076A2E0  38 A0 00 00 */	li r5, 0
/* 8076A2E4  38 DB 85 C2 */	addi r6, r27, -31294
/* 8076A2E8  7F 27 CB 78 */	mr r7, r25
/* 8076A2EC  39 00 00 00 */	li r8, 0
/* 8076A2F0  39 21 00 2C */	addi r9, r1, 0x2c
/* 8076A2F4  39 40 00 00 */	li r10, 0
/* 8076A2F8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8076A2FC  4B 8E 31 D0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8076A300  90 74 0F E8 */	stw r3, 0xfe8(r20)
/* 8076A304  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8076A308  38 00 00 FF */	li r0, 0xff
/* 8076A30C  90 01 00 08 */	stw r0, 8(r1)
/* 8076A310  38 80 00 00 */	li r4, 0
/* 8076A314  90 81 00 0C */	stw r4, 0xc(r1)
/* 8076A318  38 00 FF FF */	li r0, -1
/* 8076A31C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8076A320  90 81 00 14 */	stw r4, 0x14(r1)
/* 8076A324  90 81 00 18 */	stw r4, 0x18(r1)
/* 8076A328  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8076A32C  80 94 10 48 */	lwz r4, 0x1048(r20)
/* 8076A330  38 A0 00 00 */	li r5, 0
/* 8076A334  38 DB 85 C3 */	addi r6, r27, -31293
/* 8076A338  7F 27 CB 78 */	mr r7, r25
/* 8076A33C  39 00 00 00 */	li r8, 0
/* 8076A340  39 21 00 2C */	addi r9, r1, 0x2c
/* 8076A344  39 40 00 00 */	li r10, 0
/* 8076A348  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8076A34C  4B 8E 31 80 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8076A350  90 74 10 48 */	stw r3, 0x1048(r20)
/* 8076A354  92 A1 00 20 */	stw r21, 0x20(r1)
/* 8076A358  80 76 00 00 */	lwz r3, 0(r22)
/* 8076A35C  38 81 00 20 */	addi r4, r1, 0x20
/* 8076A360  7F 25 CB 78 */	mr r5, r25
/* 8076A364  38 C0 00 00 */	li r6, 0
/* 8076A368  38 E0 00 00 */	li r7, 0
/* 8076A36C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8076A370  FC 40 08 90 */	fmr f2, f1
/* 8076A374  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 8076A378  FC 80 18 90 */	fmr f4, f3
/* 8076A37C  39 00 00 00 */	li r8, 0
/* 8076A380  4B B4 21 8C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8076A384  3B 5A 00 01 */	addi r26, r26, 1
/* 8076A388  3B 18 00 04 */	addi r24, r24, 4
/* 8076A38C  3A F7 00 0C */	addi r23, r23, 0xc
lbl_8076A390:
/* 8076A390  88 9F 0F E4 */	lbz r4, 0xfe4(r31)
/* 8076A394  7C 83 07 74 */	extsb r3, r4
/* 8076A398  7C 1A 18 00 */	cmpw r26, r3
/* 8076A39C  41 80 FE D4 */	blt lbl_8076A270
/* 8076A3A0  A8 1F 06 7C */	lha r0, 0x67c(r31)
/* 8076A3A4  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8076A3A8  40 82 00 14 */	bne lbl_8076A3BC
/* 8076A3AC  2C 03 00 18 */	cmpwi r3, 0x18
/* 8076A3B0  40 80 00 0C */	bge lbl_8076A3BC
/* 8076A3B4  38 04 00 01 */	addi r0, r4, 1
/* 8076A3B8  98 1F 0F E4 */	stb r0, 0xfe4(r31)
lbl_8076A3BC:
/* 8076A3BC  C0 7F 05 38 */	lfs f3, 0x538(r31)
/* 8076A3C0  D0 61 01 78 */	stfs f3, 0x178(r1)
/* 8076A3C4  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 8076A3C8  D0 41 01 7C */	stfs f2, 0x17c(r1)
/* 8076A3CC  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 8076A3D0  D0 21 01 80 */	stfs f1, 0x180(r1)
/* 8076A3D4  C0 1E 02 54 */	lfs f0, 0x254(r30)
/* 8076A3D8  EC 02 00 2A */	fadds f0, f2, f0
/* 8076A3DC  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 8076A3E0  D0 7F 05 74 */	stfs f3, 0x574(r31)
/* 8076A3E4  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 8076A3E8  D0 3F 05 7C */	stfs f1, 0x57c(r31)
/* 8076A3EC  38 60 00 01 */	li r3, 1
lbl_8076A3F0:
/* 8076A3F0  E3 E1 02 08 */	psq_l f31, 520(r1), 0, 0 /* qr0 */
/* 8076A3F4  CB E1 02 00 */	lfd f31, 0x200(r1)
/* 8076A3F8  E3 C1 01 F8 */	psq_l f30, 504(r1), 0, 0 /* qr0 */
/* 8076A3FC  CB C1 01 F0 */	lfd f30, 0x1f0(r1)
/* 8076A400  39 61 01 F0 */	addi r11, r1, 0x1f0
/* 8076A404  4B BF 7E 00 */	b _restgpr_20
/* 8076A408  80 01 02 14 */	lwz r0, 0x214(r1)
/* 8076A40C  7C 08 03 A6 */	mtlr r0
/* 8076A410  38 21 02 10 */	addi r1, r1, 0x210
/* 8076A414  4E 80 00 20 */	blr 
