lbl_807F8DD8:
/* 807F8DD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F8DDC  7C 08 02 A6 */	mflr r0
/* 807F8DE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F8DE4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 807F8DE8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 807F8DEC  39 61 00 30 */	addi r11, r1, 0x30
/* 807F8DF0  4B B6 93 ED */	bl _savegpr_29
/* 807F8DF4  7C 7E 1B 78 */	mr r30, r3
/* 807F8DF8  3C 80 80 80 */	lis r4, lit_3801@ha /* 0x807FCCB4@ha */
/* 807F8DFC  3B E4 CC B4 */	addi r31, r4, lit_3801@l /* 0x807FCCB4@l */
/* 807F8E00  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807F8E04  3B A0 00 01 */	li r29, 1
/* 807F8E08  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807F8E0C  2C 00 00 02 */	cmpwi r0, 2
/* 807F8E10  41 82 01 48 */	beq lbl_807F8F58
/* 807F8E14  40 80 00 14 */	bge lbl_807F8E28
/* 807F8E18  2C 00 00 00 */	cmpwi r0, 0
/* 807F8E1C  41 82 00 24 */	beq lbl_807F8E40
/* 807F8E20  40 80 00 80 */	bge lbl_807F8EA0
/* 807F8E24  48 00 02 64 */	b lbl_807F9088
lbl_807F8E28:
/* 807F8E28  2C 00 00 06 */	cmpwi r0, 6
/* 807F8E2C  41 82 01 BC */	beq lbl_807F8FE8
/* 807F8E30  40 80 02 58 */	bge lbl_807F9088
/* 807F8E34  2C 00 00 05 */	cmpwi r0, 5
/* 807F8E38  40 80 01 50 */	bge lbl_807F8F88
/* 807F8E3C  48 00 02 4C */	b lbl_807F9088
lbl_807F8E40:
/* 807F8E40  38 80 00 0D */	li r4, 0xd
/* 807F8E44  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F8E48  38 A0 00 02 */	li r5, 2
/* 807F8E4C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F8E50  4B FF F5 45 */	bl anm_init__FP10e_yg_classifUcf
/* 807F8E54  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807F8E58  4B A6 EA FD */	bl cM_rndF__Ff
/* 807F8E5C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807F8E60  EC 00 08 2A */	fadds f0, f0, f1
/* 807F8E64  FC 00 00 1E */	fctiwz f0, f0
/* 807F8E68  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807F8E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F8E70  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807F8E74  38 00 00 01 */	li r0, 1
/* 807F8E78  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807F8E7C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 807F8E80  4B A6 EA D5 */	bl cM_rndF__Ff
/* 807F8E84  FC 00 08 1E */	fctiwz f0, f1
/* 807F8E88  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807F8E8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807F8E90  B0 1E 06 7C */	sth r0, 0x67c(r30)
/* 807F8E94  38 00 00 14 */	li r0, 0x14
/* 807F8E98  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807F8E9C  48 00 01 EC */	b lbl_807F9088
lbl_807F8EA0:
/* 807F8EA0  3C 60 80 80 */	lis r3, l_HIO@ha /* 0x807FD06C@ha */
/* 807F8EA4  38 63 D0 6C */	addi r3, r3, l_HIO@l /* 0x807FD06C@l */
/* 807F8EA8  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 807F8EAC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807F8EB0  38 63 00 0C */	addi r3, r3, 0xc
/* 807F8EB4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F8EB8  4B B2 F5 75 */	bl checkPass__12J3DFrameCtrlFf
/* 807F8EBC  2C 03 00 00 */	cmpwi r3, 0
/* 807F8EC0  41 82 00 24 */	beq lbl_807F8EE4
/* 807F8EC4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 807F8EC8  4B A6 EA C5 */	bl cM_rndFX__Ff
/* 807F8ECC  FC 00 08 1E */	fctiwz f0, f1
/* 807F8ED0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807F8ED4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 807F8ED8  A8 1E 05 C8 */	lha r0, 0x5c8(r30)
/* 807F8EDC  7C 00 1A 14 */	add r0, r0, r3
/* 807F8EE0  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
lbl_807F8EE4:
/* 807F8EE4  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 807F8EE8  2C 00 00 00 */	cmpwi r0, 0
/* 807F8EEC  41 82 00 28 */	beq lbl_807F8F14
/* 807F8EF0  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 807F8EF4  2C 00 00 00 */	cmpwi r0, 0
/* 807F8EF8  40 82 01 90 */	bne lbl_807F9088
/* 807F8EFC  7F C3 F3 78 */	mr r3, r30
/* 807F8F00  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807F8F04  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 807F8F08  4B 82 3F C9 */	bl fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 807F8F0C  2C 03 00 00 */	cmpwi r3, 0
/* 807F8F10  41 82 01 78 */	beq lbl_807F9088
lbl_807F8F14:
/* 807F8F14  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807F8F18  4B A6 EA 3D */	bl cM_rndF__Ff
/* 807F8F1C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807F8F20  EC 00 08 2A */	fadds f0, f0, f1
/* 807F8F24  FC 00 00 1E */	fctiwz f0, f0
/* 807F8F28  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807F8F2C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807F8F30  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807F8F34  38 00 00 02 */	li r0, 2
/* 807F8F38  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807F8F3C  7F C3 F3 78 */	mr r3, r30
/* 807F8F40  38 80 00 0F */	li r4, 0xf
/* 807F8F44  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F8F48  38 A0 00 02 */	li r5, 2
/* 807F8F4C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F8F50  4B FF F4 45 */	bl anm_init__FP10e_yg_classifUcf
/* 807F8F54  48 00 01 34 */	b lbl_807F9088
lbl_807F8F58:
/* 807F8F58  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 807F8F5C  2C 00 00 00 */	cmpwi r0, 0
/* 807F8F60  40 82 01 28 */	bne lbl_807F9088
/* 807F8F64  4B FF FC FD */	bl way_set__FP10e_yg_class
/* 807F8F68  2C 03 00 00 */	cmpwi r3, 0
/* 807F8F6C  41 82 00 10 */	beq lbl_807F8F7C
/* 807F8F70  38 00 00 00 */	li r0, 0
/* 807F8F74  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807F8F78  48 00 01 10 */	b lbl_807F9088
lbl_807F8F7C:
/* 807F8F7C  38 00 00 0A */	li r0, 0xa
/* 807F8F80  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807F8F84  48 00 01 04 */	b lbl_807F9088
lbl_807F8F88:
/* 807F8F88  3B A0 00 00 */	li r29, 0
/* 807F8F8C  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 807F8F90  2C 00 00 00 */	cmpwi r0, 0
/* 807F8F94  40 82 00 F4 */	bne lbl_807F9088
/* 807F8F98  38 80 00 0D */	li r4, 0xd
/* 807F8F9C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807F8FA0  38 A0 00 02 */	li r5, 2
/* 807F8FA4  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 807F8FA8  4B FF F3 ED */	bl anm_init__FP10e_yg_classifUcf
/* 807F8FAC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807F8FB0  4B A6 E9 A5 */	bl cM_rndF__Ff
/* 807F8FB4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807F8FB8  EC 00 08 2A */	fadds f0, f0, f1
/* 807F8FBC  FC 00 00 1E */	fctiwz f0, f0
/* 807F8FC0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807F8FC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807F8FC8  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807F8FCC  38 00 00 06 */	li r0, 6
/* 807F8FD0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807F8FD4  A8 7E 06 84 */	lha r3, 0x684(r30)
/* 807F8FD8  3C 63 00 01 */	addis r3, r3, 1
/* 807F8FDC  38 03 80 00 */	addi r0, r3, -32768
/* 807F8FE0  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
/* 807F8FE4  48 00 00 A4 */	b lbl_807F9088
lbl_807F8FE8:
/* 807F8FE8  3B A0 00 00 */	li r29, 0
/* 807F8FEC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 807F8FF0  3C 60 80 80 */	lis r3, l_HIO@ha /* 0x807FD06C@ha */
/* 807F8FF4  38 63 D0 6C */	addi r3, r3, l_HIO@l /* 0x807FD06C@l */
/* 807F8FF8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807F8FFC  EF E1 00 32 */	fmuls f31, f1, f0
/* 807F9000  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807F9004  38 63 00 0C */	addi r3, r3, 0xc
/* 807F9008  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F900C  4B B2 F4 21 */	bl checkPass__12J3DFrameCtrlFf
/* 807F9010  2C 03 00 00 */	cmpwi r3, 0
/* 807F9014  41 82 00 24 */	beq lbl_807F9038
/* 807F9018  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 807F901C  4B A6 E9 71 */	bl cM_rndFX__Ff
/* 807F9020  FC 00 08 1E */	fctiwz f0, f1
/* 807F9024  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807F9028  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 807F902C  A8 1E 05 C8 */	lha r0, 0x5c8(r30)
/* 807F9030  7C 00 1A 14 */	add r0, r0, r3
/* 807F9034  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
lbl_807F9038:
/* 807F9038  A8 1E 06 8A */	lha r0, 0x68a(r30)
/* 807F903C  2C 00 00 00 */	cmpwi r0, 0
/* 807F9040  40 82 00 34 */	bne lbl_807F9074
/* 807F9044  7F C3 F3 78 */	mr r3, r30
/* 807F9048  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 807F904C  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 807F9050  4B 82 3E 81 */	bl fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 807F9054  2C 03 00 00 */	cmpwi r3, 0
/* 807F9058  41 82 00 1C */	beq lbl_807F9074
/* 807F905C  38 00 00 14 */	li r0, 0x14
/* 807F9060  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807F9064  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 807F9068  3C 63 00 01 */	addis r3, r3, 1
/* 807F906C  38 03 80 00 */	addi r0, r3, -32768
/* 807F9070  B0 1E 05 C8 */	sth r0, 0x5c8(r30)
lbl_807F9074:
/* 807F9074  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 807F9078  2C 00 00 00 */	cmpwi r0, 0
/* 807F907C  40 82 00 0C */	bne lbl_807F9088
/* 807F9080  38 00 00 00 */	li r0, 0
/* 807F9084  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807F9088:
/* 807F9088  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 807F908C  90 01 00 08 */	stw r0, 8(r1)
/* 807F9090  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807F9094  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807F9098  38 81 00 08 */	addi r4, r1, 8
/* 807F909C  4B 82 07 5D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807F90A0  28 03 00 00 */	cmplwi r3, 0
/* 807F90A4  40 82 00 1C */	bne lbl_807F90C0
/* 807F90A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F90AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F90B0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 807F90B4  28 00 00 00 */	cmplwi r0, 0
/* 807F90B8  41 82 00 08 */	beq lbl_807F90C0
/* 807F90BC  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_807F90C0:
/* 807F90C0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807F90C4  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 807F90C8  38 A0 00 02 */	li r5, 2
/* 807F90CC  38 C0 10 00 */	li r6, 0x1000
/* 807F90D0  4B A7 75 39 */	bl cLib_addCalcAngleS2__FPssss
/* 807F90D4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807F90D8  FC 20 F8 90 */	fmr f1, f31
/* 807F90DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807F90E0  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 807F90E4  3C 80 80 80 */	lis r4, l_HIO@ha /* 0x807FD06C@ha */
/* 807F90E8  38 84 D0 6C */	addi r4, r4, l_HIO@l /* 0x807FD06C@l */
/* 807F90EC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 807F90F0  EC 63 00 32 */	fmuls f3, f3, f0
/* 807F90F4  4B A7 69 49 */	bl cLib_addCalc2__FPffff
/* 807F90F8  88 1E 0B A6 */	lbz r0, 0xba6(r30)
/* 807F90FC  7C 00 07 75 */	extsb. r0, r0
/* 807F9100  40 82 00 20 */	bne lbl_807F9120
/* 807F9104  7F A0 07 75 */	extsb. r0, r29
/* 807F9108  41 82 00 28 */	beq lbl_807F9130
/* 807F910C  7F C3 F3 78 */	mr r3, r30
/* 807F9110  C0 3E 0B AC */	lfs f1, 0xbac(r30)
/* 807F9114  4B FF F3 2D */	bl pl_check__FP10e_yg_classf
/* 807F9118  2C 03 00 00 */	cmpwi r3, 0
/* 807F911C  41 82 00 14 */	beq lbl_807F9130
lbl_807F9120:
/* 807F9120  38 00 00 01 */	li r0, 1
/* 807F9124  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807F9128  38 00 00 00 */	li r0, 0
/* 807F912C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807F9130:
/* 807F9130  7F A3 EB 78 */	mr r3, r29
/* 807F9134  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 807F9138  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 807F913C  39 61 00 30 */	addi r11, r1, 0x30
/* 807F9140  4B B6 90 E9 */	bl _restgpr_29
/* 807F9144  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F9148  7C 08 03 A6 */	mtlr r0
/* 807F914C  38 21 00 40 */	addi r1, r1, 0x40
/* 807F9150  4E 80 00 20 */	blr 
