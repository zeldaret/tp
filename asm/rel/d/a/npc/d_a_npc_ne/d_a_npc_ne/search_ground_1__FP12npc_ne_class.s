lbl_80A8D7C4:
/* 80A8D7C4  94 21 FE 10 */	stwu r1, -0x1f0(r1)
/* 80A8D7C8  7C 08 02 A6 */	mflr r0
/* 80A8D7CC  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 80A8D7D0  DB E1 01 E0 */	stfd f31, 0x1e0(r1)
/* 80A8D7D4  F3 E1 01 E8 */	psq_st f31, 488(r1), 0, 0 /* qr0 */
/* 80A8D7D8  DB C1 01 D0 */	stfd f30, 0x1d0(r1)
/* 80A8D7DC  F3 C1 01 D8 */	psq_st f30, 472(r1), 0, 0 /* qr0 */
/* 80A8D7E0  DB A1 01 C0 */	stfd f29, 0x1c0(r1)
/* 80A8D7E4  F3 A1 01 C8 */	psq_st f29, 456(r1), 0, 0 /* qr0 */
/* 80A8D7E8  DB 81 01 B0 */	stfd f28, 0x1b0(r1)
/* 80A8D7EC  F3 81 01 B8 */	psq_st f28, 440(r1), 0, 0 /* qr0 */
/* 80A8D7F0  DB 61 01 A0 */	stfd f27, 0x1a0(r1)
/* 80A8D7F4  F3 61 01 A8 */	psq_st f27, 424(r1), 0, 0 /* qr0 */
/* 80A8D7F8  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 80A8D7FC  4B 8D 49 CC */	b _savegpr_24
/* 80A8D800  7C 7E 1B 78 */	mr r30, r3
/* 80A8D804  3C 60 80 A9 */	lis r3, lit_3990@ha
/* 80A8D808  3B E3 24 1C */	addi r31, r3, lit_3990@l
/* 80A8D80C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80A8D810  4B 5E A4 58 */	b __ct__11dBgS_LinChkFv
/* 80A8D814  38 61 00 BC */	addi r3, r1, 0xbc
/* 80A8D818  3C 80 80 A9 */	lis r4, __ct__4cXyzFv@ha
/* 80A8D81C  38 84 DD 54 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A8D820  3C A0 80 A9 */	lis r5, __dt__4cXyzFv@ha
/* 80A8D824  38 A5 91 60 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A8D828  38 C0 00 0C */	li r6, 0xc
/* 80A8D82C  38 E0 00 10 */	li r7, 0x10
/* 80A8D830  4B 8D 45 30 */	b __construct_array
/* 80A8D834  AB BE 04 E6 */	lha r29, 0x4e6(r30)
/* 80A8D838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A8D83C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A8D840  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 80A8D844  38 7A 3E C8 */	addi r3, r26, 0x3ec8
/* 80A8D848  3C 80 80 A9 */	lis r4, stringBase0@ha
/* 80A8D84C  38 84 25 D0 */	addi r4, r4, stringBase0@l
/* 80A8D850  38 84 00 0F */	addi r4, r4, 0xf
/* 80A8D854  4B 8D B1 40 */	b strcmp
/* 80A8D858  2C 03 00 00 */	cmpwi r3, 0
/* 80A8D85C  40 82 00 10 */	bne lbl_80A8D86C
/* 80A8D860  C3 9F 00 30 */	lfs f28, 0x30(r31)
/* 80A8D864  C3 7F 00 18 */	lfs f27, 0x18(r31)
/* 80A8D868  48 00 00 0C */	b lbl_80A8D874
lbl_80A8D86C:
/* 80A8D86C  C3 9F 00 50 */	lfs f28, 0x50(r31)
/* 80A8D870  FF 60 E0 90 */	fmr f27, f28
lbl_80A8D874:
/* 80A8D874  3B 00 00 00 */	li r24, 0
/* 80A8D878  3B 60 00 00 */	li r27, 0
/* 80A8D87C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A8D880  EF A0 E0 2A */	fadds f29, f0, f28
/* 80A8D884  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A8D888  3B 83 07 68 */	addi r28, r3, calc_mtx@l
/* 80A8D88C  C3 DF 00 10 */	lfs f30, 0x10(r31)
/* 80A8D890  C3 FF 00 8C */	lfs f31, 0x8c(r31)
lbl_80A8D894:
/* 80A8D894  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A8D898  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A8D89C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A8D8A0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A8D8A4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A8D8A8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A8D8AC  C0 1E 06 BC */	lfs f0, 0x6bc(r30)
/* 80A8D8B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A8D8B4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80A8D8B8  7F A4 EB 78 */	mr r4, r29
/* 80A8D8BC  4B 57 EB 20 */	b mDoMtx_YrotS__FPA4_fs
/* 80A8D8C0  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 80A8D8C4  D3 C1 00 2C */	stfs f30, 0x2c(r1)
/* 80A8D8C8  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 80A8D8CC  38 61 00 28 */	addi r3, r1, 0x28
/* 80A8D8D0  38 81 00 34 */	addi r4, r1, 0x34
/* 80A8D8D4  4B 7E 36 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8D8D8  38 61 00 34 */	addi r3, r1, 0x34
/* 80A8D8DC  38 81 00 40 */	addi r4, r1, 0x40
/* 80A8D8E0  7C 65 1B 78 */	mr r5, r3
/* 80A8D8E4  4B 8B 97 AC */	b PSVECAdd
/* 80A8D8E8  38 61 00 4C */	addi r3, r1, 0x4c
/* 80A8D8EC  38 81 00 40 */	addi r4, r1, 0x40
/* 80A8D8F0  38 A1 00 34 */	addi r5, r1, 0x34
/* 80A8D8F4  7F C6 F3 78 */	mr r6, r30
/* 80A8D8F8  4B 5E A4 6C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A8D8FC  7F 43 D3 78 */	mr r3, r26
/* 80A8D900  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A8D904  4B 5E 6A B0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80A8D908  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A8D90C  41 82 01 7C */	beq lbl_80A8DA88
/* 80A8D910  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80A8D914  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A8D918  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80A8D91C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A8D920  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80A8D924  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A8D928  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8D92C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A8D930  D3 81 00 2C */	stfs f28, 0x2c(r1)
/* 80A8D934  D3 61 00 30 */	stfs f27, 0x30(r1)
/* 80A8D938  38 61 00 28 */	addi r3, r1, 0x28
/* 80A8D93C  38 81 00 40 */	addi r4, r1, 0x40
/* 80A8D940  4B 7E 35 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8D944  38 61 00 40 */	addi r3, r1, 0x40
/* 80A8D948  38 81 00 34 */	addi r4, r1, 0x34
/* 80A8D94C  7C 65 1B 78 */	mr r5, r3
/* 80A8D950  4B 8B 97 40 */	b PSVECAdd
/* 80A8D954  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80A8D958  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A8D95C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80A8D960  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80A8D964  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80A8D968  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A8D96C  EC 01 E8 28 */	fsubs f0, f1, f29
/* 80A8D970  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A8D974  38 61 00 4C */	addi r3, r1, 0x4c
/* 80A8D978  38 81 00 40 */	addi r4, r1, 0x40
/* 80A8D97C  38 A1 00 34 */	addi r5, r1, 0x34
/* 80A8D980  7F C6 F3 78 */	mr r6, r30
/* 80A8D984  4B 5E A3 E0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A8D988  7F 43 D3 78 */	mr r3, r26
/* 80A8D98C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A8D990  4B 5E 6A 24 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80A8D994  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A8D998  41 82 00 C0 */	beq lbl_80A8DA58
/* 80A8D99C  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80A8D9A0  3B 21 00 BC */	addi r25, r1, 0xbc
/* 80A8D9A4  7F 39 DA 14 */	add r25, r25, r27
/* 80A8D9A8  D0 59 00 00 */	stfs f2, 0(r25)
/* 80A8D9AC  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80A8D9B0  D0 39 00 04 */	stfs f1, 4(r25)
/* 80A8D9B4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80A8D9B8  D0 19 00 08 */	stfs f0, 8(r25)
/* 80A8D9BC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80A8D9C0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80A8D9C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A8D9C8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80A8D9CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8D9D0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A8D9D4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8D9D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A8D9DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A8D9E0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8D9E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A8D9E8  38 61 00 28 */	addi r3, r1, 0x28
/* 80A8D9EC  38 81 00 34 */	addi r4, r1, 0x34
/* 80A8D9F0  4B 7E 34 FC */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8D9F4  38 61 00 34 */	addi r3, r1, 0x34
/* 80A8D9F8  38 81 00 40 */	addi r4, r1, 0x40
/* 80A8D9FC  7C 65 1B 78 */	mr r5, r3
/* 80A8DA00  4B 8B 96 90 */	b PSVECAdd
/* 80A8DA04  38 61 00 4C */	addi r3, r1, 0x4c
/* 80A8DA08  38 81 00 40 */	addi r4, r1, 0x40
/* 80A8DA0C  38 A1 00 34 */	addi r5, r1, 0x34
/* 80A8DA10  7F C6 F3 78 */	mr r6, r30
/* 80A8DA14  4B 5E A3 50 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A8DA18  7F 43 D3 78 */	mr r3, r26
/* 80A8DA1C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A8DA20  4B 5E 69 94 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80A8DA24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A8DA28  41 82 00 60 */	beq lbl_80A8DA88
/* 80A8DA2C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A8DA30  D0 19 00 00 */	stfs f0, 0(r25)
/* 80A8DA34  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A8DA38  D0 19 00 04 */	stfs f0, 4(r25)
/* 80A8DA3C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A8DA40  D0 19 00 08 */	stfs f0, 8(r25)
/* 80A8DA44  C0 39 00 00 */	lfs f1, 0(r25)
/* 80A8DA48  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80A8DA4C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8DA50  D0 19 00 00 */	stfs f0, 0(r25)
/* 80A8DA54  48 00 00 34 */	b lbl_80A8DA88
lbl_80A8DA58:
/* 80A8DA58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A8DA5C  38 61 00 BC */	addi r3, r1, 0xbc
/* 80A8DA60  7C 63 DA 14 */	add r3, r3, r27
/* 80A8DA64  D0 03 00 00 */	stfs f0, 0(r3)
/* 80A8DA68  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A8DA6C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A8DA70  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A8DA74  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A8DA78  C0 23 00 00 */	lfs f1, 0(r3)
/* 80A8DA7C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80A8DA80  EC 01 00 2A */	fadds f0, f1, f0
/* 80A8DA84  D0 03 00 00 */	stfs f0, 0(r3)
lbl_80A8DA88:
/* 80A8DA88  3B 18 00 01 */	addi r24, r24, 1
/* 80A8DA8C  2C 18 00 10 */	cmpwi r24, 0x10
/* 80A8DA90  3B BD 10 00 */	addi r29, r29, 0x1000
/* 80A8DA94  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80A8DA98  41 80 FD FC */	blt lbl_80A8D894
/* 80A8DA9C  3B A0 00 00 */	li r29, 0
/* 80A8DAA0  3B 80 00 01 */	li r28, 1
/* 80A8DAA4  3B 60 00 0C */	li r27, 0xc
/* 80A8DAA8  C3 FF 00 10 */	lfs f31, 0x10(r31)
lbl_80A8DAAC:
/* 80A8DAAC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80A8DAB0  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80A8DAB4  38 81 00 BC */	addi r4, r1, 0xbc
/* 80A8DAB8  7C 84 02 14 */	add r4, r4, r0
/* 80A8DABC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A8DAC0  4B 7D 90 74 */	b __mi__4cXyzCFRC3Vec
/* 80A8DAC4  38 61 00 10 */	addi r3, r1, 0x10
/* 80A8DAC8  38 81 00 BC */	addi r4, r1, 0xbc
/* 80A8DACC  7C 84 DA 14 */	add r4, r4, r27
/* 80A8DAD0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A8DAD4  4B 7D 90 60 */	b __mi__4cXyzCFRC3Vec
/* 80A8DAD8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80A8DADC  4B 8B 96 5C */	b PSVECSquareMag
/* 80A8DAE0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A8DAE4  40 81 00 58 */	ble lbl_80A8DB3C
/* 80A8DAE8  FC 00 08 34 */	frsqrte f0, f1
/* 80A8DAEC  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80A8DAF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8DAF4  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80A8DAF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8DAFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8DB00  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8DB04  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8DB08  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8DB0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8DB10  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8DB14  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8DB18  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8DB1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8DB20  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8DB24  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8DB28  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8DB2C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8DB30  FF C1 00 32 */	fmul f30, f1, f0
/* 80A8DB34  FF C0 F0 18 */	frsp f30, f30
/* 80A8DB38  48 00 00 90 */	b lbl_80A8DBC8
lbl_80A8DB3C:
/* 80A8DB3C  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80A8DB40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8DB44  40 80 00 10 */	bge lbl_80A8DB54
/* 80A8DB48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A8DB4C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80A8DB50  48 00 00 78 */	b lbl_80A8DBC8
lbl_80A8DB54:
/* 80A8DB54  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A8DB58  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A8DB5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A8DB60  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8DB64  7C 03 00 00 */	cmpw r3, r0
/* 80A8DB68  41 82 00 14 */	beq lbl_80A8DB7C
/* 80A8DB6C  40 80 00 40 */	bge lbl_80A8DBAC
/* 80A8DB70  2C 03 00 00 */	cmpwi r3, 0
/* 80A8DB74  41 82 00 20 */	beq lbl_80A8DB94
/* 80A8DB78  48 00 00 34 */	b lbl_80A8DBAC
lbl_80A8DB7C:
/* 80A8DB7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8DB80  41 82 00 0C */	beq lbl_80A8DB8C
/* 80A8DB84  38 00 00 01 */	li r0, 1
/* 80A8DB88  48 00 00 28 */	b lbl_80A8DBB0
lbl_80A8DB8C:
/* 80A8DB8C  38 00 00 02 */	li r0, 2
/* 80A8DB90  48 00 00 20 */	b lbl_80A8DBB0
lbl_80A8DB94:
/* 80A8DB94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8DB98  41 82 00 0C */	beq lbl_80A8DBA4
/* 80A8DB9C  38 00 00 05 */	li r0, 5
/* 80A8DBA0  48 00 00 10 */	b lbl_80A8DBB0
lbl_80A8DBA4:
/* 80A8DBA4  38 00 00 03 */	li r0, 3
/* 80A8DBA8  48 00 00 08 */	b lbl_80A8DBB0
lbl_80A8DBAC:
/* 80A8DBAC  38 00 00 04 */	li r0, 4
lbl_80A8DBB0:
/* 80A8DBB0  2C 00 00 01 */	cmpwi r0, 1
/* 80A8DBB4  40 82 00 10 */	bne lbl_80A8DBC4
/* 80A8DBB8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A8DBBC  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80A8DBC0  48 00 00 08 */	b lbl_80A8DBC8
lbl_80A8DBC4:
/* 80A8DBC4  FF C0 08 90 */	fmr f30, f1
lbl_80A8DBC8:
/* 80A8DBC8  38 61 00 10 */	addi r3, r1, 0x10
/* 80A8DBCC  4B 8B 95 6C */	b PSVECSquareMag
/* 80A8DBD0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A8DBD4  40 81 00 58 */	ble lbl_80A8DC2C
/* 80A8DBD8  FC 00 08 34 */	frsqrte f0, f1
/* 80A8DBDC  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80A8DBE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8DBE4  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80A8DBE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8DBEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8DBF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8DBF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8DBF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8DBFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8DC00  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8DC04  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8DC08  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8DC0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8DC10  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8DC14  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8DC18  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8DC1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8DC20  FC 21 00 32 */	fmul f1, f1, f0
/* 80A8DC24  FC 20 08 18 */	frsp f1, f1
/* 80A8DC28  48 00 00 88 */	b lbl_80A8DCB0
lbl_80A8DC2C:
/* 80A8DC2C  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80A8DC30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8DC34  40 80 00 10 */	bge lbl_80A8DC44
/* 80A8DC38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A8DC3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A8DC40  48 00 00 70 */	b lbl_80A8DCB0
lbl_80A8DC44:
/* 80A8DC44  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A8DC48  80 81 00 08 */	lwz r4, 8(r1)
/* 80A8DC4C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A8DC50  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8DC54  7C 03 00 00 */	cmpw r3, r0
/* 80A8DC58  41 82 00 14 */	beq lbl_80A8DC6C
/* 80A8DC5C  40 80 00 40 */	bge lbl_80A8DC9C
/* 80A8DC60  2C 03 00 00 */	cmpwi r3, 0
/* 80A8DC64  41 82 00 20 */	beq lbl_80A8DC84
/* 80A8DC68  48 00 00 34 */	b lbl_80A8DC9C
lbl_80A8DC6C:
/* 80A8DC6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8DC70  41 82 00 0C */	beq lbl_80A8DC7C
/* 80A8DC74  38 00 00 01 */	li r0, 1
/* 80A8DC78  48 00 00 28 */	b lbl_80A8DCA0
lbl_80A8DC7C:
/* 80A8DC7C  38 00 00 02 */	li r0, 2
/* 80A8DC80  48 00 00 20 */	b lbl_80A8DCA0
lbl_80A8DC84:
/* 80A8DC84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8DC88  41 82 00 0C */	beq lbl_80A8DC94
/* 80A8DC8C  38 00 00 05 */	li r0, 5
/* 80A8DC90  48 00 00 10 */	b lbl_80A8DCA0
lbl_80A8DC94:
/* 80A8DC94  38 00 00 03 */	li r0, 3
/* 80A8DC98  48 00 00 08 */	b lbl_80A8DCA0
lbl_80A8DC9C:
/* 80A8DC9C  38 00 00 04 */	li r0, 4
lbl_80A8DCA0:
/* 80A8DCA0  2C 00 00 01 */	cmpwi r0, 1
/* 80A8DCA4  40 82 00 0C */	bne lbl_80A8DCB0
/* 80A8DCA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A8DCAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A8DCB0:
/* 80A8DCB0  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 80A8DCB4  40 81 00 08 */	ble lbl_80A8DCBC
/* 80A8DCB8  7F 9D E3 78 */	mr r29, r28
lbl_80A8DCBC:
/* 80A8DCBC  3B 9C 00 01 */	addi r28, r28, 1
/* 80A8DCC0  2C 1C 00 10 */	cmpwi r28, 0x10
/* 80A8DCC4  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80A8DCC8  41 80 FD E4 */	blt lbl_80A8DAAC
/* 80A8DCCC  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80A8DCD0  38 61 00 BC */	addi r3, r1, 0xbc
/* 80A8DCD4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80A8DCD8  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80A8DCDC  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80A8DCE0  7C 04 04 2E */	lfsx f0, r4, r0
/* 80A8DCE4  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80A8DCE8  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80A8DCEC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80A8DCF0  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80A8DCF4  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha
/* 80A8DCF8  38 84 91 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A8DCFC  38 A0 00 0C */	li r5, 0xc
/* 80A8DD00  38 C0 00 10 */	li r6, 0x10
/* 80A8DD04  4B 8D 3F E4 */	b __destroy_arr
/* 80A8DD08  38 61 00 4C */	addi r3, r1, 0x4c
/* 80A8DD0C  38 80 FF FF */	li r4, -1
/* 80A8DD10  4B 5E 9F CC */	b __dt__11dBgS_LinChkFv
/* 80A8DD14  E3 E1 01 E8 */	psq_l f31, 488(r1), 0, 0 /* qr0 */
/* 80A8DD18  CB E1 01 E0 */	lfd f31, 0x1e0(r1)
/* 80A8DD1C  E3 C1 01 D8 */	psq_l f30, 472(r1), 0, 0 /* qr0 */
/* 80A8DD20  CB C1 01 D0 */	lfd f30, 0x1d0(r1)
/* 80A8DD24  E3 A1 01 C8 */	psq_l f29, 456(r1), 0, 0 /* qr0 */
/* 80A8DD28  CB A1 01 C0 */	lfd f29, 0x1c0(r1)
/* 80A8DD2C  E3 81 01 B8 */	psq_l f28, 440(r1), 0, 0 /* qr0 */
/* 80A8DD30  CB 81 01 B0 */	lfd f28, 0x1b0(r1)
/* 80A8DD34  E3 61 01 A8 */	psq_l f27, 424(r1), 0, 0 /* qr0 */
/* 80A8DD38  CB 61 01 A0 */	lfd f27, 0x1a0(r1)
/* 80A8DD3C  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 80A8DD40  4B 8D 44 D4 */	b _restgpr_24
/* 80A8DD44  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 80A8DD48  7C 08 03 A6 */	mtlr r0
/* 80A8DD4C  38 21 01 F0 */	addi r1, r1, 0x1f0
/* 80A8DD50  4E 80 00 20 */	blr 
