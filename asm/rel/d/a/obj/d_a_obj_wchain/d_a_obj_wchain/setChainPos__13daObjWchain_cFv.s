lbl_80D3080C:
/* 80D3080C  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80D30810  7C 08 02 A6 */	mflr r0
/* 80D30814  90 01 01 74 */	stw r0, 0x174(r1)
/* 80D30818  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 80D3081C  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 80D30820  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 80D30824  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 80D30828  DB A1 01 40 */	stfd f29, 0x140(r1)
/* 80D3082C  F3 A1 01 48 */	psq_st f29, 328(r1), 0, 0 /* qr0 */
/* 80D30830  39 61 01 40 */	addi r11, r1, 0x140
/* 80D30834  4B 63 19 8C */	b _savegpr_22
/* 80D30838  7C 7F 1B 78 */	mr r31, r3
/* 80D3083C  3C 60 80 D3 */	lis r3, l_arcName@ha
/* 80D30840  3B C3 19 24 */	addi r30, r3, l_arcName@l
/* 80D30844  88 1F 07 74 */	lbz r0, 0x774(r31)
/* 80D30848  28 00 00 00 */	cmplwi r0, 0
/* 80D3084C  41 82 02 B4 */	beq lbl_80D30B00
/* 80D30850  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D30854  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D30858  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 80D3085C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80D30860  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D30864  38 00 00 00 */	li r0, 0
/* 80D30868  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80D3086C  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 80D30870  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80D30874  C0 1F 05 8C */	lfs f0, 0x58c(r31)
/* 80D30878  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80D3087C  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 80D30880  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80D30884  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 80D30888  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D3088C  D0 1F 05 88 */	stfs f0, 0x588(r31)
/* 80D30890  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D30894  D0 1F 05 8C */	stfs f0, 0x58c(r31)
/* 80D30898  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D3089C  D0 1F 05 90 */	stfs f0, 0x590(r31)
/* 80D308A0  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80D308A4  38 9F 05 88 */	addi r4, r31, 0x588
/* 80D308A8  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80D308AC  4B 53 62 88 */	b __mi__4cXyzCFRC3Vec
/* 80D308B0  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80D308B4  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80D308B8  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80D308BC  4B 53 62 C8 */	b __ml__4cXyzCFf
/* 80D308C0  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80D308C4  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80D308C8  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80D308CC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D308D0  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80D308D4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80D308D8  38 61 00 BC */	addi r3, r1, 0xbc
/* 80D308DC  38 9F 05 88 */	addi r4, r31, 0x588
/* 80D308E0  38 BF 07 B0 */	addi r5, r31, 0x7b0
/* 80D308E4  4B 53 62 50 */	b __mi__4cXyzCFRC3Vec
/* 80D308E8  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80D308EC  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80D308F0  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80D308F4  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80D308F8  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80D308FC  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80D30900  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D30904  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D30908  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80D3090C  7C 00 00 D0 */	neg r0, r0
/* 80D30910  7C 04 07 34 */	extsh r4, r0
/* 80D30914  4B 2D BA C8 */	b mDoMtx_YrotS__FPA4_fs
/* 80D30918  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3091C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D30920  38 81 00 EC */	addi r4, r1, 0xec
/* 80D30924  7C 85 23 78 */	mr r5, r4
/* 80D30928  4B 61 64 44 */	b PSMTXMultVec
/* 80D3092C  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80D30930  FC 20 00 50 */	fneg f1, f0
/* 80D30934  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80D30938  FC 40 00 50 */	fneg f2, f0
/* 80D3093C  4B 53 6D 38 */	b cM_atan2s__Fff
/* 80D30940  38 03 40 00 */	addi r0, r3, 0x4000
/* 80D30944  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80D30948  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80D3094C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80D30950  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80D30954  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D30958  EC 41 00 2A */	fadds f2, f1, f0
/* 80D3095C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80D30960  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D30964  40 81 00 0C */	ble lbl_80D30970
/* 80D30968  FC 00 10 34 */	frsqrte f0, f2
/* 80D3096C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80D30970:
/* 80D30970  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 80D30974  4B 53 6D 00 */	b cM_atan2s__Fff
/* 80D30978  B0 7F 07 7C */	sth r3, 0x77c(r31)
/* 80D3097C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D30980  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D30984  C0 3F 05 88 */	lfs f1, 0x588(r31)
/* 80D30988  C0 5F 05 8C */	lfs f2, 0x58c(r31)
/* 80D3098C  C0 7F 05 90 */	lfs f3, 0x590(r31)
/* 80D30990  4B 61 5F 58 */	b PSMTXTrans
/* 80D30994  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D30998  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D3099C  A8 9F 07 7C */	lha r4, 0x77c(r31)
/* 80D309A0  4B 2D BB 2C */	b mDoMtx_ZrotM__FPA4_fs
/* 80D309A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D309A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D309AC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D309B0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D309B4  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D309B8  4B 2D B8 E8 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D309BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D309C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D309C4  38 9E 00 78 */	addi r4, r30, 0x78
/* 80D309C8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D309CC  4B 61 63 A0 */	b PSMTXMultVec
/* 80D309D0  3B 7F 06 48 */	addi r27, r31, 0x648
/* 80D309D4  3B BF 07 6E */	addi r29, r31, 0x76e
/* 80D309D8  3B 9F 07 08 */	addi r28, r31, 0x708
/* 80D309DC  3B 3F 07 9E */	addi r25, r31, 0x79e
/* 80D309E0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D309E4  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80D309E8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D309EC  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80D309F0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D309F4  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80D309F8  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80D309FC  3B 40 00 0F */	li r26, 0xf
/* 80D30A00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D30A04  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l
/* 80D30A08  7E D7 B3 78 */	mr r23, r22
/* 80D30A0C  7E D8 B3 78 */	mr r24, r22
lbl_80D30A10:
/* 80D30A10  A8 1D 00 04 */	lha r0, 4(r29)
/* 80D30A14  7C 04 00 50 */	subf r0, r4, r0
/* 80D30A18  7C 03 07 34 */	extsh r3, r0
/* 80D30A1C  4B 63 46 B4 */	b abs
/* 80D30A20  7C 65 1B 78 */	mr r5, r3
/* 80D30A24  7F E3 FB 78 */	mr r3, r31
/* 80D30A28  7F 84 E3 78 */	mr r4, r28
/* 80D30A2C  4B FF FB B9 */	bl getChainAngleZ__13daObjWchain_cFP4cXyzi
/* 80D30A30  A8 1D 00 04 */	lha r0, 4(r29)
/* 80D30A34  7C 00 1A 14 */	add r0, r0, r3
/* 80D30A38  B0 1D 00 04 */	sth r0, 4(r29)
/* 80D30A3C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80D30A40  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80D30A44  7F 65 DB 78 */	mr r5, r27
/* 80D30A48  4B 53 60 EC */	b __mi__4cXyzCFRC3Vec
/* 80D30A4C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80D30A50  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80D30A54  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80D30A58  4B 53 61 2C */	b __ml__4cXyzCFf
/* 80D30A5C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80D30A60  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80D30A64  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80D30A68  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80D30A6C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80D30A70  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80D30A74  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 80D30A78  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80D30A7C  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80D30A80  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80D30A84  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80D30A88  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80D30A8C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80D30A90  B0 1D 00 00 */	sth r0, 0(r29)
/* 80D30A94  A8 1F 07 7C */	lha r0, 0x77c(r31)
/* 80D30A98  B0 19 00 00 */	sth r0, 0(r25)
/* 80D30A9C  7E C3 B3 78 */	mr r3, r22
/* 80D30AA0  C0 21 00 F8 */	lfs f1, 0xf8(r1)
/* 80D30AA4  C0 41 00 FC */	lfs f2, 0xfc(r1)
/* 80D30AA8  C0 61 01 00 */	lfs f3, 0x100(r1)
/* 80D30AAC  4B 61 5E 3C */	b PSMTXTrans
/* 80D30AB0  7E C3 B3 78 */	mr r3, r22
/* 80D30AB4  A8 99 00 00 */	lha r4, 0(r25)
/* 80D30AB8  4B 2D BA 14 */	b mDoMtx_ZrotM__FPA4_fs
/* 80D30ABC  7E E3 BB 78 */	mr r3, r23
/* 80D30AC0  A8 9D 00 00 */	lha r4, 0(r29)
/* 80D30AC4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D30AC8  A8 DD 00 04 */	lha r6, 4(r29)
/* 80D30ACC  4B 2D B7 D4 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D30AD0  7F 03 C3 78 */	mr r3, r24
/* 80D30AD4  38 9E 00 84 */	addi r4, r30, 0x84
/* 80D30AD8  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80D30ADC  4B 61 62 90 */	b PSMTXMultVec
/* 80D30AE0  A8 9D 00 04 */	lha r4, 4(r29)
/* 80D30AE4  37 5A FF FF */	addic. r26, r26, -1
/* 80D30AE8  3B 7B FF F4 */	addi r27, r27, -12
/* 80D30AEC  3B BD FF FA */	addi r29, r29, -6
/* 80D30AF0  3B 9C FF F4 */	addi r28, r28, -12
/* 80D30AF4  3B 39 FF FE */	addi r25, r25, -2
/* 80D30AF8  40 80 FF 18 */	bge lbl_80D30A10
/* 80D30AFC  48 00 05 80 */	b lbl_80D3107C
lbl_80D30B00:
/* 80D30B00  88 1F 07 7A */	lbz r0, 0x77a(r31)
/* 80D30B04  28 00 00 00 */	cmplwi r0, 0
/* 80D30B08  41 82 00 2C */	beq lbl_80D30B34
/* 80D30B0C  38 7F 07 A0 */	addi r3, r31, 0x7a0
/* 80D30B10  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80D30B14  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 80D30B18  4B 53 FC 28 */	b cLib_chaseF__FPfff
/* 80D30B1C  2C 03 00 00 */	cmpwi r3, 0
/* 80D30B20  41 82 00 80 */	beq lbl_80D30BA0
/* 80D30B24  38 00 00 00 */	li r0, 0
/* 80D30B28  98 1F 07 7A */	stb r0, 0x77a(r31)
/* 80D30B2C  98 1F 07 76 */	stb r0, 0x776(r31)
/* 80D30B30  48 00 00 70 */	b lbl_80D30BA0
lbl_80D30B34:
/* 80D30B34  88 1F 07 79 */	lbz r0, 0x779(r31)
/* 80D30B38  28 00 00 00 */	cmplwi r0, 0
/* 80D30B3C  40 82 00 24 */	bne lbl_80D30B60
/* 80D30B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D30B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D30B48  88 9F 07 78 */	lbz r4, 0x778(r31)
/* 80D30B4C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D30B50  7C 05 07 74 */	extsb r5, r0
/* 80D30B54  4B 30 48 0C */	b isSwitch__10dSv_info_cCFii
/* 80D30B58  2C 03 00 00 */	cmpwi r3, 0
/* 80D30B5C  40 82 00 18 */	bne lbl_80D30B74
lbl_80D30B60:
/* 80D30B60  38 7F 07 A0 */	addi r3, r31, 0x7a0
/* 80D30B64  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80D30B68  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 80D30B6C  4B 53 FB D4 */	b cLib_chaseF__FPfff
/* 80D30B70  48 00 00 30 */	b lbl_80D30BA0
lbl_80D30B74:
/* 80D30B74  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80D30B78  D0 1F 07 A0 */	stfs f0, 0x7a0(r31)
/* 80D30B7C  38 00 00 01 */	li r0, 1
/* 80D30B80  98 1F 07 76 */	stb r0, 0x776(r31)
/* 80D30B84  88 1F 07 79 */	lbz r0, 0x779(r31)
/* 80D30B88  28 00 00 00 */	cmplwi r0, 0
/* 80D30B8C  40 82 00 14 */	bne lbl_80D30BA0
/* 80D30B90  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80D30B94  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80D30B98  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 80D30B9C  4B 53 FB A4 */	b cLib_chaseF__FPfff
lbl_80D30BA0:
/* 80D30BA0  C0 3F 07 A4 */	lfs f1, 0x7a4(r31)
/* 80D30BA4  C0 1F 07 A0 */	lfs f0, 0x7a0(r31)
/* 80D30BA8  EC 21 00 2A */	fadds f1, f1, f0
/* 80D30BAC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80D30BB0  EC C1 00 28 */	fsubs f6, f1, f0
/* 80D30BB4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80D30BB8  EC 00 01 B2 */	fmuls f0, f0, f6
/* 80D30BBC  FC 00 00 1E */	fctiwz f0, f0
/* 80D30BC0  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80D30BC4  80 61 01 0C */	lwz r3, 0x10c(r1)
/* 80D30BC8  2C 03 00 0F */	cmpwi r3, 0xf
/* 80D30BCC  38 80 00 10 */	li r4, 0x10
/* 80D30BD0  41 81 00 08 */	bgt lbl_80D30BD8
/* 80D30BD4  38 83 00 01 */	addi r4, r3, 1
lbl_80D30BD8:
/* 80D30BD8  23 24 00 10 */	subfic r25, r4, 0x10
/* 80D30BDC  1C 19 00 0C */	mulli r0, r25, 0xc
/* 80D30BE0  7C BF 02 14 */	add r5, r31, r0
/* 80D30BE4  1C 79 00 06 */	mulli r3, r25, 6
/* 80D30BE8  3B 83 07 14 */	addi r28, r3, 0x714
/* 80D30BEC  7F 9F E2 14 */	add r28, r31, r28
/* 80D30BF0  57 23 08 3C */	slwi r3, r25, 1
/* 80D30BF4  3B 43 07 80 */	addi r26, r3, 0x780
/* 80D30BF8  7F 5F D2 14 */	add r26, r31, r26
/* 80D30BFC  C0 BF 07 B8 */	lfs f5, 0x7b8(r31)
/* 80D30C00  C0 9F 07 A8 */	lfs f4, 0x7a8(r31)
/* 80D30C04  C0 7F 07 B4 */	lfs f3, 0x7b4(r31)
/* 80D30C08  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80D30C0C  C8 3E 00 40 */	lfd f1, 0x40(r30)
/* 80D30C10  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80D30C14  90 01 01 14 */	stw r0, 0x114(r1)
/* 80D30C18  3C 00 43 30 */	lis r0, 0x4330
/* 80D30C1C  90 01 01 10 */	stw r0, 0x110(r1)
/* 80D30C20  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 80D30C24  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D30C28  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D30C2C  EC 00 30 28 */	fsubs f0, f0, f6
/* 80D30C30  EC 02 00 28 */	fsubs f0, f2, f0
/* 80D30C34  EC 03 00 28 */	fsubs f0, f3, f0
/* 80D30C38  EC 24 00 2A */	fadds f1, f4, f0
/* 80D30C3C  C0 1F 07 B0 */	lfs f0, 0x7b0(r31)
/* 80D30C40  D0 05 05 94 */	stfs f0, 0x594(r5)
/* 80D30C44  D0 25 05 98 */	stfs f1, 0x598(r5)
/* 80D30C48  D0 A5 05 9C */	stfs f5, 0x59c(r5)
/* 80D30C4C  38 00 40 00 */	li r0, 0x4000
/* 80D30C50  B0 1C 00 00 */	sth r0, 0(r28)
/* 80D30C54  38 00 00 00 */	li r0, 0
/* 80D30C58  B0 1A 00 00 */	sth r0, 0(r26)
/* 80D30C5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D30C60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D30C64  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80D30C68  7C 00 00 D0 */	neg r0, r0
/* 80D30C6C  7C 04 07 34 */	extsh r4, r0
/* 80D30C70  3B A5 05 A0 */	addi r29, r5, 0x5a0
/* 80D30C74  3B 9C 00 06 */	addi r28, r28, 6
/* 80D30C78  3B 65 06 60 */	addi r27, r5, 0x660
/* 80D30C7C  3B 5A 00 02 */	addi r26, r26, 2
/* 80D30C80  4B 2D B7 5C */	b mDoMtx_YrotS__FPA4_fs
/* 80D30C84  C3 BE 00 A4 */	lfs f29, 0xa4(r30)
/* 80D30C88  88 1F 07 76 */	lbz r0, 0x776(r31)
/* 80D30C8C  28 00 00 00 */	cmplwi r0, 0
/* 80D30C90  40 82 00 68 */	bne lbl_80D30CF8
/* 80D30C94  4B 53 6B D8 */	b cM_rnd__Fv
/* 80D30C98  FC 00 E8 90 */	fmr f0, f29
/* 80D30C9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D30CA0  40 80 00 58 */	bge lbl_80D30CF8
/* 80D30CA4  4B 53 6B C8 */	b cM_rnd__Fv
/* 80D30CA8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D30CAC  EF E0 00 72 */	fmuls f31, f0, f1
/* 80D30CB0  FC 20 F8 90 */	fmr f1, f31
/* 80D30CB4  4B 53 69 30 */	b cM_rad2s__Ff
/* 80D30CB8  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80D30CBC  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 80D30CC0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80D30CC4  7C 64 02 14 */	add r3, r4, r0
/* 80D30CC8  C3 C3 00 04 */	lfs f30, 4(r3)
/* 80D30CCC  FC 20 F8 90 */	fmr f1, f31
/* 80D30CD0  4B 53 69 14 */	b cM_rad2s__Ff
/* 80D30CD4  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80D30CD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D30CDC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80D30CE0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80D30CE4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80D30CE8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80D30CEC  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80D30CF0  D3 C1 00 E8 */	stfs f30, 0xe8(r1)
/* 80D30CF4  48 00 00 20 */	b lbl_80D30D14
lbl_80D30CF8:
/* 80D30CF8  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80D30CFC  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 80D30D00  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80D30D04  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D30D08  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80D30D0C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D30D10  D0 01 00 E8 */	stfs f0, 0xe8(r1)
lbl_80D30D14:
/* 80D30D14  3A D9 00 01 */	addi r22, r25, 1
/* 80D30D18  C3 DE 00 2C */	lfs f30, 0x2c(r30)
/* 80D30D1C  C3 FE 00 AC */	lfs f31, 0xac(r30)
/* 80D30D20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D30D24  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l
/* 80D30D28  48 00 01 C8 */	b lbl_80D30EF0
lbl_80D30D2C:
/* 80D30D2C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80D30D30  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80D30D34  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80D30D38  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80D30D3C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80D30D40  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80D30D44  38 61 00 98 */	addi r3, r1, 0x98
/* 80D30D48  7F A4 EB 78 */	mr r4, r29
/* 80D30D4C  38 BD FF F4 */	addi r5, r29, -12
/* 80D30D50  4B 53 5D E4 */	b __mi__4cXyzCFRC3Vec
/* 80D30D54  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80D30D58  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80D30D5C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80D30D60  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80D30D64  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80D30D68  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80D30D6C  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80D30D70  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80D30D74  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D30D78  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 80D30D7C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D30D80  38 61 00 08 */	addi r3, r1, 8
/* 80D30D84  4B 61 63 B4 */	b PSVECSquareMag
/* 80D30D88  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80D30D8C  40 80 00 28 */	bge lbl_80D30DB4
/* 80D30D90  4B 53 6A DC */	b cM_rnd__Fv
/* 80D30D94  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80D30D98  40 80 00 1C */	bge lbl_80D30DB4
/* 80D30D9C  38 61 00 EC */	addi r3, r1, 0xec
/* 80D30DA0  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80D30DA4  7C 65 1B 78 */	mr r5, r3
/* 80D30DA8  4B 61 62 E8 */	b PSVECAdd
/* 80D30DAC  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80D30DB0  EF BD 00 32 */	fmuls f29, f29, f0
lbl_80D30DB4:
/* 80D30DB4  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 80D30DB8  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80D30DBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80D30DC0  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80D30DC4  38 61 00 EC */	addi r3, r1, 0xec
/* 80D30DC8  7F 64 DB 78 */	mr r4, r27
/* 80D30DCC  7C 65 1B 78 */	mr r5, r3
/* 80D30DD0  4B 61 62 C0 */	b PSVECAdd
/* 80D30DD4  A8 7C FF FE */	lha r3, -2(r28)
/* 80D30DD8  A8 1C 00 04 */	lha r0, 4(r28)
/* 80D30DDC  7C 03 00 50 */	subf r0, r3, r0
/* 80D30DE0  7C 03 07 34 */	extsh r3, r0
/* 80D30DE4  4B 63 42 EC */	b abs
/* 80D30DE8  7C 65 1B 78 */	mr r5, r3
/* 80D30DEC  7F E3 FB 78 */	mr r3, r31
/* 80D30DF0  7F 64 DB 78 */	mr r4, r27
/* 80D30DF4  4B FF F7 F1 */	bl getChainAngleZ__13daObjWchain_cFP4cXyzi
/* 80D30DF8  A8 1C 00 04 */	lha r0, 4(r28)
/* 80D30DFC  7C 00 1A 14 */	add r0, r0, r3
/* 80D30E00  B0 1C 00 04 */	sth r0, 4(r28)
/* 80D30E04  38 61 00 8C */	addi r3, r1, 0x8c
/* 80D30E08  38 81 00 EC */	addi r4, r1, 0xec
/* 80D30E0C  4B 53 61 3C */	b normalizeZP__4cXyzFv
/* 80D30E10  38 61 00 80 */	addi r3, r1, 0x80
/* 80D30E14  38 81 00 EC */	addi r4, r1, 0xec
/* 80D30E18  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80D30E1C  4B 53 5D 68 */	b __ml__4cXyzCFf
/* 80D30E20  38 61 00 74 */	addi r3, r1, 0x74
/* 80D30E24  38 9D FF F4 */	addi r4, r29, -12
/* 80D30E28  38 A1 00 80 */	addi r5, r1, 0x80
/* 80D30E2C  4B 53 5C B8 */	b __pl__4cXyzCFRC3Vec
/* 80D30E30  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80D30E34  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80D30E38  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80D30E3C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80D30E40  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80D30E44  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80D30E48  38 61 00 68 */	addi r3, r1, 0x68
/* 80D30E4C  7F A4 EB 78 */	mr r4, r29
/* 80D30E50  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80D30E54  4B 53 5C E0 */	b __mi__4cXyzCFRC3Vec
/* 80D30E58  38 61 00 5C */	addi r3, r1, 0x5c
/* 80D30E5C  38 81 00 68 */	addi r4, r1, 0x68
/* 80D30E60  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80D30E64  4B 53 5D 20 */	b __ml__4cXyzCFf
/* 80D30E68  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80D30E6C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80D30E70  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80D30E74  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80D30E78  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80D30E7C  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80D30E80  7F 23 CB 78 */	mr r3, r25
/* 80D30E84  38 81 00 EC */	addi r4, r1, 0xec
/* 80D30E88  7C 85 23 78 */	mr r5, r4
/* 80D30E8C  4B 61 5E E0 */	b PSMTXMultVec
/* 80D30E90  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80D30E94  FC 20 00 50 */	fneg f1, f0
/* 80D30E98  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80D30E9C  FC 40 00 50 */	fneg f2, f0
/* 80D30EA0  4B 53 67 D4 */	b cM_atan2s__Fff
/* 80D30EA4  38 03 40 00 */	addi r0, r3, 0x4000
/* 80D30EA8  B0 1C 00 00 */	sth r0, 0(r28)
/* 80D30EAC  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80D30EB0  EC 20 00 32 */	fmuls f1, f0, f0
/* 80D30EB4  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80D30EB8  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D30EBC  EC 41 00 2A */	fadds f2, f1, f0
/* 80D30EC0  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 80D30EC4  40 81 00 0C */	ble lbl_80D30ED0
/* 80D30EC8  FC 00 10 34 */	frsqrte f0, f2
/* 80D30ECC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80D30ED0:
/* 80D30ED0  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 80D30ED4  4B 53 67 A0 */	b cM_atan2s__Fff
/* 80D30ED8  B0 7A 00 00 */	sth r3, 0(r26)
/* 80D30EDC  3A D6 00 01 */	addi r22, r22, 1
/* 80D30EE0  3B BD 00 0C */	addi r29, r29, 0xc
/* 80D30EE4  3B 9C 00 06 */	addi r28, r28, 6
/* 80D30EE8  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80D30EEC  3B 5A 00 02 */	addi r26, r26, 2
lbl_80D30EF0:
/* 80D30EF0  2C 16 00 10 */	cmpwi r22, 0x10
/* 80D30EF4  41 80 FE 38 */	blt lbl_80D30D2C
/* 80D30EF8  C0 1F 06 48 */	lfs f0, 0x648(r31)
/* 80D30EFC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80D30F00  C0 1F 06 4C */	lfs f0, 0x64c(r31)
/* 80D30F04  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80D30F08  C0 1F 06 50 */	lfs f0, 0x650(r31)
/* 80D30F0C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80D30F10  A8 7F 07 72 */	lha r3, 0x772(r31)
/* 80D30F14  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 80D30F18  7C 03 00 50 */	subf r0, r3, r0
/* 80D30F1C  7C 03 07 34 */	extsh r3, r0
/* 80D30F20  4B 63 41 B0 */	b abs
/* 80D30F24  7C 65 1B 78 */	mr r5, r3
/* 80D30F28  7F E3 FB 78 */	mr r3, r31
/* 80D30F2C  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80D30F30  4B FF F6 B5 */	bl getChainAngleZ__13daObjWchain_cFP4cXyzi
/* 80D30F34  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 80D30F38  7C 00 1A 14 */	add r0, r0, r3
/* 80D30F3C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80D30F40  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 80D30F44  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80D30F48  C0 1F 05 8C */	lfs f0, 0x58c(r31)
/* 80D30F4C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80D30F50  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 80D30F54  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80D30F58  38 61 00 50 */	addi r3, r1, 0x50
/* 80D30F5C  38 9F 05 88 */	addi r4, r31, 0x588
/* 80D30F60  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D30F64  4B 53 5B D0 */	b __mi__4cXyzCFRC3Vec
/* 80D30F68  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80D30F6C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80D30F70  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80D30F74  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 80D30F78  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80D30F7C  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80D30F80  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80D30F84  EC 01 00 2A */	fadds f0, f1, f0
/* 80D30F88  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80D30F8C  38 61 00 EC */	addi r3, r1, 0xec
/* 80D30F90  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80D30F94  7C 65 1B 78 */	mr r5, r3
/* 80D30F98  4B 61 60 F8 */	b PSVECAdd
/* 80D30F9C  38 61 00 44 */	addi r3, r1, 0x44
/* 80D30FA0  38 81 00 EC */	addi r4, r1, 0xec
/* 80D30FA4  4B 53 5F A4 */	b normalizeZP__4cXyzFv
/* 80D30FA8  38 61 00 38 */	addi r3, r1, 0x38
/* 80D30FAC  38 81 00 EC */	addi r4, r1, 0xec
/* 80D30FB0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80D30FB4  4B 53 5B D0 */	b __ml__4cXyzCFf
/* 80D30FB8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D30FBC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D30FC0  38 A1 00 38 */	addi r5, r1, 0x38
/* 80D30FC4  4B 53 5B 20 */	b __pl__4cXyzCFRC3Vec
/* 80D30FC8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D30FCC  D0 1F 05 88 */	stfs f0, 0x588(r31)
/* 80D30FD0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80D30FD4  D0 1F 05 8C */	stfs f0, 0x58c(r31)
/* 80D30FD8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80D30FDC  D0 1F 05 90 */	stfs f0, 0x590(r31)
/* 80D30FE0  38 61 00 20 */	addi r3, r1, 0x20
/* 80D30FE4  38 9F 05 88 */	addi r4, r31, 0x588
/* 80D30FE8  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80D30FEC  4B 53 5B 48 */	b __mi__4cXyzCFRC3Vec
/* 80D30FF0  38 61 00 14 */	addi r3, r1, 0x14
/* 80D30FF4  38 81 00 20 */	addi r4, r1, 0x20
/* 80D30FF8  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80D30FFC  4B 53 5B 88 */	b __ml__4cXyzCFf
/* 80D31000  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D31004  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80D31008  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D3100C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D31010  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D31014  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80D31018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3101C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D31020  38 81 00 EC */	addi r4, r1, 0xec
/* 80D31024  7C 85 23 78 */	mr r5, r4
/* 80D31028  4B 61 5D 44 */	b PSMTXMultVec
/* 80D3102C  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80D31030  FC 20 00 50 */	fneg f1, f0
/* 80D31034  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80D31038  FC 40 00 50 */	fneg f2, f0
/* 80D3103C  4B 53 66 38 */	b cM_atan2s__Fff
/* 80D31040  38 03 40 00 */	addi r0, r3, 0x4000
/* 80D31044  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80D31048  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80D3104C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80D31050  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 80D31054  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D31058  EC 41 00 2A */	fadds f2, f1, f0
/* 80D3105C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80D31060  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D31064  40 81 00 0C */	ble lbl_80D31070
/* 80D31068  FC 00 10 34 */	frsqrte f0, f2
/* 80D3106C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80D31070:
/* 80D31070  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 80D31074  4B 53 66 00 */	b cM_atan2s__Fff
/* 80D31078  B0 7F 07 7C */	sth r3, 0x77c(r31)
lbl_80D3107C:
/* 80D3107C  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 80D31080  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 80D31084  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 80D31088  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 80D3108C  E3 A1 01 48 */	psq_l f29, 328(r1), 0, 0 /* qr0 */
/* 80D31090  CB A1 01 40 */	lfd f29, 0x140(r1)
/* 80D31094  39 61 01 40 */	addi r11, r1, 0x140
/* 80D31098  4B 63 11 74 */	b _restgpr_22
/* 80D3109C  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80D310A0  7C 08 03 A6 */	mtlr r0
/* 80D310A4  38 21 01 70 */	addi r1, r1, 0x170
/* 80D310A8  4E 80 00 20 */	blr 
