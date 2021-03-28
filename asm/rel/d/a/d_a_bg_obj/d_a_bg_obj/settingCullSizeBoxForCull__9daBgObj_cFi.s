lbl_80459F14:
/* 80459F14  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80459F18  7C 08 02 A6 */	mflr r0
/* 80459F1C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80459F20  39 61 00 90 */	addi r11, r1, 0x90
/* 80459F24  4B F0 82 A0 */	b _savegpr_23
/* 80459F28  7C 7B 1B 78 */	mr r27, r3
/* 80459F2C  3C 60 80 46 */	lis r3, l_cyl_src@ha
/* 80459F30  3B E3 C9 B8 */	addi r31, r3, l_cyl_src@l
/* 80459F34  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80459F38  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80459F3C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80459F40  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80459F44  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80459F48  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80459F4C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80459F50  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80459F54  3B A0 00 00 */	li r29, 0
/* 80459F58  3B 40 00 00 */	li r26, 0
/* 80459F5C  54 80 18 38 */	slwi r0, r4, 3
/* 80459F60  7F DB 02 14 */	add r30, r27, r0
lbl_80459F64:
/* 80459F64  38 1A 05 A8 */	addi r0, r26, 0x5a8
/* 80459F68  7C 7E 00 2E */	lwzx r3, r30, r0
/* 80459F6C  28 03 00 00 */	cmplwi r3, 0
/* 80459F70  41 82 01 04 */	beq lbl_8045A074
/* 80459F74  83 03 00 04 */	lwz r24, 4(r3)
/* 80459F78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80459F7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80459F80  4B EE C5 04 */	b PSMTXIdentity
/* 80459F84  3A E0 00 00 */	li r23, 0
/* 80459F88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80459F8C  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l
/* 80459F90  48 00 00 34 */	b lbl_80459FC4
lbl_80459F94:
/* 80459F94  80 78 00 28 */	lwz r3, 0x28(r24)
/* 80459F98  56 E0 13 BA */	rlwinm r0, r23, 2, 0xe, 0x1d
/* 80459F9C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80459FA0  7C 7C 1B 78 */	mr r28, r3
/* 80459FA4  38 63 00 18 */	addi r3, r3, 0x18
/* 80459FA8  38 81 00 38 */	addi r4, r1, 0x38
/* 80459FAC  4B EB 79 B8 */	b J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
/* 80459FB0  7F 23 CB 78 */	mr r3, r25
/* 80459FB4  38 81 00 38 */	addi r4, r1, 0x38
/* 80459FB8  7F 25 CB 78 */	mr r5, r25
/* 80459FBC  4B EE C5 28 */	b PSMTXConcat
/* 80459FC0  3A F7 00 01 */	addi r23, r23, 1
lbl_80459FC4:
/* 80459FC4  56 E3 04 3E */	clrlwi r3, r23, 0x10
/* 80459FC8  A0 18 00 2C */	lhz r0, 0x2c(r24)
/* 80459FCC  7C 03 00 40 */	cmplw r3, r0
/* 80459FD0  41 80 FF C4 */	blt lbl_80459F94
/* 80459FD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80459FD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80459FDC  38 9C 00 3C */	addi r4, r28, 0x3c
/* 80459FE0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80459FE4  4B EE CD 88 */	b PSMTXMultVec
/* 80459FE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80459FEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80459FF0  38 9C 00 48 */	addi r4, r28, 0x48
/* 80459FF4  38 A1 00 08 */	addi r5, r1, 8
/* 80459FF8  4B EE CD 74 */	b PSMTXMultVec
/* 80459FFC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8045A000  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8045A004  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045A008  40 81 00 08 */	ble lbl_8045A010
/* 8045A00C  D0 21 00 2C */	stfs f1, 0x2c(r1)
lbl_8045A010:
/* 8045A010  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8045A014  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8045A018  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045A01C  40 81 00 08 */	ble lbl_8045A024
/* 8045A020  D0 21 00 30 */	stfs f1, 0x30(r1)
lbl_8045A024:
/* 8045A024  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8045A028  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8045A02C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045A030  40 81 00 08 */	ble lbl_8045A038
/* 8045A034  D0 21 00 34 */	stfs f1, 0x34(r1)
lbl_8045A038:
/* 8045A038  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8045A03C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8045A040  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045A044  40 80 00 08 */	bge lbl_8045A04C
/* 8045A048  D0 21 00 20 */	stfs f1, 0x20(r1)
lbl_8045A04C:
/* 8045A04C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8045A050  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8045A054  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045A058  40 80 00 08 */	bge lbl_8045A060
/* 8045A05C  D0 21 00 24 */	stfs f1, 0x24(r1)
lbl_8045A060:
/* 8045A060  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8045A064  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8045A068  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8045A06C  40 80 00 08 */	bge lbl_8045A074
/* 8045A070  D0 21 00 28 */	stfs f1, 0x28(r1)
lbl_8045A074:
/* 8045A074  3B BD 00 01 */	addi r29, r29, 1
/* 8045A078  2C 1D 00 02 */	cmpwi r29, 2
/* 8045A07C  3B 5A 00 04 */	addi r26, r26, 4
/* 8045A080  41 80 FE E4 */	blt lbl_80459F64
/* 8045A084  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8045A088  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8045A08C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8045A090  41 82 00 24 */	beq lbl_8045A0B4
/* 8045A094  7F 63 DB 78 */	mr r3, r27
/* 8045A098  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8045A09C  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 8045A0A0  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 8045A0A4  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 8045A0A8  C0 C1 00 28 */	lfs f6, 0x28(r1)
/* 8045A0AC  4B BC 04 9C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8045A0B0  48 00 00 24 */	b lbl_8045A0D4
lbl_8045A0B4:
/* 8045A0B4  7F 63 DB 78 */	mr r3, r27
/* 8045A0B8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8045A0BC  FC 40 08 90 */	fmr f2, f1
/* 8045A0C0  FC 60 08 90 */	fmr f3, f1
/* 8045A0C4  FC 80 08 90 */	fmr f4, f1
/* 8045A0C8  FC A0 08 90 */	fmr f5, f1
/* 8045A0CC  FC C0 08 90 */	fmr f6, f1
/* 8045A0D0  4B BC 04 78 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
lbl_8045A0D4:
/* 8045A0D4  39 61 00 90 */	addi r11, r1, 0x90
/* 8045A0D8  4B F0 81 38 */	b _restgpr_23
/* 8045A0DC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8045A0E0  7C 08 03 A6 */	mtlr r0
/* 8045A0E4  38 21 00 90 */	addi r1, r1, 0x90
/* 8045A0E8  4E 80 00 20 */	blr 
