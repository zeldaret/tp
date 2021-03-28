lbl_80019F78:
/* 80019F78  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80019F7C  7C 08 02 A6 */	mflr r0
/* 80019F80  90 01 00 64 */	stw r0, 0x64(r1)
/* 80019F84  39 61 00 60 */	addi r11, r1, 0x60
/* 80019F88  48 34 82 3D */	bl _savegpr_23
/* 80019F8C  7C 79 1B 78 */	mr r25, r3
/* 80019F90  7C 9A 23 78 */	mr r26, r4
/* 80019F94  7C BB 2B 78 */	mr r27, r5
/* 80019F98  7C D7 33 78 */	mr r23, r6
/* 80019F9C  7C FC 3B 78 */	mr r28, r7
/* 80019FA0  7D 18 43 78 */	mr r24, r8
/* 80019FA4  7D 3D 4B 78 */	mr r29, r9
/* 80019FA8  7D 5E 53 78 */	mr r30, r10
/* 80019FAC  83 E1 00 68 */	lwz r31, 0x68(r1)
/* 80019FB0  93 41 00 08 */	stw r26, 8(r1)
/* 80019FB4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80019FB8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80019FBC  38 81 00 08 */	addi r4, r1, 8
/* 80019FC0  4B FF F8 39 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80019FC4  A8 A3 04 DE */	lha r5, 0x4de(r3)
/* 80019FC8  28 17 00 00 */	cmplwi r23, 0
/* 80019FCC  40 82 00 24 */	bne lbl_80019FF0
/* 80019FD0  3C 80 80 43 */	lis r4, Zero__4cXyz@ha
/* 80019FD4  C4 04 0C F4 */	lfsu f0, Zero__4cXyz@l(r4)
/* 80019FD8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80019FDC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80019FE0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80019FE4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80019FE8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80019FEC  48 00 00 1C */	b lbl_8001A008
lbl_80019FF0:
/* 80019FF0  C0 17 00 00 */	lfs f0, 0(r23)
/* 80019FF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80019FF8  C0 17 00 04 */	lfs f0, 4(r23)
/* 80019FFC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8001A000  C0 17 00 08 */	lfs f0, 8(r23)
/* 8001A004  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_8001A008:
/* 8001A008  28 18 00 00 */	cmplwi r24, 0
/* 8001A00C  40 82 00 24 */	bne lbl_8001A030
/* 8001A010  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 8001A014  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8001A018  38 8D 8B E0 */	la r4, Zero__5csXyz(r13) /* 80451160-_SDA_BASE_ */
/* 8001A01C  A8 04 00 02 */	lha r0, 2(r4)
/* 8001A020  B0 01 00 16 */	sth r0, 0x16(r1)
/* 8001A024  A8 04 00 04 */	lha r0, 4(r4)
/* 8001A028  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8001A02C  48 00 00 1C */	b lbl_8001A048
lbl_8001A030:
/* 8001A030  A8 18 00 00 */	lha r0, 0(r24)
/* 8001A034  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8001A038  A8 18 00 02 */	lha r0, 2(r24)
/* 8001A03C  B0 01 00 16 */	sth r0, 0x16(r1)
/* 8001A040  A8 18 00 04 */	lha r0, 4(r24)
/* 8001A044  B0 01 00 18 */	sth r0, 0x18(r1)
lbl_8001A048:
/* 8001A048  C0 83 04 D0 */	lfs f4, 0x4d0(r3)
/* 8001A04C  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8001A050  C0 63 04 D4 */	lfs f3, 0x4d4(r3)
/* 8001A054  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8001A058  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8001A05C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8001A060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A064  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001A068  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 8001A06C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8001A070  A8 01 00 0E */	lha r0, 0xe(r1)
/* 8001A074  7C 00 2A 14 */	add r0, r0, r5
/* 8001A078  B0 01 00 0E */	sth r0, 0xe(r1)
/* 8001A07C  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 8001A080  C1 01 00 30 */	lfs f8, 0x30(r1)
/* 8001A084  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8001A088  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8001A08C  7C A3 04 2E */	lfsx f5, r3, r0
/* 8001A090  EC 28 01 72 */	fmuls f1, f8, f5
/* 8001A094  C0 C1 00 28 */	lfs f6, 0x28(r1)
/* 8001A098  7C 63 02 14 */	add r3, r3, r0
/* 8001A09C  C0 E3 00 04 */	lfs f7, 4(r3)
/* 8001A0A0  EC 06 01 F2 */	fmuls f0, f6, f7
/* 8001A0A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8001A0A8  EC 04 00 2A */	fadds f0, f4, f0
/* 8001A0AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8001A0B0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8001A0B4  EC 03 00 2A */	fadds f0, f3, f0
/* 8001A0B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8001A0BC  EC 28 01 F2 */	fmuls f1, f8, f7
/* 8001A0C0  EC 06 01 72 */	fmuls f0, f6, f5
/* 8001A0C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8001A0C8  EC 02 00 2A */	fadds f0, f2, f0
/* 8001A0CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8001A0D0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8001A0D4  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8001A0D8  7F 64 DB 78 */	mr r4, r27
/* 8001A0DC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8001A0E0  7F 86 E3 78 */	mr r6, r28
/* 8001A0E4  38 E1 00 0C */	addi r7, r1, 0xc
/* 8001A0E8  7F A8 EB 78 */	mr r8, r29
/* 8001A0EC  7F C9 F3 78 */	mr r9, r30
/* 8001A0F0  7F 4A D3 78 */	mr r10, r26
/* 8001A0F4  4B FF FA 29 */	bl createAppend__FUsUlPC4cXyziPC5csXyzPC4cXyzScUi
/* 8001A0F8  7C 7A 1B 79 */	or. r26, r3, r3
/* 8001A0FC  40 82 00 0C */	bne lbl_8001A108
/* 8001A100  38 60 FF FF */	li r3, -1
/* 8001A104  48 00 00 1C */	b lbl_8001A120
lbl_8001A108:
/* 8001A108  48 00 75 ED */	bl fpcLy_CurrentLayer__Fv
/* 8001A10C  7F 24 CB 78 */	mr r4, r25
/* 8001A110  7F E5 FB 78 */	mr r5, r31
/* 8001A114  38 C0 00 00 */	li r6, 0
/* 8001A118  7F 47 D3 78 */	mr r7, r26
/* 8001A11C  48 00 9C 79 */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
lbl_8001A120:
/* 8001A120  39 61 00 60 */	addi r11, r1, 0x60
/* 8001A124  48 34 80 ED */	bl _restgpr_23
/* 8001A128  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8001A12C  7C 08 03 A6 */	mtlr r0
/* 8001A130  38 21 00 60 */	addi r1, r1, 0x60
/* 8001A134  4E 80 00 20 */	blr 
