lbl_8094F5D8:
/* 8094F5D8  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 8094F5DC  7C 08 02 A6 */	mflr r0
/* 8094F5E0  90 01 01 94 */	stw r0, 0x194(r1)
/* 8094F5E4  DB E1 01 80 */	stfd f31, 0x180(r1)
/* 8094F5E8  F3 E1 01 88 */	psq_st f31, 392(r1), 0, 0 /* qr0 */
/* 8094F5EC  39 61 01 80 */	addi r11, r1, 0x180
/* 8094F5F0  4B A1 2B D0 */	b _savegpr_22
/* 8094F5F4  7C 7C 1B 78 */	mr r28, r3
/* 8094F5F8  3C 80 80 95 */	lis r4, cNullVec__6Z2Calc@ha
/* 8094F5FC  3B A4 13 30 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 8094F600  3C 80 80 95 */	lis r4, lit_1109@ha
/* 8094F604  3B C4 15 50 */	addi r30, r4, lit_1109@l
/* 8094F608  3C 80 80 95 */	lis r4, lit_3958@ha
/* 8094F60C  3B E4 11 C0 */	addi r31, r4, lit_3958@l
/* 8094F610  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8094F614  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 8094F618  80 03 08 B4 */	lwz r0, 0x8b4(r3)
/* 8094F61C  60 00 00 01 */	ori r0, r0, 1
/* 8094F620  90 03 08 B4 */	stw r0, 0x8b4(r3)
/* 8094F624  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8094F628  3A C4 61 C0 */	addi r22, r4, g_dComIfG_gameInfo@l
/* 8094F62C  80 96 5D AC */	lwz r4, 0x5dac(r22)
/* 8094F630  4B 6C B1 B0 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8094F634  D0 3C 05 E0 */	stfs f1, 0x5e0(r28)
/* 8094F638  7F 83 E3 78 */	mr r3, r28
/* 8094F63C  80 96 5D AC */	lwz r4, 0x5dac(r22)
/* 8094F640  4B 6C B0 D0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8094F644  B0 7C 05 E4 */	sth r3, 0x5e4(r28)
/* 8094F648  38 00 00 00 */	li r0, 0
/* 8094F64C  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
/* 8094F650  7F 83 E3 78 */	mr r3, r28
/* 8094F654  4B FF CC 45 */	bl damage_check__FP8ni_class
/* 8094F658  3B 60 00 00 */	li r27, 0
/* 8094F65C  3B 40 00 00 */	li r26, 0
/* 8094F660  3B 20 00 00 */	li r25, 0
/* 8094F664  3B 00 00 00 */	li r24, 0
/* 8094F668  3A E0 00 01 */	li r23, 1
/* 8094F66C  3A C0 00 01 */	li r22, 1
/* 8094F670  C0 3C 06 10 */	lfs f1, 0x610(r28)
/* 8094F674  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8094F678  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094F67C  40 80 02 18 */	bge lbl_8094F894
/* 8094F680  38 00 00 00 */	li r0, 0
/* 8094F684  98 1C 0A 50 */	stb r0, 0xa50(r28)
/* 8094F688  A8 1C 05 FA */	lha r0, 0x5fa(r28)
/* 8094F68C  28 00 00 0F */	cmplwi r0, 0xf
/* 8094F690  41 81 01 0C */	bgt lbl_8094F79C
/* 8094F694  3C 60 80 95 */	lis r3, lit_5666@ha
/* 8094F698  38 63 13 FC */	addi r3, r3, lit_5666@l
/* 8094F69C  54 00 10 3A */	slwi r0, r0, 2
/* 8094F6A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8094F6A4  7C 09 03 A6 */	mtctr r0
/* 8094F6A8  4E 80 04 20 */	bctr 
lbl_8094F6AC:
/* 8094F6AC  7F 83 E3 78 */	mr r3, r28
/* 8094F6B0  4B FF D1 05 */	bl ni_normal__FP8ni_class
/* 8094F6B4  3B 60 00 01 */	li r27, 1
/* 8094F6B8  3B 40 00 01 */	li r26, 1
/* 8094F6BC  3B 20 00 01 */	li r25, 1
/* 8094F6C0  38 00 00 01 */	li r0, 1
/* 8094F6C4  98 1C 0A 50 */	stb r0, 0xa50(r28)
/* 8094F6C8  48 00 00 D4 */	b lbl_8094F79C
lbl_8094F6CC:
/* 8094F6CC  7F 83 E3 78 */	mr r3, r28
/* 8094F6D0  4B FF D7 AD */	bl ni_away__FP8ni_class
/* 8094F6D4  3B 60 00 01 */	li r27, 1
/* 8094F6D8  3B 40 00 01 */	li r26, 1
/* 8094F6DC  3B 20 00 01 */	li r25, 1
/* 8094F6E0  48 00 00 BC */	b lbl_8094F79C
lbl_8094F6E4:
/* 8094F6E4  7F 83 E3 78 */	mr r3, r28
/* 8094F6E8  4B FF DB BD */	bl ni_swim__FP8ni_class
/* 8094F6EC  38 00 00 01 */	li r0, 1
/* 8094F6F0  98 1C 0A 50 */	stb r0, 0xa50(r28)
/* 8094F6F4  3B 20 00 01 */	li r25, 1
/* 8094F6F8  3B 00 00 01 */	li r24, 1
/* 8094F6FC  48 00 00 A0 */	b lbl_8094F79C
lbl_8094F700:
/* 8094F700  7F 83 E3 78 */	mr r3, r28
/* 8094F704  4B FF DF 09 */	bl ni_carry__FP8ni_class
/* 8094F708  7C 77 1B 78 */	mr r23, r3
/* 8094F70C  48 00 00 90 */	b lbl_8094F79C
lbl_8094F710:
/* 8094F710  7F 83 E3 78 */	mr r3, r28
/* 8094F714  4B FF E0 A9 */	bl ni_fly__FP8ni_class
/* 8094F718  3B 20 00 01 */	li r25, 1
/* 8094F71C  48 00 00 80 */	b lbl_8094F79C
lbl_8094F720:
/* 8094F720  7F 83 E3 78 */	mr r3, r28
/* 8094F724  4B FF E1 C9 */	bl ni_drop__FP8ni_class
/* 8094F728  3B 20 00 01 */	li r25, 1
/* 8094F72C  48 00 00 70 */	b lbl_8094F79C
lbl_8094F730:
/* 8094F730  7F 83 E3 78 */	mr r3, r28
/* 8094F734  4B FF E2 D9 */	bl ni_return__FP8ni_class
/* 8094F738  48 00 00 64 */	b lbl_8094F79C
lbl_8094F73C:
/* 8094F73C  7F 83 E3 78 */	mr r3, r28
/* 8094F740  4B FF E4 59 */	bl ni_damage__FP8ni_class
/* 8094F744  3B 60 00 01 */	li r27, 1
/* 8094F748  3B 40 00 01 */	li r26, 1
/* 8094F74C  48 00 00 50 */	b lbl_8094F79C
lbl_8094F750:
/* 8094F750  7F 83 E3 78 */	mr r3, r28
/* 8094F754  4B FF E6 21 */	bl ni_windspin__FP8ni_class
/* 8094F758  3B 20 00 01 */	li r25, 1
/* 8094F75C  48 00 00 40 */	b lbl_8094F79C
lbl_8094F760:
/* 8094F760  7F 83 E3 78 */	mr r3, r28
/* 8094F764  4B FF E7 6D */	bl ni_demo0__FP8ni_class
/* 8094F768  7C 76 1B 78 */	mr r22, r3
/* 8094F76C  48 00 00 30 */	b lbl_8094F79C
lbl_8094F770:
/* 8094F770  7F 83 E3 78 */	mr r3, r28
/* 8094F774  4B FF EB 3D */	bl ni_message__FP8ni_class
/* 8094F778  3B 60 00 01 */	li r27, 1
/* 8094F77C  3B 20 00 01 */	li r25, 1
/* 8094F780  3B 40 00 01 */	li r26, 1
/* 8094F784  38 00 00 02 */	li r0, 2
/* 8094F788  98 1C 0A 50 */	stb r0, 0xa50(r28)
/* 8094F78C  48 00 00 10 */	b lbl_8094F79C
lbl_8094F790:
/* 8094F790  7F 83 E3 78 */	mr r3, r28
/* 8094F794  4B FF ED 69 */	bl ni_play__FP8ni_class
/* 8094F798  7C 78 1B 78 */	mr r24, r3
lbl_8094F79C:
/* 8094F79C  2C 1B 00 00 */	cmpwi r27, 0
/* 8094F7A0  41 82 00 34 */	beq lbl_8094F7D4
/* 8094F7A4  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 8094F7A8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8094F7AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094F7B0  4C 40 13 82 */	cror 2, 0, 2
/* 8094F7B4  40 82 00 20 */	bne lbl_8094F7D4
/* 8094F7B8  38 00 00 05 */	li r0, 5
/* 8094F7BC  B0 1C 05 FA */	sth r0, 0x5fa(r28)
/* 8094F7C0  38 00 00 00 */	li r0, 0
/* 8094F7C4  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 8094F7C8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094F7CC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8094F7D0  3B 20 00 01 */	li r25, 1
lbl_8094F7D4:
/* 8094F7D4  88 1C 09 E4 */	lbz r0, 0x9e4(r28)
/* 8094F7D8  7C 00 07 75 */	extsb. r0, r0
/* 8094F7DC  40 82 00 44 */	bne lbl_8094F820
/* 8094F7E0  2C 1A 00 00 */	cmpwi r26, 0
/* 8094F7E4  41 82 00 3C */	beq lbl_8094F820
/* 8094F7E8  88 1C 08 48 */	lbz r0, 0x848(r28)
/* 8094F7EC  7C 00 07 75 */	extsb. r0, r0
/* 8094F7F0  41 82 00 30 */	beq lbl_8094F820
/* 8094F7F4  38 00 00 02 */	li r0, 2
/* 8094F7F8  B0 1C 05 FA */	sth r0, 0x5fa(r28)
/* 8094F7FC  38 00 00 00 */	li r0, 0
/* 8094F800  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 8094F804  38 00 00 1E */	li r0, 0x1e
/* 8094F808  98 1C 09 E4 */	stb r0, 0x9e4(r28)
/* 8094F80C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 8094F810  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8094F814  EC 01 00 32 */	fmuls f0, f1, f0
/* 8094F818  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8094F81C  3B 20 00 01 */	li r25, 1
lbl_8094F820:
/* 8094F820  88 1C 0A 50 */	lbz r0, 0xa50(r28)
/* 8094F824  2C 00 00 01 */	cmpwi r0, 1
/* 8094F828  40 82 00 40 */	bne lbl_8094F868
/* 8094F82C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8094F830  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8094F834  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8094F838  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8094F83C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8094F840  41 82 00 28 */	beq lbl_8094F868
/* 8094F844  C0 3C 05 E0 */	lfs f1, 0x5e0(r28)
/* 8094F848  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8094F84C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094F850  40 80 00 18 */	bge lbl_8094F868
/* 8094F854  38 00 00 07 */	li r0, 7
/* 8094F858  B0 1C 05 FA */	sth r0, 0x5fa(r28)
/* 8094F85C  38 00 00 00 */	li r0, 0
/* 8094F860  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 8094F864  3B 20 00 01 */	li r25, 1
lbl_8094F868:
/* 8094F868  2C 19 00 00 */	cmpwi r25, 0
/* 8094F86C  41 82 00 1C */	beq lbl_8094F888
/* 8094F870  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8094F874  60 00 00 10 */	ori r0, r0, 0x10
/* 8094F878  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8094F87C  7F 83 E3 78 */	mr r3, r28
/* 8094F880  4B FF CE 09 */	bl ni_carry_check__FP8ni_class
/* 8094F884  48 00 00 10 */	b lbl_8094F894
lbl_8094F888:
/* 8094F888  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8094F88C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8094F890  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_8094F894:
/* 8094F894  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8094F898  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8094F89C  38 A0 00 02 */	li r5, 2
/* 8094F8A0  38 C0 20 00 */	li r6, 0x2000
/* 8094F8A4  4B 92 0D 64 */	b cLib_addCalcAngleS2__FPssss
/* 8094F8A8  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 8094F8AC  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 8094F8B0  80 1C 06 9C */	lwz r0, 0x69c(r28)
/* 8094F8B4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8094F8B8  41 82 00 1C */	beq lbl_8094F8D4
/* 8094F8BC  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 8094F8C0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8094F8C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8094F8C8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8094F8CC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094F8D0  D0 1C 06 10 */	stfs f0, 0x610(r28)
lbl_8094F8D4:
/* 8094F8D4  2C 16 00 01 */	cmpwi r22, 1
/* 8094F8D8  40 82 00 E4 */	bne lbl_8094F9BC
/* 8094F8DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094F8E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094F8E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8094F8E8  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8094F8EC  4B 6B CA F0 */	b mDoMtx_YrotS__FPA4_fs
/* 8094F8F0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094F8F4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8094F8F8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8094F8FC  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8094F900  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8094F904  38 61 00 74 */	addi r3, r1, 0x74
/* 8094F908  38 81 00 68 */	addi r4, r1, 0x68
/* 8094F90C  4B 92 15 E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8094F910  C0 3C 06 10 */	lfs f1, 0x610(r28)
/* 8094F914  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8094F918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094F91C  40 81 00 48 */	ble lbl_8094F964
/* 8094F920  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094F924  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8094F928  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8094F92C  FC 00 08 50 */	fneg f0, f1
/* 8094F930  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8094F934  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094F938  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094F93C  80 63 00 00 */	lwz r3, 0(r3)
/* 8094F940  A8 9C 06 14 */	lha r4, 0x614(r28)
/* 8094F944  4B 6B CA 98 */	b mDoMtx_YrotS__FPA4_fs
/* 8094F948  38 61 00 74 */	addi r3, r1, 0x74
/* 8094F94C  38 81 00 5C */	addi r4, r1, 0x5c
/* 8094F950  4B 92 15 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 8094F954  38 61 00 68 */	addi r3, r1, 0x68
/* 8094F958  38 81 00 5C */	addi r4, r1, 0x5c
/* 8094F95C  7C 65 1B 78 */	mr r5, r3
/* 8094F960  4B 9F 77 30 */	b PSVECAdd
lbl_8094F964:
/* 8094F964  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8094F968  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 8094F96C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8094F970  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 8094F974  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8094F978  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8094F97C  7C 65 1B 78 */	mr r5, r3
/* 8094F980  4B 9F 77 10 */	b PSVECAdd
/* 8094F984  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 8094F988  C0 1C 05 30 */	lfs f0, 0x530(r28)
/* 8094F98C  EC 01 00 2A */	fadds f0, f1, f0
/* 8094F990  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8094F994  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 8094F998  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 8094F99C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094F9A0  40 80 00 08 */	bge lbl_8094F9A8
/* 8094F9A4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_8094F9A8:
/* 8094F9A8  38 7C 05 D8 */	addi r3, r28, 0x5d8
/* 8094F9AC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094F9B0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8094F9B4  4B 92 00 CC */	b cLib_addCalc0__FPfff
/* 8094F9B8  48 00 02 F0 */	b lbl_8094FCA8
lbl_8094F9BC:
/* 8094F9BC  2C 16 00 02 */	cmpwi r22, 2
/* 8094F9C0  40 82 02 D8 */	bne lbl_8094FC98
/* 8094F9C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094F9C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094F9CC  80 63 00 00 */	lwz r3, 0(r3)
/* 8094F9D0  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8094F9D4  4B 6B CA 08 */	b mDoMtx_YrotS__FPA4_fs
/* 8094F9D8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8094F9DC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8094F9E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8094F9E4  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 8094F9E8  4B 6B C9 B4 */	b mDoMtx_XrotM__FPA4_fs
/* 8094F9EC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094F9F0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8094F9F4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8094F9F8  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8094F9FC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8094FA00  38 61 00 74 */	addi r3, r1, 0x74
/* 8094FA04  38 81 00 68 */	addi r4, r1, 0x68
/* 8094FA08  4B 92 14 E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8094FA0C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8094FA10  38 81 00 68 */	addi r4, r1, 0x68
/* 8094FA14  7C 65 1B 78 */	mr r5, r3
/* 8094FA18  4B 9F 76 78 */	b PSVECAdd
/* 8094FA1C  38 61 00 38 */	addi r3, r1, 0x38
/* 8094FA20  38 9C 05 C0 */	addi r4, r28, 0x5c0
/* 8094FA24  38 BC 05 CC */	addi r5, r28, 0x5cc
/* 8094FA28  4B 91 71 0C */	b __mi__4cXyzCFRC3Vec
/* 8094FA2C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8094FA30  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8094FA34  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8094FA38  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8094FA3C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8094FA40  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8094FA44  38 61 00 74 */	addi r3, r1, 0x74
/* 8094FA48  4B 9F 76 F0 */	b PSVECSquareMag
/* 8094FA4C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094FA50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094FA54  40 81 00 58 */	ble lbl_8094FAAC
/* 8094FA58  FC 00 08 34 */	frsqrte f0, f1
/* 8094FA5C  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 8094FA60  FC 44 00 32 */	fmul f2, f4, f0
/* 8094FA64  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 8094FA68  FC 00 00 32 */	fmul f0, f0, f0
/* 8094FA6C  FC 01 00 32 */	fmul f0, f1, f0
/* 8094FA70  FC 03 00 28 */	fsub f0, f3, f0
/* 8094FA74  FC 02 00 32 */	fmul f0, f2, f0
/* 8094FA78  FC 44 00 32 */	fmul f2, f4, f0
/* 8094FA7C  FC 00 00 32 */	fmul f0, f0, f0
/* 8094FA80  FC 01 00 32 */	fmul f0, f1, f0
/* 8094FA84  FC 03 00 28 */	fsub f0, f3, f0
/* 8094FA88  FC 02 00 32 */	fmul f0, f2, f0
/* 8094FA8C  FC 44 00 32 */	fmul f2, f4, f0
/* 8094FA90  FC 00 00 32 */	fmul f0, f0, f0
/* 8094FA94  FC 01 00 32 */	fmul f0, f1, f0
/* 8094FA98  FC 03 00 28 */	fsub f0, f3, f0
/* 8094FA9C  FC 02 00 32 */	fmul f0, f2, f0
/* 8094FAA0  FF E1 00 32 */	fmul f31, f1, f0
/* 8094FAA4  FF E0 F8 18 */	frsp f31, f31
/* 8094FAA8  48 00 00 90 */	b lbl_8094FB38
lbl_8094FAAC:
/* 8094FAAC  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 8094FAB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094FAB4  40 80 00 10 */	bge lbl_8094FAC4
/* 8094FAB8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094FABC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8094FAC0  48 00 00 78 */	b lbl_8094FB38
lbl_8094FAC4:
/* 8094FAC4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8094FAC8  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8094FACC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8094FAD0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8094FAD4  7C 03 00 00 */	cmpw r3, r0
/* 8094FAD8  41 82 00 14 */	beq lbl_8094FAEC
/* 8094FADC  40 80 00 40 */	bge lbl_8094FB1C
/* 8094FAE0  2C 03 00 00 */	cmpwi r3, 0
/* 8094FAE4  41 82 00 20 */	beq lbl_8094FB04
/* 8094FAE8  48 00 00 34 */	b lbl_8094FB1C
lbl_8094FAEC:
/* 8094FAEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094FAF0  41 82 00 0C */	beq lbl_8094FAFC
/* 8094FAF4  38 00 00 01 */	li r0, 1
/* 8094FAF8  48 00 00 28 */	b lbl_8094FB20
lbl_8094FAFC:
/* 8094FAFC  38 00 00 02 */	li r0, 2
/* 8094FB00  48 00 00 20 */	b lbl_8094FB20
lbl_8094FB04:
/* 8094FB04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094FB08  41 82 00 0C */	beq lbl_8094FB14
/* 8094FB0C  38 00 00 05 */	li r0, 5
/* 8094FB10  48 00 00 10 */	b lbl_8094FB20
lbl_8094FB14:
/* 8094FB14  38 00 00 03 */	li r0, 3
/* 8094FB18  48 00 00 08 */	b lbl_8094FB20
lbl_8094FB1C:
/* 8094FB1C  38 00 00 04 */	li r0, 4
lbl_8094FB20:
/* 8094FB20  2C 00 00 01 */	cmpwi r0, 1
/* 8094FB24  40 82 00 10 */	bne lbl_8094FB34
/* 8094FB28  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094FB2C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8094FB30  48 00 00 08 */	b lbl_8094FB38
lbl_8094FB34:
/* 8094FB34  FF E0 08 90 */	fmr f31, f1
lbl_8094FB38:
/* 8094FB38  38 61 00 2C */	addi r3, r1, 0x2c
/* 8094FB3C  38 9C 05 C0 */	addi r4, r28, 0x5c0
/* 8094FB40  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8094FB44  4B 91 6F F0 */	b __mi__4cXyzCFRC3Vec
/* 8094FB48  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8094FB4C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8094FB50  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8094FB54  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8094FB58  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8094FB5C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8094FB60  38 61 00 74 */	addi r3, r1, 0x74
/* 8094FB64  4B 9F 75 D4 */	b PSVECSquareMag
/* 8094FB68  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094FB6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094FB70  40 81 00 58 */	ble lbl_8094FBC8
/* 8094FB74  FC 00 08 34 */	frsqrte f0, f1
/* 8094FB78  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 8094FB7C  FC 44 00 32 */	fmul f2, f4, f0
/* 8094FB80  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 8094FB84  FC 00 00 32 */	fmul f0, f0, f0
/* 8094FB88  FC 01 00 32 */	fmul f0, f1, f0
/* 8094FB8C  FC 03 00 28 */	fsub f0, f3, f0
/* 8094FB90  FC 02 00 32 */	fmul f0, f2, f0
/* 8094FB94  FC 44 00 32 */	fmul f2, f4, f0
/* 8094FB98  FC 00 00 32 */	fmul f0, f0, f0
/* 8094FB9C  FC 01 00 32 */	fmul f0, f1, f0
/* 8094FBA0  FC 03 00 28 */	fsub f0, f3, f0
/* 8094FBA4  FC 02 00 32 */	fmul f0, f2, f0
/* 8094FBA8  FC 44 00 32 */	fmul f2, f4, f0
/* 8094FBAC  FC 00 00 32 */	fmul f0, f0, f0
/* 8094FBB0  FC 01 00 32 */	fmul f0, f1, f0
/* 8094FBB4  FC 03 00 28 */	fsub f0, f3, f0
/* 8094FBB8  FC 02 00 32 */	fmul f0, f2, f0
/* 8094FBBC  FC 21 00 32 */	fmul f1, f1, f0
/* 8094FBC0  FC 20 08 18 */	frsp f1, f1
/* 8094FBC4  48 00 00 88 */	b lbl_8094FC4C
lbl_8094FBC8:
/* 8094FBC8  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 8094FBCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094FBD0  40 80 00 10 */	bge lbl_8094FBE0
/* 8094FBD4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094FBD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8094FBDC  48 00 00 70 */	b lbl_8094FC4C
lbl_8094FBE0:
/* 8094FBE0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8094FBE4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8094FBE8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8094FBEC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8094FBF0  7C 03 00 00 */	cmpw r3, r0
/* 8094FBF4  41 82 00 14 */	beq lbl_8094FC08
/* 8094FBF8  40 80 00 40 */	bge lbl_8094FC38
/* 8094FBFC  2C 03 00 00 */	cmpwi r3, 0
/* 8094FC00  41 82 00 20 */	beq lbl_8094FC20
/* 8094FC04  48 00 00 34 */	b lbl_8094FC38
lbl_8094FC08:
/* 8094FC08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094FC0C  41 82 00 0C */	beq lbl_8094FC18
/* 8094FC10  38 00 00 01 */	li r0, 1
/* 8094FC14  48 00 00 28 */	b lbl_8094FC3C
lbl_8094FC18:
/* 8094FC18  38 00 00 02 */	li r0, 2
/* 8094FC1C  48 00 00 20 */	b lbl_8094FC3C
lbl_8094FC20:
/* 8094FC20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094FC24  41 82 00 0C */	beq lbl_8094FC30
/* 8094FC28  38 00 00 05 */	li r0, 5
/* 8094FC2C  48 00 00 10 */	b lbl_8094FC3C
lbl_8094FC30:
/* 8094FC30  38 00 00 03 */	li r0, 3
/* 8094FC34  48 00 00 08 */	b lbl_8094FC3C
lbl_8094FC38:
/* 8094FC38  38 00 00 04 */	li r0, 4
lbl_8094FC3C:
/* 8094FC3C  2C 00 00 01 */	cmpwi r0, 1
/* 8094FC40  40 82 00 0C */	bne lbl_8094FC4C
/* 8094FC44  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094FC48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8094FC4C:
/* 8094FC4C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 8094FC50  EC 60 07 F2 */	fmuls f3, f0, f31
/* 8094FC54  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8094FC58  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8094FC5C  40 81 00 08 */	ble lbl_8094FC64
/* 8094FC60  FC 60 00 90 */	fmr f3, f0
lbl_8094FC64:
/* 8094FC64  C0 5F 01 2C */	lfs f2, 0x12c(r31)
/* 8094FC68  EC 01 F8 24 */	fdivs f0, f1, f31
/* 8094FC6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8094FC70  FC 00 00 1E */	fctiwz f0, f0
/* 8094FC74  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8094FC78  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8094FC7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8094FC80  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8094FC84  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8094FC88  7C 03 04 2E */	lfsx f0, r3, r0
/* 8094FC8C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8094FC90  D0 1C 05 D8 */	stfs f0, 0x5d8(r28)
/* 8094FC94  48 00 00 14 */	b lbl_8094FCA8
lbl_8094FC98:
/* 8094FC98  38 7C 05 D8 */	addi r3, r28, 0x5d8
/* 8094FC9C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094FCA0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8094FCA4  4B 91 FD DC */	b cLib_addCalc0__FPfff
lbl_8094FCA8:
/* 8094FCA8  C0 1C 06 10 */	lfs f0, 0x610(r28)
/* 8094FCAC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094FCB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8094FCB4  40 81 00 28 */	ble lbl_8094FCDC
/* 8094FCB8  38 7C 06 10 */	addi r3, r28, 0x610
/* 8094FCBC  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8094FCC0  4B 91 FD C0 */	b cLib_addCalc0__FPfff
/* 8094FCC4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094FCC8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8094FCCC  7F 83 E3 78 */	mr r3, r28
/* 8094FCD0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094FCD4  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 8094FCD8  4B FF C0 91 */	bl hane_set__FP8ni_classff
lbl_8094FCDC:
/* 8094FCDC  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 8094FCE0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8094FCE4  40 82 00 38 */	bne lbl_8094FD1C
/* 8094FCE8  34 7C 08 4C */	addic. r3, r28, 0x84c
/* 8094FCEC  41 82 00 30 */	beq lbl_8094FD1C
/* 8094FCF0  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 8094FCF4  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 8094FCF8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8094FCFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8094FD00  EC 01 00 2A */	fadds f0, f1, f0
/* 8094FD04  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8094FD08  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 8094FD0C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8094FD10  EC 02 00 32 */	fmuls f0, f2, f0
/* 8094FD14  EC 01 00 2A */	fadds f0, f1, f0
/* 8094FD18  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_8094FD1C:
/* 8094FD1C  2C 17 00 00 */	cmpwi r23, 0
/* 8094FD20  41 82 00 A8 */	beq lbl_8094FDC8
/* 8094FD24  A8 1C 05 FA */	lha r0, 0x5fa(r28)
/* 8094FD28  2C 00 00 0F */	cmpwi r0, 0xf
/* 8094FD2C  40 82 00 10 */	bne lbl_8094FD3C
/* 8094FD30  7F 83 E3 78 */	mr r3, r28
/* 8094FD34  4B FF E6 45 */	bl playwallcheck__FP8ni_class
/* 8094FD38  48 00 00 68 */	b lbl_8094FDA0
lbl_8094FD3C:
/* 8094FD3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8094FD40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8094FD44  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8094FD48  3C 80 80 95 */	lis r4, stringBase0@ha
/* 8094FD4C  38 84 13 1C */	addi r4, r4, stringBase0@l
/* 8094FD50  38 84 00 03 */	addi r4, r4, 3
/* 8094FD54  4B A1 8C 40 */	b strcmp
/* 8094FD58  2C 03 00 00 */	cmpwi r3, 0
/* 8094FD5C  40 82 00 44 */	bne lbl_8094FDA0
/* 8094FD60  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 8094FD64  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8094FD68  EC 41 00 28 */	fsubs f2, f1, f0
/* 8094FD6C  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 8094FD70  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 8094FD74  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8094FD78  EC 01 00 28 */	fsubs f0, f1, f0
/* 8094FD7C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8094FD80  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8094FD84  EC 00 00 32 */	fmuls f0, f0, f0
/* 8094FD88  EC 21 00 2A */	fadds f1, f1, f0
/* 8094FD8C  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 8094FD90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094FD94  40 80 00 0C */	bge lbl_8094FDA0
/* 8094FD98  7F 83 E3 78 */	mr r3, r28
/* 8094FD9C  4B FF E5 DD */	bl playwallcheck__FP8ni_class
lbl_8094FDA0:
/* 8094FDA0  38 7C 06 70 */	addi r3, r28, 0x670
/* 8094FDA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8094FDA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8094FDAC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8094FDB0  4B 72 6C FC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8094FDB4  80 1C 06 9C */	lwz r0, 0x69c(r28)
/* 8094FDB8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8094FDBC  41 82 00 0C */	beq lbl_8094FDC8
/* 8094FDC0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8094FDC4  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
lbl_8094FDC8:
/* 8094FDC8  A8 1C 05 F8 */	lha r0, 0x5f8(r28)
/* 8094FDCC  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8094FDD0  40 82 00 E0 */	bne lbl_8094FEB0
/* 8094FDD4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094FDD8  4B 91 7B 7C */	b cM_rndF__Ff
/* 8094FDDC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8094FDE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094FDE4  40 80 00 1C */	bge lbl_8094FE00
/* 8094FDE8  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 8094FDEC  4B 91 7B A0 */	b cM_rndFX__Ff
/* 8094FDF0  FC 00 08 1E */	fctiwz f0, f1
/* 8094FDF4  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8094FDF8  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8094FDFC  B0 1C 06 20 */	sth r0, 0x620(r28)
lbl_8094FE00:
/* 8094FE00  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094FE04  4B 91 7B 50 */	b cM_rndF__Ff
/* 8094FE08  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8094FE0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094FE10  40 80 00 1C */	bge lbl_8094FE2C
/* 8094FE14  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8094FE18  4B 91 7B 74 */	b cM_rndFX__Ff
/* 8094FE1C  FC 00 08 1E */	fctiwz f0, f1
/* 8094FE20  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8094FE24  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8094FE28  B0 1C 06 1E */	sth r0, 0x61e(r28)
lbl_8094FE2C:
/* 8094FE2C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094FE30  4B 91 7B 24 */	b cM_rndF__Ff
/* 8094FE34  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8094FE38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094FE3C  40 80 00 1C */	bge lbl_8094FE58
/* 8094FE40  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8094FE44  4B 91 7B 48 */	b cM_rndFX__Ff
/* 8094FE48  FC 00 08 1E */	fctiwz f0, f1
/* 8094FE4C  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8094FE50  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8094FE54  B0 1C 06 22 */	sth r0, 0x622(r28)
lbl_8094FE58:
/* 8094FE58  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094FE5C  4B 91 7A F8 */	b cM_rndF__Ff
/* 8094FE60  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8094FE64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094FE68  40 80 00 1C */	bge lbl_8094FE84
/* 8094FE6C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8094FE70  4B 91 7B 1C */	b cM_rndFX__Ff
/* 8094FE74  FC 00 08 1E */	fctiwz f0, f1
/* 8094FE78  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8094FE7C  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8094FE80  B0 1C 06 28 */	sth r0, 0x628(r28)
lbl_8094FE84:
/* 8094FE84  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094FE88  4B 91 7A CC */	b cM_rndF__Ff
/* 8094FE8C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8094FE90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094FE94  40 80 00 1C */	bge lbl_8094FEB0
/* 8094FE98  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8094FE9C  4B 91 7A F0 */	b cM_rndFX__Ff
/* 8094FEA0  FC 00 08 1E */	fctiwz f0, f1
/* 8094FEA4  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8094FEA8  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8094FEAC  B0 1C 06 2A */	sth r0, 0x62a(r28)
lbl_8094FEB0:
/* 8094FEB0  38 7C 06 1A */	addi r3, r28, 0x61a
/* 8094FEB4  A8 9C 06 20 */	lha r4, 0x620(r28)
/* 8094FEB8  38 A0 00 02 */	li r5, 2
/* 8094FEBC  38 C0 10 00 */	li r6, 0x1000
/* 8094FEC0  4B 92 07 48 */	b cLib_addCalcAngleS2__FPssss
/* 8094FEC4  38 7C 06 18 */	addi r3, r28, 0x618
/* 8094FEC8  A8 9C 06 1E */	lha r4, 0x61e(r28)
/* 8094FECC  38 A0 00 02 */	li r5, 2
/* 8094FED0  38 C0 10 00 */	li r6, 0x1000
/* 8094FED4  4B 92 07 34 */	b cLib_addCalcAngleS2__FPssss
/* 8094FED8  38 7C 06 1C */	addi r3, r28, 0x61c
/* 8094FEDC  A8 9C 06 22 */	lha r4, 0x622(r28)
/* 8094FEE0  38 A0 00 02 */	li r5, 2
/* 8094FEE4  38 C0 10 00 */	li r6, 0x1000
/* 8094FEE8  4B 92 07 20 */	b cLib_addCalcAngleS2__FPssss
/* 8094FEEC  38 7C 06 26 */	addi r3, r28, 0x626
/* 8094FEF0  A8 9C 06 2A */	lha r4, 0x62a(r28)
/* 8094FEF4  38 A0 00 04 */	li r5, 4
/* 8094FEF8  38 C0 01 F4 */	li r6, 0x1f4
/* 8094FEFC  4B 92 07 0C */	b cLib_addCalcAngleS2__FPssss
/* 8094FF00  38 7C 06 24 */	addi r3, r28, 0x624
/* 8094FF04  A8 9C 06 28 */	lha r4, 0x628(r28)
/* 8094FF08  38 A0 00 04 */	li r5, 4
/* 8094FF0C  38 C0 01 F4 */	li r6, 0x1f4
/* 8094FF10  4B 92 06 F8 */	b cLib_addCalcAngleS2__FPssss
/* 8094FF14  38 60 00 00 */	li r3, 0
/* 8094FF18  38 80 00 00 */	li r4, 0
/* 8094FF1C  38 A0 00 00 */	li r5, 0
/* 8094FF20  38 C0 00 00 */	li r6, 0
/* 8094FF24  2C 18 00 00 */	cmpwi r24, 0
/* 8094FF28  41 82 00 7C */	beq lbl_8094FFA4
/* 8094FF2C  38 00 00 04 */	li r0, 4
/* 8094FF30  7C 09 03 A6 */	mtctr r0
lbl_8094FF34:
/* 8094FF34  A8 1C 05 F8 */	lha r0, 0x5f8(r28)
/* 8094FF38  54 03 60 26 */	slwi r3, r0, 0xc
/* 8094FF3C  7C 06 00 D0 */	neg r0, r6
/* 8094FF40  7C 03 02 14 */	add r0, r3, r0
/* 8094FF44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8094FF48  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8094FF4C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8094FF50  7C 83 04 2E */	lfsx f4, r3, r0
/* 8094FF54  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 8094FF58  7C 63 2C 2E */	lfsx f3, r3, r5
/* 8094FF5C  38 7D 00 A4 */	addi r3, r29, 0xa4
/* 8094FF60  7C 43 2C 2E */	lfsx f2, r3, r5
/* 8094FF64  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 8094FF68  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8094FF6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8094FF70  EC 00 01 32 */	fmuls f0, f0, f4
/* 8094FF74  EC 02 00 32 */	fmuls f0, f2, f0
/* 8094FF78  EC 03 00 2A */	fadds f0, f3, f0
/* 8094FF7C  FC 00 00 1E */	fctiwz f0, f0
/* 8094FF80  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8094FF84  80 61 01 4C */	lwz r3, 0x14c(r1)
/* 8094FF88  38 04 09 EE */	addi r0, r4, 0x9ee
/* 8094FF8C  7C 7C 03 2E */	sthx r3, r28, r0
/* 8094FF90  38 84 00 02 */	addi r4, r4, 2
/* 8094FF94  38 A5 00 04 */	addi r5, r5, 4
/* 8094FF98  38 C6 40 00 */	addi r6, r6, 0x4000
/* 8094FF9C  42 00 FF 98 */	bdnz lbl_8094FF34
/* 8094FFA0  48 00 00 20 */	b lbl_8094FFC0
lbl_8094FFA4:
/* 8094FFA4  38 00 00 04 */	li r0, 4
/* 8094FFA8  7C 09 03 A6 */	mtctr r0
lbl_8094FFAC:
/* 8094FFAC  38 80 00 00 */	li r4, 0
/* 8094FFB0  38 03 09 EE */	addi r0, r3, 0x9ee
/* 8094FFB4  7C 9C 03 2E */	sthx r4, r28, r0
/* 8094FFB8  38 63 00 02 */	addi r3, r3, 2
/* 8094FFBC  42 00 FF F0 */	bdnz lbl_8094FFAC
lbl_8094FFC0:
/* 8094FFC0  2C 18 00 00 */	cmpwi r24, 0
/* 8094FFC4  41 82 00 A8 */	beq lbl_8095006C
/* 8094FFC8  A8 1C 05 F8 */	lha r0, 0x5f8(r28)
/* 8094FFCC  54 00 64 26 */	rlwinm r0, r0, 0xc, 0x10, 0x13
/* 8094FFD0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8094FFD4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8094FFD8  7C 63 04 2E */	lfsx f3, r3, r0
/* 8094FFDC  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 8094FFE0  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 8094FFE4  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8094FFE8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8094FFEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8094FFF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8094FFF4  FC 00 00 1E */	fctiwz f0, f0
/* 8094FFF8  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8094FFFC  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 80950000  B0 1C 09 EC */	sth r0, 0x9ec(r28)
/* 80950004  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80950008  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8095000C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80950010  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80950014  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80950018  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8095001C  C0 1C 09 F8 */	lfs f0, 0x9f8(r28)
/* 80950020  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80950024  38 7C 0A 18 */	addi r3, r28, 0xa18
/* 80950028  38 81 00 50 */	addi r4, r1, 0x50
/* 8095002C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80950030  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80950034  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80950038  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8095003C  4C 41 13 82 */	cror 2, 1, 2
/* 80950040  40 82 00 0C */	bne lbl_8095004C
/* 80950044  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80950048  48 00 00 08 */	b lbl_80950050
lbl_8095004C:
/* 8095004C  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
lbl_80950050:
/* 80950050  4B 6C D0 BC */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80950054  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80950058  38 9C 09 E6 */	addi r4, r28, 0x9e6
/* 8095005C  38 BC 09 E8 */	addi r5, r28, 0x9e8
/* 80950060  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80950064  4B 6C D1 90 */	b fopAcM_riverStream__FP4cXyzPsPff
/* 80950068  48 00 00 0C */	b lbl_80950074
lbl_8095006C:
/* 8095006C  38 00 00 00 */	li r0, 0
/* 80950070  B0 1C 09 EC */	sth r0, 0x9ec(r28)
lbl_80950074:
/* 80950074  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80950078  4B 72 77 38 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 8095007C  38 00 00 00 */	li r0, 0
/* 80950080  98 1C 08 48 */	stb r0, 0x848(r28)
/* 80950084  38 61 00 80 */	addi r3, r1, 0x80
/* 80950088  4B 72 7B E0 */	b __ct__11dBgS_LinChkFv
/* 8095008C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80950090  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80950094  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80950098  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8095009C  EC 01 00 2A */	fadds f0, f1, f0
/* 809500A0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 809500A4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 809500A8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 809500AC  38 61 00 80 */	addi r3, r1, 0x80
/* 809500B0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 809500B4  38 A1 00 74 */	addi r5, r1, 0x74
/* 809500B8  7F 86 E3 78 */	mr r6, r28
/* 809500BC  4B 72 7C A8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 809500C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809500C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809500C8  3A C3 0F 38 */	addi r22, r3, 0xf38
/* 809500CC  7E C3 B3 78 */	mr r3, r22
/* 809500D0  38 81 00 80 */	addi r4, r1, 0x80
/* 809500D4  4B 72 42 E0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 809500D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809500DC  41 82 00 14 */	beq lbl_809500F0
/* 809500E0  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 809500E4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 809500E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 809500EC  D0 01 00 78 */	stfs f0, 0x78(r1)
lbl_809500F0:
/* 809500F0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 809500F4  38 81 00 74 */	addi r4, r1, 0x74
/* 809500F8  4B 91 7C 30 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 809500FC  7E C3 B3 78 */	mr r3, r22
/* 80950100  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80950104  4B 72 43 9C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80950108  D0 3C 09 F8 */	stfs f1, 0x9f8(r28)
/* 8095010C  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80950110  C0 3C 09 F8 */	lfs f1, 0x9f8(r28)
/* 80950114  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80950118  EC 21 00 28 */	fsubs f1, f1, f0
/* 8095011C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80950120  4C 40 13 82 */	cror 2, 0, 2
/* 80950124  40 82 00 40 */	bne lbl_80950164
/* 80950128  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 8095012C  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 80950130  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 80950134  4B 91 F9 08 */	b cLib_addCalc2__FPffff
/* 80950138  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 8095013C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80950140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80950144  4C 40 13 82 */	cror 2, 0, 2
/* 80950148  40 82 00 0C */	bne lbl_80950154
/* 8095014C  38 00 00 01 */	li r0, 1
/* 80950150  98 1C 0A 06 */	stb r0, 0xa06(r28)
lbl_80950154:
/* 80950154  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80950158  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8095015C  38 00 00 01 */	li r0, 1
/* 80950160  98 1C 08 48 */	stb r0, 0x848(r28)
lbl_80950164:
/* 80950164  88 1C 0A 06 */	lbz r0, 0xa06(r28)
/* 80950168  7C 00 07 75 */	extsb. r0, r0
/* 8095016C  41 82 01 10 */	beq lbl_8095027C
/* 80950170  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80950174  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80950178  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8095017C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80950180  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80950184  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80950188  C0 1C 09 F8 */	lfs f0, 0x9f8(r28)
/* 8095018C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80950190  88 1E 00 C0 */	lbz r0, 0xc0(r30)
/* 80950194  7C 00 07 75 */	extsb. r0, r0
/* 80950198  40 82 00 30 */	bne lbl_809501C8
/* 8095019C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 809501A0  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 809501A4  38 7E 00 C4 */	addi r3, r30, 0xc4
/* 809501A8  D0 03 00 04 */	stfs f0, 4(r3)
/* 809501AC  D0 03 00 08 */	stfs f0, 8(r3)
/* 809501B0  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha
/* 809501B4  38 84 C2 04 */	addi r4, r4, __dt__4cXyzFv@l
/* 809501B8  38 BE 00 B4 */	addi r5, r30, 0xb4
/* 809501BC  4B FF B9 FD */	bl __register_global_object
/* 809501C0  38 00 00 01 */	li r0, 1
/* 809501C4  98 1E 00 C0 */	stb r0, 0xc0(r30)
lbl_809501C8:
/* 809501C8  3B 60 00 00 */	li r27, 0
/* 809501CC  3A C0 00 00 */	li r22, 0
/* 809501D0  3A E0 00 00 */	li r23, 0
/* 809501D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809501D8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 809501DC  3B 1D 00 C4 */	addi r24, r29, 0xc4
lbl_809501E0:
/* 809501E0  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 809501E4  38 00 00 FF */	li r0, 0xff
/* 809501E8  90 01 00 08 */	stw r0, 8(r1)
/* 809501EC  38 80 00 00 */	li r4, 0
/* 809501F0  90 81 00 0C */	stw r4, 0xc(r1)
/* 809501F4  38 00 FF FF */	li r0, -1
/* 809501F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809501FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80950200  90 81 00 18 */	stw r4, 0x18(r1)
/* 80950204  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80950208  3B 57 0A 08 */	addi r26, r23, 0xa08
/* 8095020C  7C 9C D0 2E */	lwzx r4, r28, r26
/* 80950210  38 A0 00 00 */	li r5, 0
/* 80950214  7C D8 B2 2E */	lhzx r6, r24, r22
/* 80950218  38 E1 00 44 */	addi r7, r1, 0x44
/* 8095021C  39 1C 01 0C */	addi r8, r28, 0x10c
/* 80950220  39 20 00 00 */	li r9, 0
/* 80950224  39 5E 00 C4 */	addi r10, r30, 0xc4
/* 80950228  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8095022C  4B 6F D2 A0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80950230  7C 7C D1 2E */	stwx r3, r28, r26
/* 80950234  3B 7B 00 01 */	addi r27, r27, 1
/* 80950238  2C 1B 00 04 */	cmpwi r27, 4
/* 8095023C  3A D6 00 02 */	addi r22, r22, 2
/* 80950240  3A F7 00 04 */	addi r23, r23, 4
/* 80950244  41 80 FF 9C */	blt lbl_809501E0
/* 80950248  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 8095024C  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80950250  90 01 00 28 */	stw r0, 0x28(r1)
/* 80950254  38 7C 0A 28 */	addi r3, r28, 0xa28
/* 80950258  38 81 00 28 */	addi r4, r1, 0x28
/* 8095025C  38 A0 00 00 */	li r5, 0
/* 80950260  38 C0 FF FF */	li r6, -1
/* 80950264  81 9C 0A 38 */	lwz r12, 0xa38(r28)
/* 80950268  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8095026C  7D 89 03 A6 */	mtctr r12
/* 80950270  4E 80 04 21 */	bctrl 
/* 80950274  38 00 00 00 */	li r0, 0
/* 80950278  98 1C 0A 06 */	stb r0, 0xa06(r28)
lbl_8095027C:
/* 8095027C  38 61 00 80 */	addi r3, r1, 0x80
/* 80950280  38 80 FF FF */	li r4, -1
/* 80950284  4B 72 7A 58 */	b __dt__11dBgS_LinChkFv
/* 80950288  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8095028C  38 80 FF FF */	li r4, -1
/* 80950290  4B 72 75 B8 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80950294  E3 E1 01 88 */	psq_l f31, 392(r1), 0, 0 /* qr0 */
/* 80950298  CB E1 01 80 */	lfd f31, 0x180(r1)
/* 8095029C  39 61 01 80 */	addi r11, r1, 0x180
/* 809502A0  4B A1 1F 6C */	b _restgpr_22
/* 809502A4  80 01 01 94 */	lwz r0, 0x194(r1)
/* 809502A8  7C 08 03 A6 */	mtlr r0
/* 809502AC  38 21 01 90 */	addi r1, r1, 0x190
/* 809502B0  4E 80 00 20 */	blr 
