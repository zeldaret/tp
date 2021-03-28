lbl_808402F8:
/* 808402F8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 808402FC  7C 08 02 A6 */	mflr r0
/* 80840300  90 01 00 74 */	stw r0, 0x74(r1)
/* 80840304  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80840308  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8084030C  39 61 00 60 */	addi r11, r1, 0x60
/* 80840310  4B B2 1E C4 */	b _savegpr_27
/* 80840314  7C 7B 1B 78 */	mr r27, r3
/* 80840318  3C 60 80 84 */	lis r3, lit_1109@ha
/* 8084031C  3B C3 5B B8 */	addi r30, r3, lit_1109@l
/* 80840320  3C 60 80 84 */	lis r3, lit_3894@ha
/* 80840324  3B E3 54 AC */	addi r31, r3, lit_3894@l
/* 80840328  88 1B 16 B4 */	lbz r0, 0x16b4(r27)
/* 8084032C  28 00 00 06 */	cmplwi r0, 6
/* 80840330  41 82 03 C4 */	beq lbl_808406F4
/* 80840334  88 1E 01 B0 */	lbz r0, 0x1b0(r30)
/* 80840338  7C 00 07 75 */	extsb. r0, r0
/* 8084033C  40 82 00 34 */	bne lbl_80840370
/* 80840340  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80840344  D0 3E 01 B4 */	stfs f1, 0x1b4(r30)
/* 80840348  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 8084034C  38 7E 01 B4 */	addi r3, r30, 0x1b4
/* 80840350  D0 03 00 04 */	stfs f0, 4(r3)
/* 80840354  D0 23 00 08 */	stfs f1, 8(r3)
/* 80840358  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha
/* 8084035C  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l
/* 80840360  38 BE 01 A4 */	addi r5, r30, 0x1a4
/* 80840364  4B FF 7B 55 */	bl __register_global_object
/* 80840368  38 00 00 01 */	li r0, 1
/* 8084036C  98 1E 01 B0 */	stb r0, 0x1b0(r30)
lbl_80840370:
/* 80840370  88 1E 01 CC */	lbz r0, 0x1cc(r30)
/* 80840374  7C 00 07 75 */	extsb. r0, r0
/* 80840378  40 82 00 38 */	bne lbl_808403B0
/* 8084037C  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80840380  D0 1E 01 D0 */	stfs f0, 0x1d0(r30)
/* 80840384  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 80840388  38 7E 01 D0 */	addi r3, r30, 0x1d0
/* 8084038C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80840390  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 80840394  D0 03 00 08 */	stfs f0, 8(r3)
/* 80840398  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha
/* 8084039C  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l
/* 808403A0  38 BE 01 C0 */	addi r5, r30, 0x1c0
/* 808403A4  4B FF 7B 15 */	bl __register_global_object
/* 808403A8  38 00 00 01 */	li r0, 1
/* 808403AC  98 1E 01 CC */	stb r0, 0x1cc(r30)
lbl_808403B0:
/* 808403B0  88 1E 01 E8 */	lbz r0, 0x1e8(r30)
/* 808403B4  7C 00 07 75 */	extsb. r0, r0
/* 808403B8  40 82 00 38 */	bne lbl_808403F0
/* 808403BC  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 808403C0  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 808403C4  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 808403C8  38 7E 01 EC */	addi r3, r30, 0x1ec
/* 808403CC  D0 03 00 04 */	stfs f0, 4(r3)
/* 808403D0  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 808403D4  D0 03 00 08 */	stfs f0, 8(r3)
/* 808403D8  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha
/* 808403DC  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l
/* 808403E0  38 BE 01 DC */	addi r5, r30, 0x1dc
/* 808403E4  4B FF 7A D5 */	bl __register_global_object
/* 808403E8  38 00 00 01 */	li r0, 1
/* 808403EC  98 1E 01 E8 */	stb r0, 0x1e8(r30)
lbl_808403F0:
/* 808403F0  3B 80 00 00 */	li r28, 0
/* 808403F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808403F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808403FC  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 80840400  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80840404  C0 7B 04 D8 */	lfs f3, 0x4d8(r27)
/* 80840408  4B B0 64 E0 */	b PSMTXTrans
/* 8084040C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80840410  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80840414  A8 9B 17 14 */	lha r4, 0x1714(r27)
/* 80840418  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 8084041C  38 C0 00 00 */	li r6, 0
/* 80840420  4B 7C BE 80 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80840424  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80840428  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084042C  38 9E 01 B4 */	addi r4, r30, 0x1b4
/* 80840430  38 A1 00 24 */	addi r5, r1, 0x24
/* 80840434  4B B0 69 38 */	b PSMTXMultVec
/* 80840438  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084043C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80840440  38 9E 01 D0 */	addi r4, r30, 0x1d0
/* 80840444  38 A1 00 18 */	addi r5, r1, 0x18
/* 80840448  4B B0 69 24 */	b PSMTXMultVec
/* 8084044C  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 80840450  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80840454  90 01 00 40 */	stw r0, 0x40(r1)
/* 80840458  38 7B 08 D0 */	addi r3, r27, 0x8d0
/* 8084045C  38 81 00 24 */	addi r4, r1, 0x24
/* 80840460  38 A1 00 18 */	addi r5, r1, 0x18
/* 80840464  7F 66 DB 78 */	mr r6, r27
/* 80840468  4B 83 78 FC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8084046C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80840470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80840474  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80840478  7F A3 EB 78 */	mr r3, r29
/* 8084047C  38 9B 08 D0 */	addi r4, r27, 0x8d0
/* 80840480  4B 83 3F 34 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80840484  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80840488  41 82 00 50 */	beq lbl_808404D8
/* 8084048C  7F A3 EB 78 */	mr r3, r29
/* 80840490  38 9B 08 E4 */	addi r4, r27, 0x8e4
/* 80840494  38 A1 00 30 */	addi r5, r1, 0x30
/* 80840498  4B 83 42 AC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8084049C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 808404A0  4B A2 7D 70 */	b cBgW_CheckBWall__Ff
/* 808404A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 808404A8  41 82 00 30 */	beq lbl_808404D8
/* 808404AC  3B 9B 09 00 */	addi r28, r27, 0x900
/* 808404B0  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 808404B4  60 00 00 04 */	ori r0, r0, 4
/* 808404B8  90 1B 17 44 */	stw r0, 0x1744(r27)
/* 808404BC  38 61 00 30 */	addi r3, r1, 0x30
/* 808404C0  4B A2 6C 68 */	b atan2sX_Z__4cXyzCFv
/* 808404C4  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 808404C8  3C 84 00 01 */	addis r4, r4, 1
/* 808404CC  38 04 80 00 */	addi r0, r4, -32768
/* 808404D0  7C 03 00 50 */	subf r0, r3, r0
/* 808404D4  B0 1B 16 EA */	sth r0, 0x16ea(r27)
lbl_808404D8:
/* 808404D8  28 1C 00 00 */	cmplwi r28, 0
/* 808404DC  40 82 00 70 */	bne lbl_8084054C
/* 808404E0  80 1B 17 44 */	lwz r0, 0x1744(r27)
/* 808404E4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 808404E8  90 1B 17 44 */	stw r0, 0x1744(r27)
/* 808404EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808404F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808404F4  38 9E 01 EC */	addi r4, r30, 0x1ec
/* 808404F8  38 A1 00 18 */	addi r5, r1, 0x18
/* 808404FC  4B B0 68 70 */	b PSMTXMultVec
/* 80840500  38 7B 08 D0 */	addi r3, r27, 0x8d0
/* 80840504  38 81 00 24 */	addi r4, r1, 0x24
/* 80840508  38 A1 00 18 */	addi r5, r1, 0x18
/* 8084050C  7F 66 DB 78 */	mr r6, r27
/* 80840510  4B 83 78 54 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80840514  7F A3 EB 78 */	mr r3, r29
/* 80840518  38 9B 08 D0 */	addi r4, r27, 0x8d0
/* 8084051C  4B 83 3E 98 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80840520  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80840524  41 82 00 28 */	beq lbl_8084054C
/* 80840528  7F A3 EB 78 */	mr r3, r29
/* 8084052C  38 9B 08 E4 */	addi r4, r27, 0x8e4
/* 80840530  38 A1 00 30 */	addi r5, r1, 0x30
/* 80840534  4B 83 42 10 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80840538  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8084053C  4B A2 7C D4 */	b cBgW_CheckBWall__Ff
/* 80840540  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80840544  41 82 00 08 */	beq lbl_8084054C
/* 80840548  3B 9B 09 00 */	addi r28, r27, 0x900
lbl_8084054C:
/* 8084054C  28 1C 00 00 */	cmplwi r28, 0
/* 80840550  41 82 01 98 */	beq lbl_808406E8
/* 80840554  38 61 00 18 */	addi r3, r1, 0x18
/* 80840558  7F 84 E3 78 */	mr r4, r28
/* 8084055C  7C 65 1B 78 */	mr r5, r3
/* 80840560  4B B0 6B 54 */	b PSVECSubtract
/* 80840564  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80840568  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8084056C  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80840570  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80840574  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80840578  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8084057C  38 61 00 0C */	addi r3, r1, 0xc
/* 80840580  4B B0 6B B8 */	b PSVECSquareMag
/* 80840584  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80840588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084058C  40 81 00 58 */	ble lbl_808405E4
/* 80840590  FC 00 08 34 */	frsqrte f0, f1
/* 80840594  C8 9F 01 60 */	lfd f4, 0x160(r31)
/* 80840598  FC 44 00 32 */	fmul f2, f4, f0
/* 8084059C  C8 7F 01 68 */	lfd f3, 0x168(r31)
/* 808405A0  FC 00 00 32 */	fmul f0, f0, f0
/* 808405A4  FC 01 00 32 */	fmul f0, f1, f0
/* 808405A8  FC 03 00 28 */	fsub f0, f3, f0
/* 808405AC  FC 02 00 32 */	fmul f0, f2, f0
/* 808405B0  FC 44 00 32 */	fmul f2, f4, f0
/* 808405B4  FC 00 00 32 */	fmul f0, f0, f0
/* 808405B8  FC 01 00 32 */	fmul f0, f1, f0
/* 808405BC  FC 03 00 28 */	fsub f0, f3, f0
/* 808405C0  FC 02 00 32 */	fmul f0, f2, f0
/* 808405C4  FC 44 00 32 */	fmul f2, f4, f0
/* 808405C8  FC 00 00 32 */	fmul f0, f0, f0
/* 808405CC  FC 01 00 32 */	fmul f0, f1, f0
/* 808405D0  FC 03 00 28 */	fsub f0, f3, f0
/* 808405D4  FC 02 00 32 */	fmul f0, f2, f0
/* 808405D8  FF E1 00 32 */	fmul f31, f1, f0
/* 808405DC  FF E0 F8 18 */	frsp f31, f31
/* 808405E0  48 00 00 90 */	b lbl_80840670
lbl_808405E4:
/* 808405E4  C8 1F 01 70 */	lfd f0, 0x170(r31)
/* 808405E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808405EC  40 80 00 10 */	bge lbl_808405FC
/* 808405F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 808405F4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 808405F8  48 00 00 78 */	b lbl_80840670
lbl_808405FC:
/* 808405FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80840600  80 81 00 08 */	lwz r4, 8(r1)
/* 80840604  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80840608  3C 00 7F 80 */	lis r0, 0x7f80
/* 8084060C  7C 03 00 00 */	cmpw r3, r0
/* 80840610  41 82 00 14 */	beq lbl_80840624
/* 80840614  40 80 00 40 */	bge lbl_80840654
/* 80840618  2C 03 00 00 */	cmpwi r3, 0
/* 8084061C  41 82 00 20 */	beq lbl_8084063C
/* 80840620  48 00 00 34 */	b lbl_80840654
lbl_80840624:
/* 80840624  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80840628  41 82 00 0C */	beq lbl_80840634
/* 8084062C  38 00 00 01 */	li r0, 1
/* 80840630  48 00 00 28 */	b lbl_80840658
lbl_80840634:
/* 80840634  38 00 00 02 */	li r0, 2
/* 80840638  48 00 00 20 */	b lbl_80840658
lbl_8084063C:
/* 8084063C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80840640  41 82 00 0C */	beq lbl_8084064C
/* 80840644  38 00 00 05 */	li r0, 5
/* 80840648  48 00 00 10 */	b lbl_80840658
lbl_8084064C:
/* 8084064C  38 00 00 03 */	li r0, 3
/* 80840650  48 00 00 08 */	b lbl_80840658
lbl_80840654:
/* 80840654  38 00 00 04 */	li r0, 4
lbl_80840658:
/* 80840658  2C 00 00 01 */	cmpwi r0, 1
/* 8084065C  40 82 00 10 */	bne lbl_8084066C
/* 80840660  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80840664  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80840668  48 00 00 08 */	b lbl_80840670
lbl_8084066C:
/* 8084066C  FF E0 08 90 */	fmr f31, f1
lbl_80840670:
/* 80840670  38 61 00 18 */	addi r3, r1, 0x18
/* 80840674  4B A2 6A B4 */	b atan2sX_Z__4cXyzCFv
/* 80840678  7C 7C 1B 78 */	mr r28, r3
/* 8084067C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80840680  FC 20 00 50 */	fneg f1, f0
/* 80840684  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80840688  FC 40 00 50 */	fneg f2, f0
/* 8084068C  4B A2 6F E8 */	b cM_atan2s__Fff
/* 80840690  7C 03 E0 50 */	subf r0, r3, r28
/* 80840694  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80840698  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8084069C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808406A0  7C 63 02 14 */	add r3, r3, r0
/* 808406A4  C0 23 00 04 */	lfs f1, 4(r3)
/* 808406A8  FC 00 F8 50 */	fneg f0, f31
/* 808406AC  EC 40 00 72 */	fmuls f2, f0, f1
/* 808406B0  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 808406B4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 808406B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 808406BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 808406C0  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 808406C4  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 808406C8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 808406CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 808406D0  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 808406D4  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 808406D8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 808406DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 808406E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 808406E4  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_808406E8:
/* 808406E8  3C 60 80 84 */	lis r3, __vt__8cM3dGPla@ha
/* 808406EC  38 03 5B A0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 808406F0  90 01 00 40 */	stw r0, 0x40(r1)
lbl_808406F4:
/* 808406F4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 808406F8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 808406FC  39 61 00 60 */	addi r11, r1, 0x60
/* 80840700  4B B2 1B 20 */	b _restgpr_27
/* 80840704  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80840708  7C 08 03 A6 */	mtlr r0
/* 8084070C  38 21 00 70 */	addi r1, r1, 0x70
/* 80840710  4E 80 00 20 */	blr 
