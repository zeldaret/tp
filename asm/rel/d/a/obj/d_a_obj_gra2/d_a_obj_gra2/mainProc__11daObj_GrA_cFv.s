lbl_80C01D7C:
/* 80C01D7C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C01D80  7C 08 02 A6 */	mflr r0
/* 80C01D84  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C01D88  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C01D8C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C01D90  39 61 00 40 */	addi r11, r1, 0x40
/* 80C01D94  4B 76 04 48 */	b _savegpr_29
/* 80C01D98  7C 7E 1B 78 */	mr r30, r3
/* 80C01D9C  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha
/* 80C01DA0  3B E4 FA 7C */	addi r31, r4, m__17daObj_GrA_Param_c@l
/* 80C01DA4  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 80C01DA8  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 80C01DAC  FC 60 08 90 */	fmr f3, f1
/* 80C01DB0  C0 9F 01 44 */	lfs f4, 0x144(r31)
/* 80C01DB4  C0 BF 01 48 */	lfs f5, 0x148(r31)
/* 80C01DB8  FC C0 20 90 */	fmr f6, f4
/* 80C01DBC  4B 41 87 8C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C01DC0  7F C3 F3 78 */	mr r3, r30
/* 80C01DC4  4B FF FE 55 */	bl checkEvent__11daObj_GrA_cFv
/* 80C01DC8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C01DCC  41 82 01 D0 */	beq lbl_80C01F9C
/* 80C01DD0  7F C3 F3 78 */	mr r3, r30
/* 80C01DD4  48 00 12 B9 */	bl hitChk__11daObj_GrA_cFv
/* 80C01DD8  38 7E 0A 50 */	addi r3, r30, 0xa50
/* 80C01DDC  4B 76 02 3C */	b __ptmf_test
/* 80C01DE0  2C 03 00 00 */	cmpwi r3, 0
/* 80C01DE4  41 82 01 90 */	beq lbl_80C01F74
/* 80C01DE8  7F C3 F3 78 */	mr r3, r30
/* 80C01DEC  38 80 00 00 */	li r4, 0
/* 80C01DF0  39 9E 0A 50 */	addi r12, r30, 0xa50
/* 80C01DF4  4B 76 02 90 */	b __ptmf_scall
/* 80C01DF8  60 00 00 00 */	nop 
/* 80C01DFC  88 1E 0A 7E */	lbz r0, 0xa7e(r30)
/* 80C01E00  28 00 00 00 */	cmplwi r0, 0
/* 80C01E04  40 82 01 70 */	bne lbl_80C01F74
/* 80C01E08  38 61 00 18 */	addi r3, r1, 0x18
/* 80C01E0C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80C01E10  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C01E14  4B 66 4D 20 */	b __mi__4cXyzCFRC3Vec
/* 80C01E18  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C01E1C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C01E20  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C01E24  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C01E28  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C01E2C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C01E30  38 61 00 0C */	addi r3, r1, 0xc
/* 80C01E34  4B 74 53 04 */	b PSVECSquareMag
/* 80C01E38  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C01E3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C01E40  40 81 00 58 */	ble lbl_80C01E98
/* 80C01E44  FC 00 08 34 */	frsqrte f0, f1
/* 80C01E48  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 80C01E4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C01E50  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 80C01E54  FC 00 00 32 */	fmul f0, f0, f0
/* 80C01E58  FC 01 00 32 */	fmul f0, f1, f0
/* 80C01E5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C01E60  FC 02 00 32 */	fmul f0, f2, f0
/* 80C01E64  FC 44 00 32 */	fmul f2, f4, f0
/* 80C01E68  FC 00 00 32 */	fmul f0, f0, f0
/* 80C01E6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C01E70  FC 03 00 28 */	fsub f0, f3, f0
/* 80C01E74  FC 02 00 32 */	fmul f0, f2, f0
/* 80C01E78  FC 44 00 32 */	fmul f2, f4, f0
/* 80C01E7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C01E80  FC 01 00 32 */	fmul f0, f1, f0
/* 80C01E84  FC 03 00 28 */	fsub f0, f3, f0
/* 80C01E88  FC 02 00 32 */	fmul f0, f2, f0
/* 80C01E8C  FF E1 00 32 */	fmul f31, f1, f0
/* 80C01E90  FF E0 F8 18 */	frsp f31, f31
/* 80C01E94  48 00 00 90 */	b lbl_80C01F24
lbl_80C01E98:
/* 80C01E98  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 80C01E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C01EA0  40 80 00 10 */	bge lbl_80C01EB0
/* 80C01EA4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C01EA8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C01EAC  48 00 00 78 */	b lbl_80C01F24
lbl_80C01EB0:
/* 80C01EB0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C01EB4  80 81 00 08 */	lwz r4, 8(r1)
/* 80C01EB8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C01EBC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C01EC0  7C 03 00 00 */	cmpw r3, r0
/* 80C01EC4  41 82 00 14 */	beq lbl_80C01ED8
/* 80C01EC8  40 80 00 40 */	bge lbl_80C01F08
/* 80C01ECC  2C 03 00 00 */	cmpwi r3, 0
/* 80C01ED0  41 82 00 20 */	beq lbl_80C01EF0
/* 80C01ED4  48 00 00 34 */	b lbl_80C01F08
lbl_80C01ED8:
/* 80C01ED8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C01EDC  41 82 00 0C */	beq lbl_80C01EE8
/* 80C01EE0  38 00 00 01 */	li r0, 1
/* 80C01EE4  48 00 00 28 */	b lbl_80C01F0C
lbl_80C01EE8:
/* 80C01EE8  38 00 00 02 */	li r0, 2
/* 80C01EEC  48 00 00 20 */	b lbl_80C01F0C
lbl_80C01EF0:
/* 80C01EF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C01EF4  41 82 00 0C */	beq lbl_80C01F00
/* 80C01EF8  38 00 00 05 */	li r0, 5
/* 80C01EFC  48 00 00 10 */	b lbl_80C01F0C
lbl_80C01F00:
/* 80C01F00  38 00 00 03 */	li r0, 3
/* 80C01F04  48 00 00 08 */	b lbl_80C01F0C
lbl_80C01F08:
/* 80C01F08  38 00 00 04 */	li r0, 4
lbl_80C01F0C:
/* 80C01F0C  2C 00 00 01 */	cmpwi r0, 1
/* 80C01F10  40 82 00 10 */	bne lbl_80C01F20
/* 80C01F14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C01F18  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C01F1C  48 00 00 08 */	b lbl_80C01F24
lbl_80C01F20:
/* 80C01F20  FF E0 08 90 */	fmr f31, f1
lbl_80C01F24:
/* 80C01F24  7F C3 F3 78 */	mr r3, r30
/* 80C01F28  48 00 34 45 */	bl getSrchCircleR__11daObj_GrA_cFv
/* 80C01F2C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C01F30  7C 00 00 26 */	mfcr r0
/* 80C01F34  54 00 17 FF */	rlwinm. r0, r0, 2, 0x1f, 0x1f
/* 80C01F38  41 82 00 3C */	beq lbl_80C01F74
/* 80C01F3C  7F C3 F3 78 */	mr r3, r30
/* 80C01F40  48 00 34 2D */	bl getSrchCircleR__11daObj_GrA_cFv
/* 80C01F44  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C01F48  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C01F4C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C01F50  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C01F54  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 80C01F58  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C01F5C  4B 66 EC A8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C01F60  7C 65 1B 78 */	mr r5, r3
/* 80C01F64  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C01F68  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80C01F6C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80C01F70  4B 66 EE 50 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_80C01F74:
/* 80C01F74  2C 1D 00 00 */	cmpwi r29, 0
/* 80C01F78  41 82 00 24 */	beq lbl_80C01F9C
/* 80C01F7C  7F C3 F3 78 */	mr r3, r30
/* 80C01F80  80 9E 15 08 */	lwz r4, 0x1508(r30)
/* 80C01F84  80 1E 15 20 */	lwz r0, 0x1520(r30)
/* 80C01F88  54 00 10 3A */	slwi r0, r0, 2
/* 80C01F8C  3C A0 80 C1 */	lis r5, l_evtNameList@ha
/* 80C01F90  38 A5 00 4C */	addi r5, r5, l_evtNameList@l
/* 80C01F94  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C01F98  4B 54 D0 5C */	b orderEvent__11daBaseNpc_cFiPc
lbl_80C01F9C:
/* 80C01F9C  88 1E 0A 8C */	lbz r0, 0xa8c(r30)
/* 80C01FA0  28 00 00 00 */	cmplwi r0, 0
/* 80C01FA4  41 82 00 18 */	beq lbl_80C01FBC
/* 80C01FA8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C01FAC  D0 1E 0A 94 */	stfs f0, 0xa94(r30)
/* 80C01FB0  D0 1E 0A 98 */	stfs f0, 0xa98(r30)
/* 80C01FB4  38 00 00 00 */	li r0, 0
/* 80C01FB8  98 1E 0A 8C */	stb r0, 0xa8c(r30)
lbl_80C01FBC:
/* 80C01FBC  7F C3 F3 78 */	mr r3, r30
/* 80C01FC0  4B FF F8 31 */	bl calcMotion__11daObj_GrA_cFv
/* 80C01FC4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C01FC8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C01FCC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C01FD0  4B 76 02 58 */	b _restgpr_29
/* 80C01FD4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C01FD8  7C 08 03 A6 */	mtlr r0
/* 80C01FDC  38 21 00 50 */	addi r1, r1, 0x50
/* 80C01FE0  4E 80 00 20 */	blr 
