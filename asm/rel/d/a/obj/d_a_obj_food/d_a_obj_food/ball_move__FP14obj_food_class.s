lbl_80BF0FC0:
/* 80BF0FC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BF0FC4  7C 08 02 A6 */	mflr r0
/* 80BF0FC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BF0FCC  39 61 00 40 */	addi r11, r1, 0x40
/* 80BF0FD0  4B 77 12 08 */	b _savegpr_28
/* 80BF0FD4  7C 7E 1B 78 */	mr r30, r3
/* 80BF0FD8  3C 60 80 BF */	lis r3, lit_3647@ha
/* 80BF0FDC  3B E3 1D 90 */	addi r31, r3, lit_3647@l
/* 80BF0FE0  A8 1E 05 80 */	lha r0, 0x580(r30)
/* 80BF0FE4  2C 00 00 00 */	cmpwi r0, 0
/* 80BF0FE8  40 82 00 E0 */	bne lbl_80BF10C8
/* 80BF0FEC  38 7E 08 1C */	addi r3, r30, 0x81c
/* 80BF0FF0  4B 49 34 70 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BF0FF4  28 03 00 00 */	cmplwi r3, 0
/* 80BF0FF8  40 82 00 14 */	bne lbl_80BF100C
/* 80BF0FFC  38 7E 08 1C */	addi r3, r30, 0x81c
/* 80BF1000  4B 49 36 58 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80BF1004  28 03 00 00 */	cmplwi r3, 0
/* 80BF1008  41 82 00 C0 */	beq lbl_80BF10C8
lbl_80BF100C:
/* 80BF100C  38 7E 08 1C */	addi r3, r30, 0x81c
/* 80BF1010  4B 49 34 50 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BF1014  28 03 00 00 */	cmplwi r3, 0
/* 80BF1018  41 82 00 10 */	beq lbl_80BF1028
/* 80BF101C  38 7E 08 1C */	addi r3, r30, 0x81c
/* 80BF1020  4B 49 34 D8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80BF1024  48 00 00 0C */	b lbl_80BF1030
lbl_80BF1028:
/* 80BF1028  38 7E 08 1C */	addi r3, r30, 0x81c
/* 80BF102C  4B 49 36 C4 */	b GetCoHitObj__12dCcD_GObjInfFv
lbl_80BF1030:
/* 80BF1030  4B 67 2A 18 */	b GetAc__8cCcD_ObjFv
/* 80BF1034  7C 7C 1B 78 */	mr r28, r3
/* 80BF1038  38 61 00 08 */	addi r3, r1, 8
/* 80BF103C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BF1040  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80BF1044  4B 67 5A F0 */	b __mi__4cXyzCFRC3Vec
/* 80BF1048  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BF104C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BF1050  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BF1054  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BF1058  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BF105C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BF1060  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80BF1064  4B 67 69 28 */	b cM_rndFX__Ff
/* 80BF1068  FC 00 08 1E */	fctiwz f0, f1
/* 80BF106C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BF1070  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80BF1074  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80BF1078  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80BF107C  4B 67 65 F8 */	b cM_atan2s__Fff
/* 80BF1080  7C 03 EA 14 */	add r0, r3, r29
/* 80BF1084  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80BF1088  38 00 00 0A */	li r0, 0xa
/* 80BF108C  B0 1E 05 80 */	sth r0, 0x580(r30)
/* 80BF1090  A8 1C 05 60 */	lha r0, 0x560(r28)
/* 80BF1094  2C 00 00 23 */	cmpwi r0, 0x23
/* 80BF1098  40 82 00 1C */	bne lbl_80BF10B4
/* 80BF109C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BF10A0  4B 67 68 B4 */	b cM_rndF__Ff
/* 80BF10A4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BF10A8  EC 00 08 2A */	fadds f0, f0, f1
/* 80BF10AC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BF10B0  48 00 00 18 */	b lbl_80BF10C8
lbl_80BF10B4:
/* 80BF10B4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80BF10B8  4B 67 68 9C */	b cM_rndF__Ff
/* 80BF10BC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80BF10C0  EC 00 08 2A */	fadds f0, f0, f1
/* 80BF10C4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80BF10C8:
/* 80BF10C8  80 1E 06 34 */	lwz r0, 0x634(r30)
/* 80BF10CC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80BF10D0  41 82 00 64 */	beq lbl_80BF1134
/* 80BF10D4  A8 1E 05 82 */	lha r0, 0x582(r30)
/* 80BF10D8  2C 00 00 00 */	cmpwi r0, 0
/* 80BF10DC  40 82 00 58 */	bne lbl_80BF1134
/* 80BF10E0  38 00 00 0A */	li r0, 0xa
/* 80BF10E4  B0 1E 05 82 */	sth r0, 0x582(r30)
/* 80BF10E8  7F C3 F3 78 */	mr r3, r30
/* 80BF10EC  4B FF F9 E5 */	bl wall_angle_get__FP14obj_food_class
/* 80BF10F0  7C 60 07 34 */	extsh r0, r3
/* 80BF10F4  2C 00 00 23 */	cmpwi r0, 0x23
/* 80BF10F8  41 82 00 3C */	beq lbl_80BF1134
/* 80BF10FC  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80BF1100  7C 03 28 50 */	subf r0, r3, r5
/* 80BF1104  7C 00 07 34 */	extsh r0, r0
/* 80BF1108  54 04 08 3C */	slwi r4, r0, 1
/* 80BF110C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80BF1110  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80BF1114  7C 04 00 50 */	subf r0, r4, r0
/* 80BF1118  7C 00 07 34 */	extsh r0, r0
/* 80BF111C  7C 05 02 14 */	add r0, r5, r0
/* 80BF1120  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80BF1124  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80BF1128  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BF112C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF1130  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80BF1134:
/* 80BF1134  80 1E 06 34 */	lwz r0, 0x634(r30)
/* 80BF1138  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BF113C  41 82 00 14 */	beq lbl_80BF1150
/* 80BF1140  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80BF1144  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BF1148  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80BF114C  4B 67 E9 34 */	b cLib_addCalc0__FPfff
lbl_80BF1150:
/* 80BF1150  39 61 00 40 */	addi r11, r1, 0x40
/* 80BF1154  4B 77 10 D0 */	b _restgpr_28
/* 80BF1158  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BF115C  7C 08 03 A6 */	mtlr r0
/* 80BF1160  38 21 00 40 */	addi r1, r1, 0x40
/* 80BF1164  4E 80 00 20 */	blr 
