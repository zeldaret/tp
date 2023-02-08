lbl_807BDF60:
/* 807BDF60  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 807BDF64  7C 08 02 A6 */	mflr r0
/* 807BDF68  90 01 01 34 */	stw r0, 0x134(r1)
/* 807BDF6C  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 807BDF70  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 807BDF74  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 807BDF78  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 807BDF7C  39 61 01 10 */	addi r11, r1, 0x110
/* 807BDF80  4B BA 42 35 */	bl _savegpr_19
/* 807BDF84  7C 76 1B 78 */	mr r22, r3
/* 807BDF88  3C 60 80 7C */	lis r3, lit_1109@ha /* 0x807C23A0@ha */
/* 807BDF8C  3B 63 23 A0 */	addi r27, r3, lit_1109@l /* 0x807C23A0@l */
/* 807BDF90  3C 60 80 7C */	lis r3, lit_3908@ha /* 0x807C1FB8@ha */
/* 807BDF94  3B 83 1F B8 */	addi r28, r3, lit_3908@l /* 0x807C1FB8@l */
/* 807BDF98  80 16 06 B8 */	lwz r0, 0x6b8(r22)
/* 807BDF9C  2C 00 00 04 */	cmpwi r0, 4
/* 807BDFA0  41 82 02 E0 */	beq lbl_807BE280
/* 807BDFA4  38 61 00 68 */	addi r3, r1, 0x68
/* 807BDFA8  4B 8B 9C C1 */	bl __ct__11dBgS_LinChkFv
/* 807BDFAC  88 1B 00 74 */	lbz r0, 0x74(r27)
/* 807BDFB0  7C 00 07 75 */	extsb. r0, r0
/* 807BDFB4  40 82 00 30 */	bne lbl_807BDFE4
/* 807BDFB8  C0 1C 00 54 */	lfs f0, 0x54(r28)
/* 807BDFBC  D0 1B 00 78 */	stfs f0, 0x78(r27)
/* 807BDFC0  38 7B 00 78 */	addi r3, r27, 0x78
/* 807BDFC4  D0 03 00 04 */	stfs f0, 4(r3)
/* 807BDFC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 807BDFCC  3C 80 80 7C */	lis r4, __dt__4cXyzFv@ha /* 0x807C1F68@ha */
/* 807BDFD0  38 84 1F 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807C1F68@l */
/* 807BDFD4  38 BB 00 68 */	addi r5, r27, 0x68
/* 807BDFD8  4B FF F7 61 */	bl __register_global_object
/* 807BDFDC  38 00 00 01 */	li r0, 1
/* 807BDFE0  98 1B 00 74 */	stb r0, 0x74(r27)
lbl_807BDFE4:
/* 807BDFE4  3A E0 00 00 */	li r23, 0
/* 807BDFE8  3A A0 00 00 */	li r21, 0
/* 807BDFEC  3A 80 00 00 */	li r20, 0
/* 807BDFF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BDFF4  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BDFF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BDFFC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BE000  3B 5E 0F 38 */	addi r26, r30, 0xf38
/* 807BE004  3B 01 00 28 */	addi r24, r1, 0x28
/* 807BE008  3B 21 00 18 */	addi r25, r1, 0x18
/* 807BE00C  3C 60 80 7C */	lis r3, foot_jnt_no_4152@ha /* 0x807C21B8@ha */
/* 807BE010  3B E3 21 B8 */	addi r31, r3, foot_jnt_no_4152@l /* 0x807C21B8@l */
/* 807BE014  C3 FC 00 64 */	lfs f31, 0x64(r28)
lbl_807BE018:
/* 807BE018  38 00 00 00 */	li r0, 0
/* 807BE01C  7C 18 A1 2E */	stwx r0, r24, r20
/* 807BE020  7C 19 A1 2E */	stwx r0, r25, r20
/* 807BE024  80 76 05 BC */	lwz r3, 0x5bc(r22)
/* 807BE028  80 63 00 04 */	lwz r3, 4(r3)
/* 807BE02C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807BE030  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807BE034  7C 1F A0 2E */	lwzx r0, r31, r20
/* 807BE038  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807BE03C  7C 63 02 14 */	add r3, r3, r0
/* 807BE040  7F A4 EB 78 */	mr r4, r29
/* 807BE044  4B B8 84 6D */	bl PSMTXCopy
/* 807BE048  C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 807BE04C  C0 5C 00 04 */	lfs f2, 4(r28)
/* 807BE050  FC 60 10 90 */	fmr f3, f2
/* 807BE054  4B 84 ED 49 */	bl transM__14mDoMtx_stack_cFfff
/* 807BE058  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807BE05C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807BE060  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807BE064  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807BE068  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807BE06C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807BE070  C0 3C 00 5C */	lfs f1, 0x5c(r28)
/* 807BE074  C0 5C 00 04 */	lfs f2, 4(r28)
/* 807BE078  FC 60 10 90 */	fmr f3, f2
/* 807BE07C  4B 84 ED 21 */	bl transM__14mDoMtx_stack_cFfff
/* 807BE080  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807BE084  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807BE088  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807BE08C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807BE090  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807BE094  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807BE098  C0 3C 00 60 */	lfs f1, 0x60(r28)
/* 807BE09C  C0 5C 00 04 */	lfs f2, 4(r28)
/* 807BE0A0  FC 60 10 90 */	fmr f3, f2
/* 807BE0A4  4B 84 EC F9 */	bl transM__14mDoMtx_stack_cFfff
/* 807BE0A8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807BE0AC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807BE0B0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 807BE0B4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807BE0B8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 807BE0BC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807BE0C0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807BE0C4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807BE0C8  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 807BE0CC  EC 1F 08 2A */	fadds f0, f31, f1
/* 807BE0D0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807BE0D4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807BE0D8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807BE0DC  FF C0 08 90 */	fmr f30, f1
/* 807BE0E0  38 61 00 5C */	addi r3, r1, 0x5c
/* 807BE0E4  4B 85 FC A1 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 807BE0E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BE0EC  41 82 00 48 */	beq lbl_807BE134
/* 807BE0F0  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 807BE0F4  C0 63 0C D8 */	lfs f3, mWaterY__11fopAcM_wt_c@l(r3)  /* 0x80450CD8@l */
/* 807BE0F8  FF C0 18 90 */	fmr f30, f3
/* 807BE0FC  C0 36 04 D4 */	lfs f1, 0x4d4(r22)
/* 807BE100  EC 01 18 28 */	fsubs f0, f1, f3
/* 807BE104  FC 00 02 10 */	fabs f0, f0
/* 807BE108  FC 40 00 18 */	frsp f2, f0
/* 807BE10C  C0 1C 00 68 */	lfs f0, 0x68(r28)
/* 807BE110  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807BE114  40 80 00 20 */	bge lbl_807BE134
/* 807BE118  38 00 00 01 */	li r0, 1
/* 807BE11C  7C 19 A1 2E */	stwx r0, r25, r20
/* 807BE120  EC 23 08 28 */	fsubs f1, f3, f1
/* 807BE124  C0 1C 00 6C */	lfs f0, 0x6c(r28)
/* 807BE128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BE12C  40 81 00 08 */	ble lbl_807BE134
/* 807BE130  7C 18 A1 2E */	stwx r0, r24, r20
lbl_807BE134:
/* 807BE134  38 61 00 68 */	addi r3, r1, 0x68
/* 807BE138  38 81 00 50 */	addi r4, r1, 0x50
/* 807BE13C  38 A1 00 38 */	addi r5, r1, 0x38
/* 807BE140  7E C6 B3 78 */	mr r6, r22
/* 807BE144  4B 8B 9C 21 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807BE148  7F 43 D3 78 */	mr r3, r26
/* 807BE14C  38 81 00 68 */	addi r4, r1, 0x68
/* 807BE150  4B 8B 62 65 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807BE154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BE158  40 82 00 90 */	bne lbl_807BE1E8
/* 807BE15C  7C 19 A0 2E */	lwzx r0, r25, r20
/* 807BE160  2C 00 00 01 */	cmpwi r0, 1
/* 807BE164  40 82 00 8C */	bne lbl_807BE1F0
/* 807BE168  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807BE16C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807BE170  D3 C1 00 60 */	stfs f30, 0x60(r1)
/* 807BE174  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807BE178  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807BE17C  38 60 00 00 */	li r3, 0
/* 807BE180  90 61 00 08 */	stw r3, 8(r1)
/* 807BE184  90 61 00 0C */	stw r3, 0xc(r1)
/* 807BE188  38 00 FF FF */	li r0, -1
/* 807BE18C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BE190  90 61 00 14 */	stw r3, 0x14(r1)
/* 807BE194  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807BE198  3A 74 0A AC */	addi r19, r20, 0xaac
/* 807BE19C  7C 96 98 2E */	lwzx r4, r22, r19
/* 807BE1A0  38 A0 01 B8 */	li r5, 0x1b8
/* 807BE1A4  3C C0 80 3F */	lis r6, mWaterCheck__11fopAcM_wt_c@ha /* 0x803F1D80@ha */
/* 807BE1A8  38 C6 1D 80 */	addi r6, r6, mWaterCheck__11fopAcM_wt_c@l /* 0x803F1D80@l */
/* 807BE1AC  38 E1 00 5C */	addi r7, r1, 0x5c
/* 807BE1B0  39 16 01 0C */	addi r8, r22, 0x10c
/* 807BE1B4  39 36 04 E4 */	addi r9, r22, 0x4e4
/* 807BE1B8  39 5B 00 78 */	addi r10, r27, 0x78
/* 807BE1BC  4B 88 F4 E9 */	bl setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 807BE1C0  7C 76 99 2E */	stwx r3, r22, r19
/* 807BE1C4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807BE1C8  38 63 02 10 */	addi r3, r3, 0x210
/* 807BE1CC  7C 96 98 2E */	lwzx r4, r22, r19
/* 807BE1D0  4B 88 D7 49 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807BE1D4  28 03 00 00 */	cmplwi r3, 0
/* 807BE1D8  41 82 00 18 */	beq lbl_807BE1F0
/* 807BE1DC  38 00 00 05 */	li r0, 5
/* 807BE1E0  98 03 00 56 */	stb r0, 0x56(r3)
/* 807BE1E4  48 00 00 0C */	b lbl_807BE1F0
lbl_807BE1E8:
/* 807BE1E8  38 00 00 01 */	li r0, 1
/* 807BE1EC  7C 18 A1 2E */	stwx r0, r24, r20
lbl_807BE1F0:
/* 807BE1F0  80 16 07 68 */	lwz r0, 0x768(r22)
/* 807BE1F4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807BE1F8  41 82 00 5C */	beq lbl_807BE254
/* 807BE1FC  88 16 06 FA */	lbz r0, 0x6fa(r22)
/* 807BE200  28 00 00 00 */	cmplwi r0, 0
/* 807BE204  40 82 00 50 */	bne lbl_807BE254
/* 807BE208  7C 18 A0 2E */	lwzx r0, r24, r20
/* 807BE20C  2C 00 00 00 */	cmpwi r0, 0
/* 807BE210  41 82 00 24 */	beq lbl_807BE234
/* 807BE214  38 75 06 D8 */	addi r3, r21, 0x6d8
/* 807BE218  7C 76 1A 14 */	add r3, r22, r3
/* 807BE21C  38 80 00 00 */	li r4, 0
/* 807BE220  38 A0 00 08 */	li r5, 8
/* 807BE224  38 C0 08 00 */	li r6, 0x800
/* 807BE228  38 E0 01 00 */	li r7, 0x100
/* 807BE22C  4B AB 23 15 */	bl cLib_addCalcAngleS__FPsssss
/* 807BE230  48 00 00 30 */	b lbl_807BE260
lbl_807BE234:
/* 807BE234  38 75 06 D8 */	addi r3, r21, 0x6d8
/* 807BE238  7C 76 1A 14 */	add r3, r22, r3
/* 807BE23C  38 80 D8 00 */	li r4, -10240
/* 807BE240  38 A0 00 08 */	li r5, 8
/* 807BE244  38 C0 08 00 */	li r6, 0x800
/* 807BE248  38 E0 01 00 */	li r7, 0x100
/* 807BE24C  4B AB 22 F5 */	bl cLib_addCalcAngleS__FPsssss
/* 807BE250  48 00 00 10 */	b lbl_807BE260
lbl_807BE254:
/* 807BE254  38 60 00 00 */	li r3, 0
/* 807BE258  38 15 06 D8 */	addi r0, r21, 0x6d8
/* 807BE25C  7C 76 03 2E */	sthx r3, r22, r0
lbl_807BE260:
/* 807BE260  3A F7 00 01 */	addi r23, r23, 1
/* 807BE264  2C 17 00 04 */	cmpwi r23, 4
/* 807BE268  3A B5 00 02 */	addi r21, r21, 2
/* 807BE26C  3A 94 00 04 */	addi r20, r20, 4
/* 807BE270  41 80 FD A8 */	blt lbl_807BE018
/* 807BE274  38 61 00 68 */	addi r3, r1, 0x68
/* 807BE278  38 80 FF FF */	li r4, -1
/* 807BE27C  4B 8B 9A 61 */	bl __dt__11dBgS_LinChkFv
lbl_807BE280:
/* 807BE280  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 807BE284  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 807BE288  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 807BE28C  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 807BE290  39 61 01 10 */	addi r11, r1, 0x110
/* 807BE294  4B BA 3F 6D */	bl _restgpr_19
/* 807BE298  80 01 01 34 */	lwz r0, 0x134(r1)
/* 807BE29C  7C 08 03 A6 */	mtlr r0
/* 807BE2A0  38 21 01 30 */	addi r1, r1, 0x130
/* 807BE2A4  4E 80 00 20 */	blr 
