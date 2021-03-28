lbl_80D5F050:
/* 80D5F050  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D5F054  7C 08 02 A6 */	mflr r0
/* 80D5F058  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D5F05C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D5F060  7C 7F 1B 78 */	mr r31, r3
/* 80D5F064  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5F068  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5F06C  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D5F070  28 04 00 00 */	cmplwi r4, 0
/* 80D5F074  40 82 00 0C */	bne lbl_80D5F080
/* 80D5F078  38 60 00 00 */	li r3, 0
/* 80D5F07C  48 00 00 BC */	b lbl_80D5F138
lbl_80D5F080:
/* 80D5F080  38 61 00 08 */	addi r3, r1, 8
/* 80D5F084  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D5F088  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D5F08C  4B 50 7A A8 */	b __mi__4cXyzCFRC3Vec
/* 80D5F090  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D5F094  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D5F098  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D5F09C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D5F0A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D5F0A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D5F0A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D5F0AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D5F0B0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D5F0B4  7C 00 00 D0 */	neg r0, r0
/* 80D5F0B8  7C 04 07 34 */	extsh r4, r0
/* 80D5F0BC  4B 2A D3 20 */	b mDoMtx_YrotS__FPA4_fs
/* 80D5F0C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D5F0C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D5F0C8  38 81 00 14 */	addi r4, r1, 0x14
/* 80D5F0CC  7C 85 23 78 */	mr r5, r4
/* 80D5F0D0  4B 5E 7C 9C */	b PSMTXMultVec
/* 80D5F0D4  3C 60 80 D6 */	lis r3, lit_3718@ha
/* 80D5F0D8  C0 03 F2 10 */	lfs f0, lit_3718@l(r3)
/* 80D5F0DC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80D5F0E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5F0E4  40 80 00 50 */	bge lbl_80D5F134
/* 80D5F0E8  C0 1F 05 70 */	lfs f0, 0x570(r31)
/* 80D5F0EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5F0F0  40 81 00 44 */	ble lbl_80D5F134
/* 80D5F0F4  C0 1F 05 6C */	lfs f0, 0x56c(r31)
/* 80D5F0F8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80D5F0FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5F100  40 81 00 34 */	ble lbl_80D5F134
/* 80D5F104  C0 7F 05 74 */	lfs f3, 0x574(r31)
/* 80D5F108  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80D5F10C  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80D5F110  40 81 00 24 */	ble lbl_80D5F134
/* 80D5F114  FC 00 00 50 */	fneg f0, f0
/* 80D5F118  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5F11C  40 80 00 18 */	bge lbl_80D5F134
/* 80D5F120  FC 00 18 50 */	fneg f0, f3
/* 80D5F124  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80D5F128  40 80 00 0C */	bge lbl_80D5F134
/* 80D5F12C  38 60 00 01 */	li r3, 1
/* 80D5F130  48 00 00 08 */	b lbl_80D5F138
lbl_80D5F134:
/* 80D5F134  38 60 00 00 */	li r3, 0
lbl_80D5F138:
/* 80D5F138  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D5F13C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D5F140  7C 08 03 A6 */	mtlr r0
/* 80D5F144  38 21 00 30 */	addi r1, r1, 0x30
/* 80D5F148  4E 80 00 20 */	blr 
