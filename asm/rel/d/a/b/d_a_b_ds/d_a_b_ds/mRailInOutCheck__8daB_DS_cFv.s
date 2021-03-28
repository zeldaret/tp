lbl_805D4054:
/* 805D4054  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D4058  7C 08 02 A6 */	mflr r0
/* 805D405C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D4060  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805D4064  7C 65 1B 78 */	mr r5, r3
/* 805D4068  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D406C  3B E3 CA 54 */	addi r31, r3, lit_3932@l
/* 805D4070  38 61 00 0C */	addi r3, r1, 0xc
/* 805D4074  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805D4078  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805D407C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805D4080  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 805D4084  38 A5 04 A8 */	addi r5, r5, 0x4a8
/* 805D4088  4B C9 2A AC */	b __mi__4cXyzCFRC3Vec
/* 805D408C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805D4090  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805D4094  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805D4098  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805D409C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805D40A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805D40A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D40A8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805D40AC  38 61 00 18 */	addi r3, r1, 0x18
/* 805D40B0  4B D7 30 88 */	b PSVECSquareMag
/* 805D40B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D40B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D40BC  40 81 00 58 */	ble lbl_805D4114
/* 805D40C0  FC 00 08 34 */	frsqrte f0, f1
/* 805D40C4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805D40C8  FC 44 00 32 */	fmul f2, f4, f0
/* 805D40CC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805D40D0  FC 00 00 32 */	fmul f0, f0, f0
/* 805D40D4  FC 01 00 32 */	fmul f0, f1, f0
/* 805D40D8  FC 03 00 28 */	fsub f0, f3, f0
/* 805D40DC  FC 02 00 32 */	fmul f0, f2, f0
/* 805D40E0  FC 44 00 32 */	fmul f2, f4, f0
/* 805D40E4  FC 00 00 32 */	fmul f0, f0, f0
/* 805D40E8  FC 01 00 32 */	fmul f0, f1, f0
/* 805D40EC  FC 03 00 28 */	fsub f0, f3, f0
/* 805D40F0  FC 02 00 32 */	fmul f0, f2, f0
/* 805D40F4  FC 44 00 32 */	fmul f2, f4, f0
/* 805D40F8  FC 00 00 32 */	fmul f0, f0, f0
/* 805D40FC  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4100  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4104  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4108  FC 21 00 32 */	fmul f1, f1, f0
/* 805D410C  FC 20 08 18 */	frsp f1, f1
/* 805D4110  48 00 00 88 */	b lbl_805D4198
lbl_805D4114:
/* 805D4114  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805D4118  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D411C  40 80 00 10 */	bge lbl_805D412C
/* 805D4120  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805D4124  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805D4128  48 00 00 70 */	b lbl_805D4198
lbl_805D412C:
/* 805D412C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805D4130  80 81 00 08 */	lwz r4, 8(r1)
/* 805D4134  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805D4138  3C 00 7F 80 */	lis r0, 0x7f80
/* 805D413C  7C 03 00 00 */	cmpw r3, r0
/* 805D4140  41 82 00 14 */	beq lbl_805D4154
/* 805D4144  40 80 00 40 */	bge lbl_805D4184
/* 805D4148  2C 03 00 00 */	cmpwi r3, 0
/* 805D414C  41 82 00 20 */	beq lbl_805D416C
/* 805D4150  48 00 00 34 */	b lbl_805D4184
lbl_805D4154:
/* 805D4154  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D4158  41 82 00 0C */	beq lbl_805D4164
/* 805D415C  38 00 00 01 */	li r0, 1
/* 805D4160  48 00 00 28 */	b lbl_805D4188
lbl_805D4164:
/* 805D4164  38 00 00 02 */	li r0, 2
/* 805D4168  48 00 00 20 */	b lbl_805D4188
lbl_805D416C:
/* 805D416C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D4170  41 82 00 0C */	beq lbl_805D417C
/* 805D4174  38 00 00 05 */	li r0, 5
/* 805D4178  48 00 00 10 */	b lbl_805D4188
lbl_805D417C:
/* 805D417C  38 00 00 03 */	li r0, 3
/* 805D4180  48 00 00 08 */	b lbl_805D4188
lbl_805D4184:
/* 805D4184  38 00 00 04 */	li r0, 4
lbl_805D4188:
/* 805D4188  2C 00 00 01 */	cmpwi r0, 1
/* 805D418C  40 82 00 0C */	bne lbl_805D4198
/* 805D4190  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805D4194  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805D4198:
/* 805D4198  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D419C  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D41A0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D41A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D41A8  7C 00 00 26 */	mfcr r0
/* 805D41AC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 805D41B0  7C 00 00 34 */	cntlzw r0, r0
/* 805D41B4  54 03 D9 7E */	srwi r3, r0, 5
/* 805D41B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805D41BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D41C0  7C 08 03 A6 */	mtlr r0
/* 805D41C4  38 21 00 30 */	addi r1, r1, 0x30
/* 805D41C8  4E 80 00 20 */	blr 
