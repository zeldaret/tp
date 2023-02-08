lbl_807B8F68:
/* 807B8F68  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807B8F6C  7C 08 02 A6 */	mflr r0
/* 807B8F70  90 01 00 64 */	stw r0, 0x64(r1)
/* 807B8F74  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807B8F78  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807B8F7C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 807B8F80  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 807B8F84  39 61 00 40 */	addi r11, r1, 0x40
/* 807B8F88  4B BA 92 55 */	bl _savegpr_29
/* 807B8F8C  7C 7E 1B 78 */	mr r30, r3
/* 807B8F90  3C 80 80 7C */	lis r4, lit_3762@ha /* 0x807BA26C@ha */
/* 807B8F94  3B E4 A2 6C */	addi r31, r4, lit_3762@l /* 0x807BA26C@l */
/* 807B8F98  C3 FF 00 30 */	lfs f31, 0x30(r31)
/* 807B8F9C  FF C0 F8 90 */	fmr f30, f31
/* 807B8FA0  A8 03 06 78 */	lha r0, 0x678(r3)
/* 807B8FA4  2C 00 00 02 */	cmpwi r0, 2
/* 807B8FA8  41 82 01 00 */	beq lbl_807B90A8
/* 807B8FAC  40 80 00 14 */	bge lbl_807B8FC0
/* 807B8FB0  2C 00 00 00 */	cmpwi r0, 0
/* 807B8FB4  41 82 00 18 */	beq lbl_807B8FCC
/* 807B8FB8  40 80 00 30 */	bge lbl_807B8FE8
/* 807B8FBC  48 00 02 68 */	b lbl_807B9224
lbl_807B8FC0:
/* 807B8FC0  2C 00 00 04 */	cmpwi r0, 4
/* 807B8FC4  40 80 02 60 */	bge lbl_807B9224
/* 807B8FC8  48 00 01 C0 */	b lbl_807B9188
lbl_807B8FCC:
/* 807B8FCC  38 80 00 09 */	li r4, 9
/* 807B8FD0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807B8FD4  38 A0 00 02 */	li r5, 2
/* 807B8FD8  FC 40 F8 90 */	fmr f2, f31
/* 807B8FDC  4B FF F2 59 */	bl anm_init__FP10e_tk_classifUcf
/* 807B8FE0  38 00 00 01 */	li r0, 1
/* 807B8FE4  B0 1E 06 78 */	sth r0, 0x678(r30)
lbl_807B8FE8:
/* 807B8FE8  88 7E 05 C0 */	lbz r3, 0x5c0(r30)
/* 807B8FEC  88 1E 05 C1 */	lbz r0, 0x5c1(r30)
/* 807B8FF0  7C 03 02 14 */	add r0, r3, r0
/* 807B8FF4  98 1E 05 C0 */	stb r0, 0x5c0(r30)
/* 807B8FF8  88 BE 05 C0 */	lbz r5, 0x5c0(r30)
/* 807B8FFC  7C A3 07 74 */	extsb r3, r5
/* 807B9000  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 807B9004  A0 04 00 00 */	lhz r0, 0(r4)
/* 807B9008  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 807B900C  7C 03 00 00 */	cmpw r3, r0
/* 807B9010  41 80 00 38 */	blt lbl_807B9048
/* 807B9014  88 04 00 05 */	lbz r0, 5(r4)
/* 807B9018  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B901C  41 82 00 10 */	beq lbl_807B902C
/* 807B9020  38 00 00 00 */	li r0, 0
/* 807B9024  98 1E 05 C0 */	stb r0, 0x5c0(r30)
/* 807B9028  48 00 00 34 */	b lbl_807B905C
lbl_807B902C:
/* 807B902C  38 00 FF FF */	li r0, -1
/* 807B9030  98 1E 05 C1 */	stb r0, 0x5c1(r30)
/* 807B9034  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807B9038  A0 63 00 00 */	lhz r3, 0(r3)
/* 807B903C  38 03 FF FE */	addi r0, r3, -2
/* 807B9040  98 1E 05 C0 */	stb r0, 0x5c0(r30)
/* 807B9044  48 00 00 18 */	b lbl_807B905C
lbl_807B9048:
/* 807B9048  7C A0 07 75 */	extsb. r0, r5
/* 807B904C  40 80 00 10 */	bge lbl_807B905C
/* 807B9050  38 00 00 01 */	li r0, 1
/* 807B9054  98 1E 05 C1 */	stb r0, 0x5c1(r30)
/* 807B9058  98 1E 05 C0 */	stb r0, 0x5c0(r30)
lbl_807B905C:
/* 807B905C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807B9060  83 A3 00 08 */	lwz r29, 8(r3)
/* 807B9064  88 1E 05 C0 */	lbz r0, 0x5c0(r30)
/* 807B9068  7C 00 07 74 */	extsb r0, r0
/* 807B906C  54 00 20 36 */	slwi r0, r0, 4
/* 807B9070  7F BD 02 14 */	add r29, r29, r0
/* 807B9074  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 807B9078  4B AA E9 15 */	bl cM_rndFX__Ff
/* 807B907C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807B9080  EC 00 08 2A */	fadds f0, f0, f1
/* 807B9084  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 807B9088  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 807B908C  4B AA E9 01 */	bl cM_rndFX__Ff
/* 807B9090  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807B9094  EC 00 08 2A */	fadds f0, f0, f1
/* 807B9098  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 807B909C  38 00 00 02 */	li r0, 2
/* 807B90A0  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B90A4  48 00 01 80 */	b lbl_807B9224
lbl_807B90A8:
/* 807B90A8  38 61 00 08 */	addi r3, r1, 8
/* 807B90AC  38 9E 06 7C */	addi r4, r30, 0x67c
/* 807B90B0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807B90B4  4B AA DA 81 */	bl __mi__4cXyzCFRC3Vec
/* 807B90B8  C0 21 00 08 */	lfs f1, 8(r1)
/* 807B90BC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807B90C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807B90C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B90C8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807B90CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B90D0  EC 21 00 72 */	fmuls f1, f1, f1
/* 807B90D4  EC 00 00 32 */	fmuls f0, f0, f0
/* 807B90D8  EC 21 00 2A */	fadds f1, f1, f0
/* 807B90DC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 807B90E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B90E4  40 81 00 0C */	ble lbl_807B90F0
/* 807B90E8  FC 00 08 34 */	frsqrte f0, f1
/* 807B90EC  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807B90F0:
/* 807B90F0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807B90F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B90F8  40 80 00 7C */	bge lbl_807B9174
/* 807B90FC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807B9100  80 83 00 08 */	lwz r4, 8(r3)
/* 807B9104  88 1E 05 C0 */	lbz r0, 0x5c0(r30)
/* 807B9108  7C 00 07 74 */	extsb r0, r0
/* 807B910C  54 03 20 36 */	slwi r3, r0, 4
/* 807B9110  38 03 00 03 */	addi r0, r3, 3
/* 807B9114  7C 04 00 AE */	lbzx r0, r4, r0
/* 807B9118  28 00 00 02 */	cmplwi r0, 2
/* 807B911C  41 82 00 50 */	beq lbl_807B916C
/* 807B9120  7F C3 F3 78 */	mr r3, r30
/* 807B9124  38 80 00 08 */	li r4, 8
/* 807B9128  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807B912C  38 A0 00 02 */	li r5, 2
/* 807B9130  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807B9134  4B FF F1 01 */	bl anm_init__FP10e_tk_classifUcf
/* 807B9138  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807B913C  4B AA E8 19 */	bl cM_rndF__Ff
/* 807B9140  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807B9144  EC 00 08 2A */	fadds f0, f0, f1
/* 807B9148  FC 00 00 1E */	fctiwz f0, f0
/* 807B914C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807B9150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B9154  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 807B9158  38 00 00 14 */	li r0, 0x14
/* 807B915C  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807B9160  38 00 00 03 */	li r0, 3
/* 807B9164  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B9168  48 00 00 0C */	b lbl_807B9174
lbl_807B916C:
/* 807B916C  38 00 00 01 */	li r0, 1
/* 807B9170  B0 1E 06 78 */	sth r0, 0x678(r30)
lbl_807B9174:
/* 807B9174  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 807B9178  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 807B917C  4B AA E4 F9 */	bl cM_atan2s__Fff
/* 807B9180  B0 7E 06 88 */	sth r3, 0x688(r30)
/* 807B9184  48 00 00 A0 */	b lbl_807B9224
lbl_807B9188:
/* 807B9188  C3 FF 00 14 */	lfs f31, 0x14(r31)
/* 807B918C  C3 DF 00 44 */	lfs f30, 0x44(r31)
/* 807B9190  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807B9194  2C 00 00 00 */	cmpwi r0, 0
/* 807B9198  40 82 00 78 */	bne lbl_807B9210
/* 807B919C  4B FF F2 8D */	bl pl_y_check__FP10e_tk_class
/* 807B91A0  2C 03 00 00 */	cmpwi r3, 0
/* 807B91A4  41 82 00 6C */	beq lbl_807B9210
/* 807B91A8  7F C3 F3 78 */	mr r3, r30
/* 807B91AC  3C 80 80 7C */	lis r4, l_HIO@ha /* 0x807BA448@ha */
/* 807B91B0  38 84 A4 48 */	addi r4, r4, l_HIO@l /* 0x807BA448@l */
/* 807B91B4  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 807B91B8  38 80 40 00 */	li r4, 0x4000
/* 807B91BC  4B FF F2 A5 */	bl pl_check__FP10e_tk_classfs
/* 807B91C0  2C 03 00 00 */	cmpwi r3, 0
/* 807B91C4  41 82 00 4C */	beq lbl_807B9210
/* 807B91C8  38 00 00 01 */	li r0, 1
/* 807B91CC  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 807B91D0  7F C3 F3 78 */	mr r3, r30
/* 807B91D4  38 80 00 0A */	li r4, 0xa
/* 807B91D8  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 807B91DC  38 A0 00 02 */	li r5, 2
/* 807B91E0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807B91E4  4B FF F0 51 */	bl anm_init__FP10e_tk_classifUcf
/* 807B91E8  38 00 00 02 */	li r0, 2
/* 807B91EC  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B91F0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 807B91F4  4B AA E7 61 */	bl cM_rndF__Ff
/* 807B91F8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 807B91FC  EC 00 08 2A */	fadds f0, f0, f1
/* 807B9200  FC 00 00 1E */	fctiwz f0, f0
/* 807B9204  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807B9208  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B920C  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_807B9210:
/* 807B9210  A8 1E 06 96 */	lha r0, 0x696(r30)
/* 807B9214  2C 00 00 00 */	cmpwi r0, 0
/* 807B9218  40 82 00 0C */	bne lbl_807B9224
/* 807B921C  38 00 00 00 */	li r0, 0
/* 807B9220  B0 1E 06 78 */	sth r0, 0x678(r30)
lbl_807B9224:
/* 807B9224  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807B9228  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807B922C  38 A0 00 08 */	li r5, 8
/* 807B9230  38 C0 04 00 */	li r6, 0x400
/* 807B9234  4B AB 73 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 807B9238  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807B923C  3C 80 80 7C */	lis r4, l_HIO@ha /* 0x807BA448@ha */
/* 807B9240  38 84 A4 48 */	addi r4, r4, l_HIO@l /* 0x807BA448@l */
/* 807B9244  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 807B9248  EC 20 07 F2 */	fmuls f1, f0, f31
/* 807B924C  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807B9250  FC 60 F0 90 */	fmr f3, f30
/* 807B9254  4B AB 67 E9 */	bl cLib_addCalc2__FPffff
/* 807B9258  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807B925C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807B9260  80 63 00 00 */	lwz r3, 0(r3)
/* 807B9264  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807B9268  4B 85 31 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 807B926C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 807B9270  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807B9274  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807B9278  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807B927C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B9280  38 61 00 14 */	addi r3, r1, 0x14
/* 807B9284  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807B9288  4B AB 7C 65 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B928C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807B9290  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807B9294  7C 65 1B 78 */	mr r5, r3
/* 807B9298  4B B8 DD F9 */	bl PSVECAdd
/* 807B929C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 807B92A0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 807B92A4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 807B92A8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 807B92AC  39 61 00 40 */	addi r11, r1, 0x40
/* 807B92B0  4B BA 8F 79 */	bl _restgpr_29
/* 807B92B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807B92B8  7C 08 03 A6 */	mtlr r0
/* 807B92BC  38 21 00 60 */	addi r1, r1, 0x60
/* 807B92C0  4E 80 00 20 */	blr 
