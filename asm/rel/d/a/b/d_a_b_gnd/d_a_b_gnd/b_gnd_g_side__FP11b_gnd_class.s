lbl_805F8F88:
/* 805F8F88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F8F8C  7C 08 02 A6 */	mflr r0
/* 805F8F90  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F8F94  39 61 00 20 */	addi r11, r1, 0x20
/* 805F8F98  4B D6 92 45 */	bl _savegpr_29
/* 805F8F9C  7C 7E 1B 78 */	mr r30, r3
/* 805F8FA0  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805F8FA4  3B E3 26 64 */	addi r31, r3, lit_3815@l /* 0x80602664@l */
/* 805F8FA8  80 1E 1F B4 */	lwz r0, 0x1fb4(r30)
/* 805F8FAC  90 01 00 08 */	stw r0, 8(r1)
/* 805F8FB0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805F8FB4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805F8FB8  38 81 00 08 */	addi r4, r1, 8
/* 805F8FBC  4B A2 08 3D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805F8FC0  7C 7D 1B 78 */	mr r29, r3
/* 805F8FC4  38 00 00 0A */	li r0, 0xa
/* 805F8FC8  B0 1E 0C 58 */	sth r0, 0xc58(r30)
/* 805F8FCC  A8 1E 05 BC */	lha r0, 0x5bc(r30)
/* 805F8FD0  2C 00 00 01 */	cmpwi r0, 1
/* 805F8FD4  41 82 00 A0 */	beq lbl_805F9074
/* 805F8FD8  40 80 00 10 */	bge lbl_805F8FE8
/* 805F8FDC  2C 00 00 00 */	cmpwi r0, 0
/* 805F8FE0  40 80 00 14 */	bge lbl_805F8FF4
/* 805F8FE4  48 00 02 24 */	b lbl_805F9208
lbl_805F8FE8:
/* 805F8FE8  2C 00 00 03 */	cmpwi r0, 3
/* 805F8FEC  40 80 02 1C */	bge lbl_805F9208
/* 805F8FF0  48 00 01 24 */	b lbl_805F9114
lbl_805F8FF4:
/* 805F8FF4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F8FF8  4B C6 E9 5D */	bl cM_rndF__Ff
/* 805F8FFC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 805F9000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F9004  40 80 00 2C */	bge lbl_805F9030
/* 805F9008  7F C3 F3 78 */	mr r3, r30
/* 805F900C  38 80 00 4E */	li r4, 0x4e
/* 805F9010  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805F9014  38 A0 00 00 */	li r5, 0
/* 805F9018  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F901C  4B FF BA 79 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F9020  A8 7E 0C 3C */	lha r3, 0xc3c(r30)
/* 805F9024  38 03 30 00 */	addi r0, r3, 0x3000
/* 805F9028  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805F902C  48 00 00 28 */	b lbl_805F9054
lbl_805F9030:
/* 805F9030  7F C3 F3 78 */	mr r3, r30
/* 805F9034  38 80 00 50 */	li r4, 0x50
/* 805F9038  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805F903C  38 A0 00 00 */	li r5, 0
/* 805F9040  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F9044  4B FF BA 51 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F9048  A8 7E 0C 3C */	lha r3, 0xc3c(r30)
/* 805F904C  38 03 D0 00 */	addi r0, r3, -12288
/* 805F9050  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_805F9054:
/* 805F9054  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805F9058  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 805F905C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805F9060  38 00 00 01 */	li r0, 1
/* 805F9064  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F9068  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805F906C  D0 1D 39 5C */	stfs f0, 0x395c(r29)
/* 805F9070  48 00 01 98 */	b lbl_805F9208
lbl_805F9074:
/* 805F9074  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 805F9078  A8 9E 0C 3C */	lha r4, 0xc3c(r30)
/* 805F907C  38 A0 00 02 */	li r5, 2
/* 805F9080  38 C0 06 00 */	li r6, 0x600
/* 805F9084  4B C7 75 85 */	bl cLib_addCalcAngleS2__FPssss
/* 805F9088  80 1E 0D 00 */	lwz r0, 0xd00(r30)
/* 805F908C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805F9090  41 82 01 78 */	beq lbl_805F9208
/* 805F9094  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805F9098  2C 00 00 4E */	cmpwi r0, 0x4e
/* 805F909C  40 82 00 20 */	bne lbl_805F90BC
/* 805F90A0  7F C3 F3 78 */	mr r3, r30
/* 805F90A4  38 80 00 4F */	li r4, 0x4f
/* 805F90A8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F90AC  38 A0 00 00 */	li r5, 0
/* 805F90B0  FC 40 08 90 */	fmr f2, f1
/* 805F90B4  4B FF B9 E1 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F90B8  48 00 00 1C */	b lbl_805F90D4
lbl_805F90BC:
/* 805F90BC  7F C3 F3 78 */	mr r3, r30
/* 805F90C0  38 80 00 51 */	li r4, 0x51
/* 805F90C4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F90C8  38 A0 00 00 */	li r5, 0
/* 805F90CC  FC 40 08 90 */	fmr f2, f1
/* 805F90D0  4B FF B9 C5 */	bl anm_init__FP11b_gnd_classifUcf
lbl_805F90D4:
/* 805F90D4  38 00 00 02 */	li r0, 2
/* 805F90D8  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F90DC  38 00 00 01 */	li r0, 1
/* 805F90E0  98 1E 26 98 */	stb r0, 0x2698(r30)
/* 805F90E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070556@ha */
/* 805F90E8  38 03 05 56 */	addi r0, r3, 0x0556 /* 0x00070556@l */
/* 805F90EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F90F0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805F90F4  38 81 00 0C */	addi r4, r1, 0xc
/* 805F90F8  38 A0 00 00 */	li r5, 0
/* 805F90FC  38 C0 FF FF */	li r6, -1
/* 805F9100  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805F9104  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805F9108  7D 89 03 A6 */	mtctr r12
/* 805F910C  4E 80 04 21 */	bctrl 
/* 805F9110  48 00 00 F8 */	b lbl_805F9208
lbl_805F9114:
/* 805F9114  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805F9118  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F911C  C0 5F 01 38 */	lfs f2, 0x138(r31)
/* 805F9120  4B C7 69 61 */	bl cLib_addCalc0__FPfff
/* 805F9124  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805F9128  38 80 00 01 */	li r4, 1
/* 805F912C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F9130  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F9134  40 82 00 18 */	bne lbl_805F914C
/* 805F9138  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805F913C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F9140  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F9144  41 82 00 08 */	beq lbl_805F914C
/* 805F9148  38 80 00 00 */	li r4, 0
lbl_805F914C:
/* 805F914C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F9150  41 82 00 B8 */	beq lbl_805F9208
/* 805F9154  C0 3E 0C 38 */	lfs f1, 0xc38(r30)
/* 805F9158  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 805F915C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F9160  40 80 00 58 */	bge lbl_805F91B8
/* 805F9164  38 00 00 0B */	li r0, 0xb
/* 805F9168  B0 1E 0A FE */	sth r0, 0xafe(r30)
/* 805F916C  C0 3E 0C 38 */	lfs f1, 0xc38(r30)
/* 805F9170  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 805F9174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F9178  40 80 00 10 */	bge lbl_805F9188
/* 805F917C  38 00 00 06 */	li r0, 6
/* 805F9180  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F9184  48 00 00 7C */	b lbl_805F9200
lbl_805F9188:
/* 805F9188  38 00 00 03 */	li r0, 3
/* 805F918C  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F9190  7F C3 F3 78 */	mr r3, r30
/* 805F9194  38 80 00 14 */	li r4, 0x14
/* 805F9198  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805F919C  38 A0 00 00 */	li r5, 0
/* 805F91A0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F91A4  4B FF B8 F1 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F91A8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 805F91AC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805F91B0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805F91B4  48 00 00 4C */	b lbl_805F9200
lbl_805F91B8:
/* 805F91B8  38 00 00 0A */	li r0, 0xa
/* 805F91BC  B0 1E 0A FE */	sth r0, 0xafe(r30)
/* 805F91C0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F91C4  4B C6 E7 91 */	bl cM_rndF__Ff
/* 805F91C8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 805F91CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F91D0  40 80 00 10 */	bge lbl_805F91E0
/* 805F91D4  38 00 00 00 */	li r0, 0
/* 805F91D8  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F91DC  48 00 00 24 */	b lbl_805F9200
lbl_805F91E0:
/* 805F91E0  38 00 00 03 */	li r0, 3
/* 805F91E4  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F91E8  7F C3 F3 78 */	mr r3, r30
/* 805F91EC  38 80 00 20 */	li r4, 0x20
/* 805F91F0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805F91F4  38 A0 00 00 */	li r5, 0
/* 805F91F8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F91FC  4B FF B8 99 */	bl anm_init__FP11b_gnd_classifUcf
lbl_805F9200:
/* 805F9200  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805F9204  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_805F9208:
/* 805F9208  39 61 00 20 */	addi r11, r1, 0x20
/* 805F920C  4B D6 90 1D */	bl _restgpr_29
/* 805F9210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F9214  7C 08 03 A6 */	mtlr r0
/* 805F9218  38 21 00 20 */	addi r1, r1, 0x20
/* 805F921C  4E 80 00 20 */	blr 
