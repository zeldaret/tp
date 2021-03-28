lbl_8007F628:
/* 8007F628  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8007F62C  7C 08 02 A6 */	mflr r0
/* 8007F630  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8007F634  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8007F638  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8007F63C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8007F640  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 8007F644  39 61 00 80 */	addi r11, r1, 0x80
/* 8007F648  48 2E 2B 6D */	bl _savegpr_19
/* 8007F64C  7C 7E 1B 78 */	mr r30, r3
/* 8007F650  7C 9F 23 78 */	mr r31, r4
/* 8007F654  3B 5F 00 24 */	addi r26, r31, 0x24
/* 8007F658  7F 43 D3 78 */	mr r3, r26
/* 8007F65C  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8007F660  38 84 00 14 */	addi r4, r4, 0x14
/* 8007F664  38 A1 00 20 */	addi r5, r1, 0x20
/* 8007F668  48 2C 7A 4D */	bl PSVECSubtract
/* 8007F66C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8007F670  48 2E 2A 3D */	bl __cvt_fp2unsigned
/* 8007F674  7C 7C 1B 79 */	or. r28, r3, r3
/* 8007F678  40 80 00 0C */	bge lbl_8007F684
/* 8007F67C  38 60 00 00 */	li r3, 0
/* 8007F680  48 00 02 FC */	b lbl_8007F97C
lbl_8007F684:
/* 8007F684  82 7E 00 18 */	lwz r19, 0x18(r30)
/* 8007F688  80 13 00 20 */	lwz r0, 0x20(r19)
/* 8007F68C  7C 00 00 F8 */	nor r0, r0, r0
/* 8007F690  7C 1C 00 00 */	cmpw r28, r0
/* 8007F694  40 81 00 0C */	ble lbl_8007F6A0
/* 8007F698  38 60 00 00 */	li r3, 0
/* 8007F69C  48 00 02 E0 */	b lbl_8007F97C
lbl_8007F6A0:
/* 8007F6A0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8007F6A4  48 2E 2A 09 */	bl __cvt_fp2unsigned
/* 8007F6A8  7C 7D 1B 79 */	or. r29, r3, r3
/* 8007F6AC  40 80 00 0C */	bge lbl_8007F6B8
/* 8007F6B0  38 60 00 00 */	li r3, 0
/* 8007F6B4  48 00 02 C8 */	b lbl_8007F97C
lbl_8007F6B8:
/* 8007F6B8  80 13 00 28 */	lwz r0, 0x28(r19)
/* 8007F6BC  7C 00 00 F8 */	nor r0, r0, r0
/* 8007F6C0  7C 1D 00 00 */	cmpw r29, r0
/* 8007F6C4  40 81 00 0C */	ble lbl_8007F6D0
/* 8007F6C8  38 60 00 00 */	li r3, 0
/* 8007F6CC  48 00 02 B0 */	b lbl_8007F97C
lbl_8007F6D0:
/* 8007F6D0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8007F6D4  48 2E 29 D9 */	bl __cvt_fp2unsigned
/* 8007F6D8  7C 79 1B 79 */	or. r25, r3, r3
/* 8007F6DC  40 80 00 0C */	bge lbl_8007F6E8
/* 8007F6E0  38 60 00 00 */	li r3, 0
/* 8007F6E4  48 00 02 98 */	b lbl_8007F97C
lbl_8007F6E8:
/* 8007F6E8  80 13 00 24 */	lwz r0, 0x24(r19)
/* 8007F6EC  7C 00 00 F8 */	nor r0, r0, r0
/* 8007F6F0  7C 19 00 00 */	cmpw r25, r0
/* 8007F6F4  40 81 00 08 */	ble lbl_8007F6FC
/* 8007F6F8  7C 19 03 78 */	mr r25, r0
lbl_8007F6FC:
/* 8007F6FC  3B 00 00 00 */	li r24, 0
/* 8007F700  3A E0 00 00 */	li r23, 0
/* 8007F704  C3 E2 8D 2C */	lfs f31, lit_4293(r2)
lbl_8007F708:
/* 8007F708  80 FE 00 18 */	lwz r7, 0x18(r30)
/* 8007F70C  80 67 00 0C */	lwz r3, 0xc(r7)
/* 8007F710  82 C7 00 2C */	lwz r22, 0x2c(r7)
/* 8007F714  7F 86 B4 30 */	srw r6, r28, r22
/* 8007F718  7F A4 B4 30 */	srw r4, r29, r22
/* 8007F71C  80 07 00 34 */	lwz r0, 0x34(r7)
/* 8007F720  7C 85 00 30 */	slw r5, r4, r0
/* 8007F724  7F 24 B4 30 */	srw r4, r25, r22
/* 8007F728  80 07 00 30 */	lwz r0, 0x30(r7)
/* 8007F72C  7C 80 00 30 */	slw r0, r4, r0
/* 8007F730  7C A0 03 78 */	or r0, r5, r0
/* 8007F734  7C C0 03 78 */	or r0, r6, r0
/* 8007F738  54 04 10 3A */	slwi r4, r0, 2
/* 8007F73C  48 00 00 28 */	b lbl_8007F764
lbl_8007F740:
/* 8007F740  7C 60 22 14 */	add r3, r0, r4
/* 8007F744  3A D6 FF FF */	addi r22, r22, -1
/* 8007F748  7F 85 B4 30 */	srw r5, r28, r22
/* 8007F74C  7F A4 B4 30 */	srw r4, r29, r22
/* 8007F750  7F 20 B4 30 */	srw r0, r25, r22
/* 8007F754  54 00 0F BC */	rlwinm r0, r0, 1, 0x1e, 0x1e
/* 8007F758  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8007F75C  50 A0 07 FE */	rlwimi r0, r5, 0, 0x1f, 0x1f
/* 8007F760  54 04 10 3A */	slwi r4, r0, 2
lbl_8007F764:
/* 8007F764  7C 60 1B 78 */	mr r0, r3
/* 8007F768  7C 83 20 2E */	lwzx r4, r3, r4
/* 8007F76C  2C 04 00 00 */	cmpwi r4, 0
/* 8007F770  40 80 FF D0 */	bge lbl_8007F740
/* 8007F774  54 80 00 7E */	clrlwi r0, r4, 1
/* 8007F778  7E A3 02 14 */	add r21, r3, r0
/* 8007F77C  48 00 01 D4 */	b lbl_8007F950
lbl_8007F780:
/* 8007F780  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8007F784  80 64 00 08 */	lwz r3, 8(r4)
/* 8007F788  A0 15 00 00 */	lhz r0, 0(r21)
/* 8007F78C  54 00 20 36 */	slwi r0, r0, 4
/* 8007F790  7F 63 02 14 */	add r27, r3, r0
/* 8007F794  80 64 00 04 */	lwz r3, 4(r4)
/* 8007F798  A0 1B 00 06 */	lhz r0, 6(r27)
/* 8007F79C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007F7A0  7E 83 02 14 */	add r20, r3, r0
/* 8007F7A4  C0 34 00 04 */	lfs f1, 4(r20)
/* 8007F7A8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8007F7AC  41 80 01 A4 */	blt lbl_8007F950
/* 8007F7B0  FC 00 0A 10 */	fabs f0, f1
/* 8007F7B4  FC 40 00 18 */	frsp f2, f0
/* 8007F7B8  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007F7BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007F7C0  41 80 01 90 */	blt lbl_8007F950
/* 8007F7C4  48 1E 8A 4D */	bl cBgW_CheckBWall__Ff
/* 8007F7C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007F7CC  41 82 00 10 */	beq lbl_8007F7DC
/* 8007F7D0  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 8007F7D4  28 00 00 00 */	cmplwi r0, 0
/* 8007F7D8  41 82 01 78 */	beq lbl_8007F950
lbl_8007F7DC:
/* 8007F7DC  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8007F7E0  80 64 00 00 */	lwz r3, 0(r4)
/* 8007F7E4  A0 1B 00 04 */	lhz r0, 4(r27)
/* 8007F7E8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007F7EC  7E 63 02 14 */	add r19, r3, r0
/* 8007F7F0  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8007F7F4  C0 13 00 00 */	lfs f0, 0(r19)
/* 8007F7F8  EC 61 00 28 */	fsubs f3, f1, f0
/* 8007F7FC  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8007F800  C0 3A 00 08 */	lfs f1, 8(r26)
/* 8007F804  C0 13 00 08 */	lfs f0, 8(r19)
/* 8007F808  EC 41 00 28 */	fsubs f2, f1, f0
/* 8007F80C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8007F810  C0 14 00 00 */	lfs f0, 0(r20)
/* 8007F814  EC 23 00 32 */	fmuls f1, f3, f0
/* 8007F818  C0 14 00 08 */	lfs f0, 8(r20)
/* 8007F81C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8007F820  EC 01 00 2A */	fadds f0, f1, f0
/* 8007F824  FC 20 00 50 */	fneg f1, f0
/* 8007F828  C0 14 00 04 */	lfs f0, 4(r20)
/* 8007F82C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8007F830  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8007F834  38 61 00 14 */	addi r3, r1, 0x14
/* 8007F838  80 84 00 04 */	lwz r4, 4(r4)
/* 8007F83C  A0 1B 00 08 */	lhz r0, 8(r27)
/* 8007F840  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007F844  7C 84 02 14 */	add r4, r4, r0
/* 8007F848  48 2C 79 4D */	bl PSVECDotProduct
/* 8007F84C  C0 02 8D 24 */	lfs f0, lit_4190(r2)
/* 8007F850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007F854  41 81 00 FC */	bgt lbl_8007F950
/* 8007F858  38 61 00 14 */	addi r3, r1, 0x14
/* 8007F85C  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8007F860  80 84 00 04 */	lwz r4, 4(r4)
/* 8007F864  A0 1B 00 0A */	lhz r0, 0xa(r27)
/* 8007F868  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007F86C  7C 84 02 14 */	add r4, r4, r0
/* 8007F870  48 2C 79 25 */	bl PSVECDotProduct
/* 8007F874  C0 02 8D 24 */	lfs f0, lit_4190(r2)
/* 8007F878  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007F87C  41 81 00 D4 */	bgt lbl_8007F950
/* 8007F880  38 61 00 14 */	addi r3, r1, 0x14
/* 8007F884  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 8007F888  80 84 00 04 */	lwz r4, 4(r4)
/* 8007F88C  A0 1B 00 0C */	lhz r0, 0xc(r27)
/* 8007F890  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007F894  7C 84 02 14 */	add r4, r4, r0
/* 8007F898  48 2C 78 FD */	bl PSVECDotProduct
/* 8007F89C  C0 42 8D 24 */	lfs f2, lit_4190(r2)
/* 8007F8A0  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8007F8A4  EC 02 00 2A */	fadds f0, f2, f0
/* 8007F8A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007F8AC  41 81 00 A4 */	bgt lbl_8007F950
/* 8007F8B0  C0 02 8D 28 */	lfs f0, lit_4191(r2)
/* 8007F8B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007F8B8  41 80 00 98 */	blt lbl_8007F950
/* 8007F8BC  7F C3 F3 78 */	mr r3, r30
/* 8007F8C0  A0 95 00 00 */	lhz r4, 0(r21)
/* 8007F8C4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8007F8C8  4B FF F2 A9 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 8007F8CC  C0 14 00 00 */	lfs f0, 0(r20)
/* 8007F8D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8007F8D4  C0 14 00 04 */	lfs f0, 4(r20)
/* 8007F8D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8007F8DC  C0 14 00 08 */	lfs f0, 8(r20)
/* 8007F8E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8007F8E4  7F C3 F3 78 */	mr r3, r30
/* 8007F8E8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8007F8EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8007F8F0  80 DF 00 04 */	lwz r6, 4(r31)
/* 8007F8F4  38 E1 00 08 */	addi r7, r1, 8
/* 8007F8F8  4B FF F2 CD */	bl chkPolyThrough__8dBgWKColCFP5dBgPcP16cBgS_PolyPassChkP15cBgS_GrpPassChkR4cXyz
/* 8007F8FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007F900  40 82 00 50 */	bne lbl_8007F950
/* 8007F904  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8007F908  C0 13 00 04 */	lfs f0, 4(r19)
/* 8007F90C  EF C1 00 2A */	fadds f30, f1, f0
/* 8007F910  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8007F914  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8007F918  40 80 00 38 */	bge lbl_8007F950
/* 8007F91C  C0 1A 00 04 */	lfs f0, 4(r26)
/* 8007F920  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8007F924  40 81 00 2C */	ble lbl_8007F950
/* 8007F928  38 7F 00 14 */	addi r3, r31, 0x14
/* 8007F92C  A0 95 00 00 */	lhz r4, 0(r21)
/* 8007F930  48 1E 88 75 */	bl SetPolyIndex__13cBgS_PolyInfoFi
/* 8007F934  D3 DF 00 34 */	stfs f30, 0x34(r31)
/* 8007F938  3B 00 00 01 */	li r24, 1
/* 8007F93C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8007F940  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8007F944  EC 3E 00 28 */	fsubs f1, f30, f0
/* 8007F948  48 2E 27 65 */	bl __cvt_fp2unsigned
/* 8007F94C  7C 77 1B 78 */	mr r23, r3
lbl_8007F950:
/* 8007F950  A4 15 00 02 */	lhzu r0, 2(r21)
/* 8007F954  28 00 00 00 */	cmplwi r0, 0
/* 8007F958  40 82 FE 28 */	bne lbl_8007F780
/* 8007F95C  38 00 00 01 */	li r0, 1
/* 8007F960  7C 03 B0 30 */	slw r3, r0, r22
/* 8007F964  38 03 FF FF */	addi r0, r3, -1
/* 8007F968  7F 39 00 78 */	andc r25, r25, r0
/* 8007F96C  3B 39 FF FF */	addi r25, r25, -1
/* 8007F970  7C 19 B8 00 */	cmpw r25, r23
/* 8007F974  40 80 FD 94 */	bge lbl_8007F708
/* 8007F978  7F 03 C3 78 */	mr r3, r24
lbl_8007F97C:
/* 8007F97C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8007F980  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8007F984  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 8007F988  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8007F98C  39 61 00 80 */	addi r11, r1, 0x80
/* 8007F990  48 2E 28 71 */	bl _restgpr_19
/* 8007F994  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8007F998  7C 08 03 A6 */	mtlr r0
/* 8007F99C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8007F9A0  4E 80 00 20 */	blr 
