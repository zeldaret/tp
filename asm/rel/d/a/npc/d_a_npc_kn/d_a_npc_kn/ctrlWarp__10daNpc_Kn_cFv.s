lbl_80A3D6D8:
/* 80A3D6D8  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80A3D6DC  7C 08 02 A6 */	mflr r0
/* 80A3D6E0  90 01 01 34 */	stw r0, 0x134(r1)
/* 80A3D6E4  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80A3D6E8  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 80A3D6EC  39 61 01 20 */	addi r11, r1, 0x120
/* 80A3D6F0  4B 92 4A D8 */	b _savegpr_24
/* 80A3D6F4  7C 7B 1B 78 */	mr r27, r3
/* 80A3D6F8  3C 80 80 A4 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A3D6FC  3B A4 0D 34 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 80A3D700  3C 80 80 A4 */	lis r4, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3D704  3B C4 08 C8 */	addi r30, r4, mCcDObjData__10daNpc_Kn_c@l
/* 80A3D708  3B 80 00 00 */	li r28, 0
/* 80A3D70C  88 03 17 0C */	lbz r0, 0x170c(r3)
/* 80A3D710  2C 00 00 02 */	cmpwi r0, 2
/* 80A3D714  41 82 03 F4 */	beq lbl_80A3DB08
/* 80A3D718  40 80 00 14 */	bge lbl_80A3D72C
/* 80A3D71C  2C 00 00 00 */	cmpwi r0, 0
/* 80A3D720  41 82 00 18 */	beq lbl_80A3D738
/* 80A3D724  40 80 02 8C */	bge lbl_80A3D9B0
/* 80A3D728  48 00 05 A0 */	b lbl_80A3DCC8
lbl_80A3D72C:
/* 80A3D72C  2C 00 00 04 */	cmpwi r0, 4
/* 80A3D730  40 80 05 98 */	bge lbl_80A3DCC8
/* 80A3D734  48 00 04 44 */	b lbl_80A3DB78
lbl_80A3D738:
/* 80A3D738  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3D73C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A3D740  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A3D744  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80A3D748  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A3D74C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80A3D750  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A3D754  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80A3D758  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A3D75C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80A3D760  38 61 00 90 */	addi r3, r1, 0x90
/* 80A3D764  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80A3D768  4B 82 93 CC */	b __mi__4cXyzCFRC3Vec
/* 80A3D76C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80A3D770  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3D774  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A3D778  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3D77C  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80A3D780  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3D784  38 61 00 0C */	addi r3, r1, 0xc
/* 80A3D788  4B 90 99 B0 */	b PSVECSquareMag
/* 80A3D78C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A3D790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3D794  40 81 00 58 */	ble lbl_80A3D7EC
/* 80A3D798  FC 00 08 34 */	frsqrte f0, f1
/* 80A3D79C  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 80A3D7A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A3D7A4  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 80A3D7A8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A3D7AC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A3D7B0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A3D7B4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A3D7B8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A3D7BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A3D7C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A3D7C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A3D7C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A3D7CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A3D7D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A3D7D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A3D7D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A3D7DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A3D7E0  FC 21 00 32 */	fmul f1, f1, f0
/* 80A3D7E4  FC 20 08 18 */	frsp f1, f1
/* 80A3D7E8  48 00 00 88 */	b lbl_80A3D870
lbl_80A3D7EC:
/* 80A3D7EC  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 80A3D7F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3D7F4  40 80 00 10 */	bge lbl_80A3D804
/* 80A3D7F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A3D7FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A3D800  48 00 00 70 */	b lbl_80A3D870
lbl_80A3D804:
/* 80A3D804  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A3D808  80 81 00 08 */	lwz r4, 8(r1)
/* 80A3D80C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A3D810  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A3D814  7C 03 00 00 */	cmpw r3, r0
/* 80A3D818  41 82 00 14 */	beq lbl_80A3D82C
/* 80A3D81C  40 80 00 40 */	bge lbl_80A3D85C
/* 80A3D820  2C 03 00 00 */	cmpwi r3, 0
/* 80A3D824  41 82 00 20 */	beq lbl_80A3D844
/* 80A3D828  48 00 00 34 */	b lbl_80A3D85C
lbl_80A3D82C:
/* 80A3D82C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A3D830  41 82 00 0C */	beq lbl_80A3D83C
/* 80A3D834  38 00 00 01 */	li r0, 1
/* 80A3D838  48 00 00 28 */	b lbl_80A3D860
lbl_80A3D83C:
/* 80A3D83C  38 00 00 02 */	li r0, 2
/* 80A3D840  48 00 00 20 */	b lbl_80A3D860
lbl_80A3D844:
/* 80A3D844  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A3D848  41 82 00 0C */	beq lbl_80A3D854
/* 80A3D84C  38 00 00 05 */	li r0, 5
/* 80A3D850  48 00 00 10 */	b lbl_80A3D860
lbl_80A3D854:
/* 80A3D854  38 00 00 03 */	li r0, 3
/* 80A3D858  48 00 00 08 */	b lbl_80A3D860
lbl_80A3D85C:
/* 80A3D85C  38 00 00 04 */	li r0, 4
lbl_80A3D860:
/* 80A3D860  2C 00 00 01 */	cmpwi r0, 1
/* 80A3D864  40 82 00 0C */	bne lbl_80A3D870
/* 80A3D868  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A3D86C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A3D870:
/* 80A3D870  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A3D874  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 80A3D878  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3D87C  40 81 04 4C */	ble lbl_80A3DCC8
/* 80A3D880  3B 80 00 01 */	li r28, 1
/* 80A3D884  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A3D888  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80A3D88C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80A3D890  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80A3D894  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80A3D898  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3D89C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3D8A0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A3D8A4  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80A3D8A8  4B 5C EB 34 */	b mDoMtx_YrotS__FPA4_fs
/* 80A3D8AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3D8B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3D8B4  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80A3D8B8  7C 85 23 78 */	mr r5, r4
/* 80A3D8BC  4B 90 94 B0 */	b PSMTXMultVec
/* 80A3D8C0  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80A3D8C4  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80A3D8C8  7C 65 1B 78 */	mr r5, r3
/* 80A3D8CC  4B 90 97 C4 */	b PSVECAdd
/* 80A3D8D0  C0 21 00 DC */	lfs f1, 0xdc(r1)
/* 80A3D8D4  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 80A3D8D8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A3D8DC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80A3D8E0  3B 20 00 00 */	li r25, 0
/* 80A3D8E4  3B E0 00 00 */	li r31, 0
/* 80A3D8E8  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A3D8EC  3B 43 0C D0 */	addi r26, r3, mGroundY__11fopAcM_gc_c@l
/* 80A3D8F0  C3 FE 02 18 */	lfs f31, 0x218(r30)
lbl_80A3D8F4:
/* 80A3D8F4  38 61 00 84 */	addi r3, r1, 0x84
/* 80A3D8F8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80A3D8FC  38 BD 1F 04 */	addi r5, r29, 0x1f04
/* 80A3D900  7C A5 FA 14 */	add r5, r5, r31
/* 80A3D904  4B 82 91 E0 */	b __pl__4cXyzCFRC3Vec
/* 80A3D908  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80A3D90C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80A3D910  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80A3D914  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80A3D918  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80A3D91C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80A3D920  38 61 00 CC */	addi r3, r1, 0xcc
/* 80A3D924  4B 5E 03 98 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A3D928  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A3D92C  41 82 00 1C */	beq lbl_80A3D948
/* 80A3D930  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80A3D934  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80A3D938  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80A3D93C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3D940  4C 41 13 82 */	cror 2, 1, 2
/* 80A3D944  41 82 00 0C */	beq lbl_80A3D950
lbl_80A3D948:
/* 80A3D948  3B 80 00 00 */	li r28, 0
/* 80A3D94C  48 00 00 14 */	b lbl_80A3D960
lbl_80A3D950:
/* 80A3D950  3B 39 00 01 */	addi r25, r25, 1
/* 80A3D954  2C 19 00 05 */	cmpwi r25, 5
/* 80A3D958  3B FF 00 0C */	addi r31, r31, 0xc
/* 80A3D95C  41 80 FF 98 */	blt lbl_80A3D8F4
lbl_80A3D960:
/* 80A3D960  2C 1C 00 01 */	cmpwi r28, 1
/* 80A3D964  40 82 03 64 */	bne lbl_80A3DCC8
/* 80A3D968  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A3D96C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A3D970  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80A3D974  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80A3D978  D0 1B 17 00 */	stfs f0, 0x1700(r27)
/* 80A3D97C  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80A3D980  D0 1B 17 04 */	stfs f0, 0x1704(r27)
/* 80A3D984  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80A3D988  D0 1B 17 08 */	stfs f0, 0x1708(r27)
/* 80A3D98C  38 00 00 01 */	li r0, 1
/* 80A3D990  98 1B 17 0C */	stb r0, 0x170c(r27)
/* 80A3D994  38 00 00 00 */	li r0, 0
/* 80A3D998  98 1B 17 0D */	stb r0, 0x170d(r27)
/* 80A3D99C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80A3D9A0  D0 1B 16 F4 */	stfs f0, 0x16f4(r27)
/* 80A3D9A4  D0 1B 16 F8 */	stfs f0, 0x16f8(r27)
/* 80A3D9A8  D0 1B 16 FC */	stfs f0, 0x16fc(r27)
/* 80A3D9AC  48 00 03 1C */	b lbl_80A3DCC8
lbl_80A3D9B0:
/* 80A3D9B0  3B 80 00 01 */	li r28, 1
/* 80A3D9B4  88 7B 17 0D */	lbz r3, 0x170d(r27)
/* 80A3D9B8  38 03 00 01 */	addi r0, r3, 1
/* 80A3D9BC  98 1B 17 0D */	stb r0, 0x170d(r27)
/* 80A3D9C0  88 1B 17 0D */	lbz r0, 0x170d(r27)
/* 80A3D9C4  28 00 00 0F */	cmplwi r0, 0xf
/* 80A3D9C8  40 80 01 10 */	bge lbl_80A3DAD8
/* 80A3D9CC  3B 20 00 00 */	li r25, 0
/* 80A3D9D0  3B E0 00 00 */	li r31, 0
lbl_80A3D9D4:
/* 80A3D9D4  38 7D 1F A0 */	addi r3, r29, 0x1fa0
/* 80A3D9D8  7C 63 CA 14 */	add r3, r3, r25
/* 80A3D9DC  8B 43 00 00 */	lbz r26, 0(r3)
/* 80A3D9E0  8B 03 00 01 */	lbz r24, 1(r3)
/* 80A3D9E4  88 1B 17 0D */	lbz r0, 0x170d(r27)
/* 80A3D9E8  7C 1A 00 00 */	cmpw r26, r0
/* 80A3D9EC  41 81 00 D8 */	bgt lbl_80A3DAC4
/* 80A3D9F0  7C 18 00 00 */	cmpw r24, r0
/* 80A3D9F4  40 81 00 D0 */	ble lbl_80A3DAC4
/* 80A3D9F8  38 7D 1F 40 */	addi r3, r29, 0x1f40
/* 80A3D9FC  7C 63 FA 14 */	add r3, r3, r31
/* 80A3DA00  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A3DA04  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80A3DA08  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A3DA0C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80A3DA10  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A3DA14  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80A3DA18  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A3DA1C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80A3DA20  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A3DA24  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80A3DA28  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A3DA2C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80A3DA30  38 61 00 78 */	addi r3, r1, 0x78
/* 80A3DA34  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80A3DA38  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 80A3DA3C  4B 82 90 F8 */	b __mi__4cXyzCFRC3Vec
/* 80A3DA40  38 61 00 6C */	addi r3, r1, 0x6c
/* 80A3DA44  38 81 00 78 */	addi r4, r1, 0x78
/* 80A3DA48  88 1B 17 0D */	lbz r0, 0x170d(r27)
/* 80A3DA4C  7C 1A 00 50 */	subf r0, r26, r0
/* 80A3DA50  C8 3E 00 30 */	lfd f1, 0x30(r30)
/* 80A3DA54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3DA58  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80A3DA5C  3C 00 43 30 */	lis r0, 0x4330
/* 80A3DA60  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 80A3DA64  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 80A3DA68  EC 20 08 28 */	fsubs f1, f0, f1
/* 80A3DA6C  4B 82 91 18 */	b __ml__4cXyzCFf
/* 80A3DA70  38 61 00 60 */	addi r3, r1, 0x60
/* 80A3DA74  38 81 00 6C */	addi r4, r1, 0x6c
/* 80A3DA78  7C 1A C0 50 */	subf r0, r26, r24
/* 80A3DA7C  C8 3E 00 30 */	lfd f1, 0x30(r30)
/* 80A3DA80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3DA84  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80A3DA88  3C 00 43 30 */	lis r0, 0x4330
/* 80A3DA8C  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80A3DA90  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 80A3DA94  EC 20 08 28 */	fsubs f1, f0, f1
/* 80A3DA98  4B 82 91 80 */	b __dv__4cXyzCFf
/* 80A3DA9C  38 61 00 54 */	addi r3, r1, 0x54
/* 80A3DAA0  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80A3DAA4  38 A1 00 60 */	addi r5, r1, 0x60
/* 80A3DAA8  4B 82 90 3C */	b __pl__4cXyzCFRC3Vec
/* 80A3DAAC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A3DAB0  D0 1B 16 F4 */	stfs f0, 0x16f4(r27)
/* 80A3DAB4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80A3DAB8  D0 1B 16 F8 */	stfs f0, 0x16f8(r27)
/* 80A3DABC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A3DAC0  D0 1B 16 FC */	stfs f0, 0x16fc(r27)
lbl_80A3DAC4:
/* 80A3DAC4  3B 39 00 01 */	addi r25, r25, 1
/* 80A3DAC8  2C 19 00 07 */	cmpwi r25, 7
/* 80A3DACC  3B FF 00 0C */	addi r31, r31, 0xc
/* 80A3DAD0  41 80 FF 04 */	blt lbl_80A3D9D4
/* 80A3DAD4  48 00 01 F4 */	b lbl_80A3DCC8
lbl_80A3DAD8:
/* 80A3DAD8  38 7D 1F 40 */	addi r3, r29, 0x1f40
/* 80A3DADC  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 80A3DAE0  D0 1B 16 F4 */	stfs f0, 0x16f4(r27)
/* 80A3DAE4  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 80A3DAE8  D0 1B 16 F8 */	stfs f0, 0x16f8(r27)
/* 80A3DAEC  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 80A3DAF0  D0 1B 16 FC */	stfs f0, 0x16fc(r27)
/* 80A3DAF4  38 00 00 02 */	li r0, 2
/* 80A3DAF8  98 1B 17 0C */	stb r0, 0x170c(r27)
/* 80A3DAFC  38 00 00 00 */	li r0, 0
/* 80A3DB00  98 1B 17 0D */	stb r0, 0x170d(r27)
/* 80A3DB04  48 00 01 C4 */	b lbl_80A3DCC8
lbl_80A3DB08:
/* 80A3DB08  3B 80 00 01 */	li r28, 1
/* 80A3DB0C  88 9B 17 0D */	lbz r4, 0x170d(r27)
/* 80A3DB10  38 04 00 01 */	addi r0, r4, 1
/* 80A3DB14  98 1B 17 0D */	stb r0, 0x170d(r27)
/* 80A3DB18  88 1B 17 0D */	lbz r0, 0x170d(r27)
/* 80A3DB1C  28 00 00 05 */	cmplwi r0, 5
/* 80A3DB20  41 80 01 A8 */	blt lbl_80A3DCC8
/* 80A3DB24  38 00 00 00 */	li r0, 0
/* 80A3DB28  98 1B 17 0D */	stb r0, 0x170d(r27)
/* 80A3DB2C  38 00 00 03 */	li r0, 3
/* 80A3DB30  98 1B 17 0C */	stb r0, 0x170c(r27)
/* 80A3DB34  C0 1B 17 00 */	lfs f0, 0x1700(r27)
/* 80A3DB38  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A3DB3C  C0 1B 17 04 */	lfs f0, 0x1704(r27)
/* 80A3DB40  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A3DB44  C0 1B 17 08 */	lfs f0, 0x1708(r27)
/* 80A3DB48  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A3DB4C  38 81 00 48 */	addi r4, r1, 0x48
/* 80A3DB50  4B FF CF 09 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A3DB54  7F 63 DB 78 */	mr r3, r27
/* 80A3DB58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3DB5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A3DB60  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3DB64  4B 5D CB AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3DB68  7C 64 1B 78 */	mr r4, r3
/* 80A3DB6C  7F 63 DB 78 */	mr r3, r27
/* 80A3DB70  4B FF CF 81 */	bl setAngle__10daNpc_Kn_cFs
/* 80A3DB74  48 00 01 54 */	b lbl_80A3DCC8
lbl_80A3DB78:
/* 80A3DB78  3B 80 00 01 */	li r28, 1
/* 80A3DB7C  88 7B 17 0D */	lbz r3, 0x170d(r27)
/* 80A3DB80  38 03 00 01 */	addi r0, r3, 1
/* 80A3DB84  98 1B 17 0D */	stb r0, 0x170d(r27)
/* 80A3DB88  88 1B 17 0D */	lbz r0, 0x170d(r27)
/* 80A3DB8C  28 00 00 06 */	cmplwi r0, 6
/* 80A3DB90  40 80 01 10 */	bge lbl_80A3DCA0
/* 80A3DB94  3B 00 00 00 */	li r24, 0
/* 80A3DB98  3B E0 00 00 */	li r31, 0
lbl_80A3DB9C:
/* 80A3DB9C  38 7D 1F D8 */	addi r3, r29, 0x1fd8
/* 80A3DBA0  7C 63 C2 14 */	add r3, r3, r24
/* 80A3DBA4  8B 23 00 00 */	lbz r25, 0(r3)
/* 80A3DBA8  8B 43 00 01 */	lbz r26, 1(r3)
/* 80A3DBAC  88 1B 17 0D */	lbz r0, 0x170d(r27)
/* 80A3DBB0  7C 19 00 00 */	cmpw r25, r0
/* 80A3DBB4  41 81 00 D8 */	bgt lbl_80A3DC8C
/* 80A3DBB8  7C 1A 00 00 */	cmpw r26, r0
/* 80A3DBBC  40 81 00 D0 */	ble lbl_80A3DC8C
/* 80A3DBC0  38 7D 1F A8 */	addi r3, r29, 0x1fa8
/* 80A3DBC4  7C 63 FA 14 */	add r3, r3, r31
/* 80A3DBC8  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A3DBCC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80A3DBD0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A3DBD4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80A3DBD8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A3DBDC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80A3DBE0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A3DBE4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80A3DBE8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A3DBEC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80A3DBF0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80A3DBF4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80A3DBF8  38 61 00 3C */	addi r3, r1, 0x3c
/* 80A3DBFC  38 81 00 9C */	addi r4, r1, 0x9c
/* 80A3DC00  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 80A3DC04  4B 82 8F 30 */	b __mi__4cXyzCFRC3Vec
/* 80A3DC08  38 61 00 30 */	addi r3, r1, 0x30
/* 80A3DC0C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80A3DC10  88 1B 17 0D */	lbz r0, 0x170d(r27)
/* 80A3DC14  7C 19 00 50 */	subf r0, r25, r0
/* 80A3DC18  C8 3E 00 30 */	lfd f1, 0x30(r30)
/* 80A3DC1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3DC20  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80A3DC24  3C 00 43 30 */	lis r0, 0x4330
/* 80A3DC28  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80A3DC2C  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 80A3DC30  EC 20 08 28 */	fsubs f1, f0, f1
/* 80A3DC34  4B 82 8F 50 */	b __ml__4cXyzCFf
/* 80A3DC38  38 61 00 24 */	addi r3, r1, 0x24
/* 80A3DC3C  38 81 00 30 */	addi r4, r1, 0x30
/* 80A3DC40  7C 19 D0 50 */	subf r0, r25, r26
/* 80A3DC44  C8 3E 00 30 */	lfd f1, 0x30(r30)
/* 80A3DC48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A3DC4C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80A3DC50  3C 00 43 30 */	lis r0, 0x4330
/* 80A3DC54  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 80A3DC58  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 80A3DC5C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80A3DC60  4B 82 8F B8 */	b __dv__4cXyzCFf
/* 80A3DC64  38 61 00 18 */	addi r3, r1, 0x18
/* 80A3DC68  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80A3DC6C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80A3DC70  4B 82 8E 74 */	b __pl__4cXyzCFRC3Vec
/* 80A3DC74  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A3DC78  D0 1B 16 F4 */	stfs f0, 0x16f4(r27)
/* 80A3DC7C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A3DC80  D0 1B 16 F8 */	stfs f0, 0x16f8(r27)
/* 80A3DC84  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A3DC88  D0 1B 16 FC */	stfs f0, 0x16fc(r27)
lbl_80A3DC8C:
/* 80A3DC8C  3B 18 00 01 */	addi r24, r24, 1
/* 80A3DC90  2C 18 00 03 */	cmpwi r24, 3
/* 80A3DC94  3B FF 00 0C */	addi r31, r31, 0xc
/* 80A3DC98  41 80 FF 04 */	blt lbl_80A3DB9C
/* 80A3DC9C  48 00 00 2C */	b lbl_80A3DCC8
lbl_80A3DCA0:
/* 80A3DCA0  38 7D 1F A8 */	addi r3, r29, 0x1fa8
/* 80A3DCA4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80A3DCA8  D0 1B 16 F4 */	stfs f0, 0x16f4(r27)
/* 80A3DCAC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80A3DCB0  D0 1B 16 F8 */	stfs f0, 0x16f8(r27)
/* 80A3DCB4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A3DCB8  D0 1B 16 FC */	stfs f0, 0x16fc(r27)
/* 80A3DCBC  38 00 00 00 */	li r0, 0
/* 80A3DCC0  98 1B 17 0C */	stb r0, 0x170c(r27)
/* 80A3DCC4  98 1B 17 0D */	stb r0, 0x170d(r27)
lbl_80A3DCC8:
/* 80A3DCC8  7F 83 E3 78 */	mr r3, r28
/* 80A3DCCC  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 80A3DCD0  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 80A3DCD4  39 61 01 20 */	addi r11, r1, 0x120
/* 80A3DCD8  4B 92 45 3C */	b _restgpr_24
/* 80A3DCDC  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80A3DCE0  7C 08 03 A6 */	mtlr r0
/* 80A3DCE4  38 21 01 30 */	addi r1, r1, 0x130
/* 80A3DCE8  4E 80 00 20 */	blr 
