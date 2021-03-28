lbl_804E8F78:
/* 804E8F78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E8F7C  7C 08 02 A6 */	mflr r0
/* 804E8F80  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E8F84  39 61 00 40 */	addi r11, r1, 0x40
/* 804E8F88  4B E7 92 50 */	b _savegpr_28
/* 804E8F8C  7C 7E 1B 78 */	mr r30, r3
/* 804E8F90  3C 80 80 4F */	lis r4, lit_3789@ha
/* 804E8F94  3B E4 E8 AC */	addi r31, r4, lit_3789@l
/* 804E8F98  80 83 05 DC */	lwz r4, 0x5dc(r3)
/* 804E8F9C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 804E8FA0  FC 00 00 1E */	fctiwz f0, f0
/* 804E8FA4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804E8FA8  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 804E8FAC  38 00 00 01 */	li r0, 1
/* 804E8FB0  98 03 06 F4 */	stb r0, 0x6f4(r3)
/* 804E8FB4  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 804E8FB8  2C 00 00 01 */	cmpwi r0, 1
/* 804E8FBC  41 82 00 58 */	beq lbl_804E9014
/* 804E8FC0  40 80 01 84 */	bge lbl_804E9144
/* 804E8FC4  2C 00 00 00 */	cmpwi r0, 0
/* 804E8FC8  40 80 00 08 */	bge lbl_804E8FD0
/* 804E8FCC  48 00 01 78 */	b lbl_804E9144
lbl_804E8FD0:
/* 804E8FD0  38 80 00 05 */	li r4, 5
/* 804E8FD4  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 804E8FD8  38 A0 00 00 */	li r5, 0
/* 804E8FDC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E8FE0  4B FF C2 F1 */	bl anm_init__FP10e_dn_classifUcf
/* 804E8FE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070044@ha */
/* 804E8FE8  38 03 00 44 */	addi r0, r3, 0x0044 /* 0x00070044@l */
/* 804E8FEC  90 01 00 08 */	stw r0, 8(r1)
/* 804E8FF0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E8FF4  38 81 00 08 */	addi r4, r1, 8
/* 804E8FF8  38 A0 FF FF */	li r5, -1
/* 804E8FFC  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E9000  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E9004  7D 89 03 A6 */	mtctr r12
/* 804E9008  4E 80 04 21 */	bctrl 
/* 804E900C  38 00 00 01 */	li r0, 1
/* 804E9010  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E9014:
/* 804E9014  2C 1D 00 0A */	cmpwi r29, 0xa
/* 804E9018  41 80 00 14 */	blt lbl_804E902C
/* 804E901C  2C 1D 00 19 */	cmpwi r29, 0x19
/* 804E9020  41 80 00 64 */	blt lbl_804E9084
/* 804E9024  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 804E9028  41 81 00 5C */	bgt lbl_804E9084
lbl_804E902C:
/* 804E902C  AB 9E 04 DE */	lha r28, 0x4de(r30)
/* 804E9030  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804E9034  A8 9E 06 D4 */	lha r4, 0x6d4(r30)
/* 804E9038  38 A0 00 02 */	li r5, 2
/* 804E903C  38 C0 08 00 */	li r6, 0x800
/* 804E9040  4B D8 75 C8 */	b cLib_addCalcAngleS2__FPssss
/* 804E9044  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 804E9048  7F 80 E0 50 */	subf r28, r0, r28
/* 804E904C  57 80 08 3C */	slwi r0, r28, 1
/* 804E9050  7C 1C 07 34 */	extsh r28, r0
/* 804E9054  2C 1C 10 00 */	cmpwi r28, 0x1000
/* 804E9058  40 81 00 0C */	ble lbl_804E9064
/* 804E905C  3B 80 10 00 */	li r28, 0x1000
/* 804E9060  48 00 00 10 */	b lbl_804E9070
lbl_804E9064:
/* 804E9064  2C 1C F0 00 */	cmpwi r28, -4096
/* 804E9068  40 80 00 08 */	bge lbl_804E9070
/* 804E906C  3B 80 F0 00 */	li r28, -4096
lbl_804E9070:
/* 804E9070  38 7E 08 26 */	addi r3, r30, 0x826
/* 804E9074  7F 84 E3 78 */	mr r4, r28
/* 804E9078  38 A0 00 02 */	li r5, 2
/* 804E907C  38 C0 04 00 */	li r6, 0x400
/* 804E9080  4B D8 75 88 */	b cLib_addCalcAngleS2__FPssss
lbl_804E9084:
/* 804E9084  2C 1D 00 0D */	cmpwi r29, 0xd
/* 804E9088  41 80 00 1C */	blt lbl_804E90A4
/* 804E908C  2C 1D 00 12 */	cmpwi r29, 0x12
/* 804E9090  41 81 00 14 */	bgt lbl_804E90A4
/* 804E9094  38 00 00 01 */	li r0, 1
/* 804E9098  98 1E 06 EF */	stb r0, 0x6ef(r30)
/* 804E909C  38 00 00 00 */	li r0, 0
/* 804E90A0  98 1E 06 EE */	stb r0, 0x6ee(r30)
lbl_804E90A4:
/* 804E90A4  2C 1D 00 19 */	cmpwi r29, 0x19
/* 804E90A8  41 80 00 5C */	blt lbl_804E9104
/* 804E90AC  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 804E90B0  41 81 00 54 */	bgt lbl_804E9104
/* 804E90B4  38 00 00 01 */	li r0, 1
/* 804E90B8  98 1E 06 EF */	stb r0, 0x6ef(r30)
/* 804E90BC  98 1E 06 EE */	stb r0, 0x6ee(r30)
/* 804E90C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E90C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E90C8  80 63 00 00 */	lwz r3, 0(r3)
/* 804E90CC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804E90D0  4B B2 33 0C */	b mDoMtx_YrotS__FPA4_fs
/* 804E90D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E90D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E90DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E90E0  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804E90E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E90E8  38 61 00 18 */	addi r3, r1, 0x18
/* 804E90EC  38 81 00 0C */	addi r4, r1, 0xc
/* 804E90F0  4B D8 7D FC */	b MtxPosition__FP4cXyzP4cXyz
/* 804E90F4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804E90F8  38 81 00 0C */	addi r4, r1, 0xc
/* 804E90FC  7C 65 1B 78 */	mr r5, r3
/* 804E9100  4B E5 DF 90 */	b PSVECAdd
lbl_804E9104:
/* 804E9104  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E9108  38 80 00 01 */	li r4, 1
/* 804E910C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E9110  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E9114  40 82 00 18 */	bne lbl_804E912C
/* 804E9118  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E911C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E9120  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E9124  41 82 00 08 */	beq lbl_804E912C
/* 804E9128  38 80 00 00 */	li r4, 0
lbl_804E912C:
/* 804E912C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E9130  41 82 00 14 */	beq lbl_804E9144
/* 804E9134  38 00 00 03 */	li r0, 3
/* 804E9138  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E913C  38 00 00 00 */	li r0, 0
/* 804E9140  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E9144:
/* 804E9144  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E9148  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E914C  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 804E9150  4B D8 69 30 */	b cLib_addCalc0__FPfff
/* 804E9154  88 1E 06 EF */	lbz r0, 0x6ef(r30)
/* 804E9158  7C 00 07 75 */	extsb. r0, r0
/* 804E915C  41 82 00 60 */	beq lbl_804E91BC
/* 804E9160  7F C3 F3 78 */	mr r3, r30
/* 804E9164  4B FF FC 15 */	bl at_hit_check__FP10e_dn_class
/* 804E9168  28 03 00 00 */	cmplwi r3, 0
/* 804E916C  41 82 00 50 */	beq lbl_804E91BC
/* 804E9170  A8 03 00 08 */	lha r0, 8(r3)
/* 804E9174  2C 00 00 FD */	cmpwi r0, 0xfd
/* 804E9178  40 82 00 44 */	bne lbl_804E91BC
/* 804E917C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E9180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E9184  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804E9188  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804E918C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 804E9190  7D 89 03 A6 */	mtctr r12
/* 804E9194  4E 80 04 21 */	bctrl 
/* 804E9198  2C 03 00 00 */	cmpwi r3, 0
/* 804E919C  41 82 00 20 */	beq lbl_804E91BC
/* 804E91A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E91A4  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E91A8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804E91AC  38 00 00 03 */	li r0, 3
/* 804E91B0  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E91B4  38 00 00 00 */	li r0, 0
/* 804E91B8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E91BC:
/* 804E91BC  39 61 00 40 */	addi r11, r1, 0x40
/* 804E91C0  4B E7 90 64 */	b _restgpr_28
/* 804E91C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E91C8  7C 08 03 A6 */	mtlr r0
/* 804E91CC  38 21 00 40 */	addi r1, r1, 0x40
/* 804E91D0  4E 80 00 20 */	blr 
